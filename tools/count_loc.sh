#!/usr/bin/env bash
#
# Count the lines of code of every repository of the MobilityDB ecosystem with
# cloc, on a fresh shallow clone of the default branch of each
# github.com/MobilityDB/<repo>, and write them to profile/lines-of-code.md.
# MobilityNebula is counted without the NebulaStream engine it carries: the
# lines its default branch adds or modifies over its merge base with
# nebulastream/nebulastream main (cloc --diff). The section "Notes" of the page
# is written by hand and kept from one run to the next.
#
# Usage: tools/count_loc.sh [output]; LOC_WORK names the directory of the clones
# (default: count-loc-<pid> under ${TMPDIR:-/tmp}).

set -euo pipefail
ROOT=$(cd "$(dirname "$0")/.." && pwd)
OUT=${1:-$ROOT/profile/lines-of-code.md}
WORK=${LOC_WORK:-${TMPDIR:-/tmp}/count-loc-$$}
mkdir -p "$WORK"
DATE=$(date +%F)
NES=https://github.com/nebulastream/nebulastream.git

REPO_GROUPS=(
  "Core|MobilityDB"
  "Language bindings|PyMEOS PyMEOS-CFFI JMEOS MEOS.NET MEOS.js GoMEOS meos-rs"
  "Databases and stream processors|MobilityDuck MobilitySpark MobilityFlink MobilityKafka MobilityNebula"
  "APIs and catalog|MobilityAPI MobilityAPI-Python MEOS-API"
  "Benchmark, index and workshop|MobilityDB-BerlinMOD mest MobilityDB-workshop"
)
# The groups whose total is that of the bindings
BINDING_GROUPS="Language bindings|Databases and stream processors|APIs and catalog"

# The hand-written notes of the previous page, kept as they are
NOTES=""
if [ -f "$OUT" ]; then
  NOTES=$(awk '/^## Notes$/{f=1;next} /^## /{f=0} f' "$OUT" | sed -e '/./,$!d')
fi

# cloc's report holds one row per language: "<language> <files> <blank> <comment> <code>";
# the main languages are the first and every other holding at least a quarter of its lines
LANGS='/^-+$/{k2++;next} k2==2 && !/^SUM/{l=$0; sub(/ +[0-9]+ +[0-9]+ +[0-9]+ +[0-9]+$/,"",l);
  if (top == "") top=$NF; if ($NF*4 >= top) {printf "%s%s", (k++ ? ", " : ""), l}}'

# The numbers of the tables of the page take thousands separators
GROUPING='if (/^\|/) { s{(\| \**)(\d{4,})(\**) (?=\|)}{ my ($p,$v,$s)=($1,$2,$3);
  1 while $v =~ s/^(\d+)(\d{3})/$1,$2/; "$p$v$s " }ge }'

declare -A GT GN
ROWS=""
NESBASE=""
FULL=0
TF=0; TB=0; TC=0
for g in "${REPO_GROUPS[@]}"; do
  name=${g%%|*}; GT[$name]=0; GN[$name]=0
  ROWS+="| **$name** | | | | | | | |"$'\n'
  for r in ${g#*|}; do
    [ -d "$WORK/$r" ] || git clone -q --depth 1 "https://github.com/MobilityDB/$r.git" "$WORK/$r"
    c=$(git -C "$WORK/$r" log -1 --abbrev=7 --format='`%h` %cs')
    link="[$r](https://github.com/MobilityDB/$r)"
    if [ "$r" = MobilityNebula ]; then
      # The lines MobilityNebula adds or modifies over its NebulaStream base
      git -C "$WORK/$r" fetch -q --unshallow 2> /dev/null || true
      git -C "$WORK/$r" fetch -q "$NES" main
      base=$(git -C "$WORK/$r" merge-base HEAD FETCH_HEAD)
      rm -rf "$WORK/nebulastream"
      git -C "$WORK/$r" worktree add -q --detach "$WORK/nebulastream" "$base"
      cloc --quiet --diff --exclude-dir=.git "$WORK/nebulastream" "$WORK/$r" > "$WORK/$r.diff.cloc"
      git -C "$WORK/$r" worktree remove --force "$WORK/nebulastream"
      read -r files blank comment code < <(awk '/^SUM:/{exit} /^ *(added|modified) /{f+=$2; b+=$3; m+=$4; c+=$5} END{print f, b, m, c}' "$WORK/$r.diff.cloc")
      nd=$(awk '/^SUM:/{exit} /^[A-Za-z]/{lang=$0} /^ *(added|modified) / && lang !~ /^(CSV|JSON)/{c+=$5} END{print c}' "$WORK/$r.diff.cloc")
      main="C++"
      link+="¹"
      NESBASE=$(git -C "$WORK/$r" log -1 --abbrev=10 --format='`%h` (%cs)' "$base")
      cloc --quiet --exclude-dir=.git "$WORK/$r" > "$WORK/$r.cloc"
      FULL=$(awk '/^SUM:/{print $5}' "$WORK/$r.cloc")
    else
      cloc --quiet --exclude-dir=.git "$WORK/$r" > "$WORK/$r.cloc"
      cloc --quiet --exclude-dir=.git --exclude-lang=CSV,JSON "$WORK/$r" > "$WORK/$r.nodata.cloc"
      read -r files blank comment code < <(awk '/^SUM:/{print $2, $3, $4, $5}' "$WORK/$r.cloc")
      nd=$(awk '/^SUM:/{print $5}' "$WORK/$r.nodata.cloc")
      main=$(awk "$LANGS" "$WORK/$r.nodata.cloc")
      if [ "$r" = MobilityAPI-Python ]; then link+="²"; fi
    fi
    ROWS+="| $link | $c | $files | $blank | $comment | $code | $nd | $main |"$'\n'
    GT[$name]=$((GT[$name]+code)); GN[$name]=$((GN[$name]+nd))
    TF=$((TF+files)); TB=$((TB+blank)); TC=$((TC+comment))
  done
done

{
echo "MobilityDB Ecosystem — Lines of Code"
echo "===================================="
echo
echo "The size of each repository of the ecosystem, counted with [cloc](https://github.com/AlDanial/cloc)"
echo "$(cloc --version) on $DATE by [\`tools/count_loc.sh\`](../tools/count_loc.sh), on a fresh clone of its"
echo "default branch at the commit shown (\`cloc --exclude-dir=.git .\`, submodules not fetched). *Blank*,"
echo "*Comment* and *Code* are cloc's columns, and include the code generated from the MEOS catalog."
echo "*Code w/o data* leaves out the CSV and JSON files (\`--exclude-lang=CSV,JSON\`), which are mostly"
echo "test fixtures, sample data and generated catalogs. *Main language* names the languages holding at"
echo "least a quarter of the code of the largest one."
echo
echo "| Repository | Commit | Files | Blank | Comment | Code | Code w/o data | Main language |"
echo "|---|---|---:|---:|---:|---:|---:|---|"
printf '%s' "$ROWS"
T=0; N=0
for g in "${REPO_GROUPS[@]}"; do name=${g%%|*}; T=$((T+GT[$name])); N=$((N+GN[$name])); done
echo "| **Total** | | **$TF** | **$TB** | **$TC** | **$T** | **$N** | |"
echo
echo "| Group | Code | Code w/o data |"
echo "|---|---:|---:|"
B=0; BN=0
for g in "${REPO_GROUPS[@]}"; do
  name=${g%%|*}; echo "| $name | ${GT[$name]} | ${GN[$name]} |"
  if [[ "$name" =~ ^($BINDING_GROUPS)$ ]]; then B=$((B+GT[$name])); BN=$((BN+GN[$name])); fi
done
echo "| **All bindings** (language bindings, databases and stream processors, APIs and catalog) | **$B** | **$BN** |"
echo "| **Total** | **$T** | **$N** |"
echo
echo "¹ MobilityNebula is a fork of [NebulaStream](https://github.com/nebulastream/nebulastream); its"
echo "row counts the files it adds or modifies over its NebulaStream base $NESBASE"
echo "(\`cloc --diff\`). The full tree is $(echo "| $FULL |" | perl -pe "$GROUPING" | tr -d '| ') lines of code."
echo
echo "² cloc reads the stored outputs of the Jupyter notebooks as comment lines."
echo
echo "## Notes"
echo
printf '%s\n' "$NOTES"
echo
echo "## The output of cloc"
for g in "${REPO_GROUPS[@]}"; do
  for r in ${g#*|}; do
    echo
    echo "<details><summary>$r</summary>"
    echo
    echo '```'
    if [ "$r" = MobilityNebula ]; then
      echo "cloc --diff over NebulaStream; counted: added + modified"
      sed -n '/^-----/,$p' "$WORK/$r.diff.cloc"
    else
      sed -n '/^-----/,$p' "$WORK/$r.cloc"
    fi
    echo '```'
    echo
    echo "</details>"
  done
done
} | perl -pe "$GROUPING" > "$OUT"
echo "$OUT"
