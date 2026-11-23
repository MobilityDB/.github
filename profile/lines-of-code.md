MobilityDB Ecosystem — Lines of Code
====================================

The size of each repository of the ecosystem, counted with [cloc](https://github.com/AlDanial/cloc)
1.90 on 2026-11-23 by [`tools/count_loc.sh`](../tools/count_loc.sh), on a fresh clone of its
default branch at the commit shown (`cloc --exclude-dir=.git .`, submodules not fetched). *Blank*,
*Comment* and *Code* are cloc's columns, and include the code generated from the MEOS catalog.
*Code w/o data* leaves out the CSV and JSON files (`--exclude-lang=CSV,JSON`), which are mostly
test fixtures, sample data and generated catalogs. *Main language* names the languages holding at
least a quarter of the code of the largest one.

| Repository | Commit | Files | Blank | Comment | Code | Code w/o data | Main language |
|---|---|---:|---:|---:|---:|---:|---|
| **Core** | | | | | | | |
| [MobilityDB](https://github.com/MobilityDB/MobilityDB) | `844cef8` 2026-11-23 | 2,469 | 102,747 | 320,264 | 1,352,875 | 958,404 | C, SQL |
| **Language bindings** | | | | | | | |
| [PyMEOS](https://github.com/MobilityDB/PyMEOS) | `b6be02b` 2026-11-20 | 175 | 9,843 | 16,459 | 36,449 | 36,449 | Python |
| [PyMEOS-CFFI](https://github.com/MobilityDB/PyMEOS-CFFI) | `c7a0ec9` 2026-11-23 | 23 | 11,016 | 443 | 44,188 | 44,188 | Python |
| [JMEOS](https://github.com/MobilityDB/JMEOS) | `da6409b` 2026-11-20 | 185 | 8,026 | 19,344 | 31,480 | 31,480 | Java |
| [MEOS.NET](https://github.com/MobilityDB/MEOS.NET) | `a2dadc3` 2026-11-23 | 289 | 18,669 | 3,257 | 57,375 | 57,375 | C# |
| [MEOS.js](https://github.com/MobilityDB/MEOS.js) | `a172c5f` 2026-11-23 | 111 | 16,490 | 9,183 | 80,811 | 75,234 | TypeScript, C |
| [GoMEOS](https://github.com/MobilityDB/GoMEOS) | `726dcc9` 2026-11-20 | 265 | 17,679 | 15,605 | 488,033 | 88,483 | Go |
| [meos-rs](https://github.com/MobilityDB/meos-rs) | `2b49f27` 2026-10-31 | 65 | 1,322 | 3,937 | 29,915 | 29,915 | Rust |
| **Databases and stream processors** | | | | | | | |
| [MobilityDuck](https://github.com/MobilityDB/MobilityDuck) | `396579b` 2026-11-21 | 293 | 8,892 | 23,864 | 240,719 | 129,668 | C++ |
| [MobilitySpark](https://github.com/MobilityDB/MobilitySpark) | `82783da` 2026-11-19 | 18 | 251 | 610 | 2,596 | 2,596 | Java |
| [MobilityFlink](https://github.com/MobilityDB/MobilityFlink) | `6c9f71c` 2026-11-20 | 220 | 3,097 | 5,965 | 172,781 | 15,906 | Java |
| [MobilityKafka](https://github.com/MobilityDB/MobilityKafka) | `9b08ffb` 2026-11-11 | 60 | 637 | 2,073 | 4,169 | 3,968 | Java |
| [MobilityNebula](https://github.com/MobilityDB/MobilityNebula)¹ | `c836014` 2026-11-23 | 166 | 13,379 | 10,559 | 265,232 | 264,250 | C++ |
| **APIs and catalog** | | | | | | | |
| [MobilityAPI](https://github.com/MobilityDB/MobilityAPI) | `65cbbff` 2026-11-21 | 105 | 1,144 | 3,612 | 22,625 | 13,635 | Go |
| [MobilityAPI-Python](https://github.com/MobilityDB/MobilityAPI-Python)² | `6439451` 2026-11-12 | 74 | 1,362 | 486,020 | 88,749 | 86,247 | Python |
| [MEOS-API](https://github.com/MobilityDB/MEOS-API) | `8f8950b` 2026-11-21 | 137 | 4,106 | 9,201 | 21,508 | 18,496 | Python |
| **Benchmark, index and workshop** | | | | | | | |
| [MobilityDB-BerlinMOD](https://github.com/MobilityDB/MobilityDB-BerlinMOD) | `2b841e1` 2026-11-08 | 67 | 1,810 | 3,065 | 23,754 | 23,754 | SVG, SQL |
| [mest](https://github.com/MobilityDB/mest) | `26503db` 2026-11-21 | 262 | 19,319 | 26,101 | 105,139 | 105,139 | C, SQL |
| [MobilityDB-workshop](https://github.com/MobilityDB/MobilityDB-workshop) | `329b2ab` 2026-06-25 | 16 | 274 | 50 | 3,823 | 3,823 | XML |
| **Total** | | **5,000** | **240,063** | **959,612** | **3,072,221** | **1,989,010** | |

| Group | Code | Code w/o data |
|---|---:|---:|
| Core | 1,352,875 | 958,404 |
| Language bindings | 768,251 | 363,124 |
| Databases and stream processors | 685,497 | 416,388 |
| APIs and catalog | 132,882 | 118,378 |
| Benchmark, index and workshop | 132,716 | 132,716 |
| **All bindings** (language bindings, databases and stream processors, APIs and catalog) | **1,586,630** | **897,890** |
| **Total** | **3,072,221** | **1,989,010** |

¹ MobilityNebula is a fork of [NebulaStream](https://github.com/nebulastream/nebulastream); its
row counts the files it adds or modifies over its NebulaStream base `6c63b6acb1` (2026-11-06)
(`cloc --diff`). The full tree is 474,885 lines of code.

² cloc reads the stored outputs of the Jupyter notebooks as comment lines.

## Notes

- **Data files:** MobilityDB has 391,846 lines of CSV, GoMEOS 399,490, MobilityFlink 156,875
  and MobilityDuck 110,322. These are test and sample data, which is why the *w/o data* column exists.
- **MobilityNebula** is counted on `main` without the NebulaStream engine it carries: the count is
  the lines `main` adds or modifies over its upstream base on NebulaStream `main`, from
  `cloc --diff <nebulastream> <MobilityNebula>`. By `git diff --numstat`, most of the added lines are
  the MEOS plugin (`nes-plugins/MEOS`, generated from the MEOS catalog), then its generators
  (`tools`), its system tests (`nes-systests`), and the NebulaStream core it extends (operators,
  SQL parser, query compiler, data types).
- **Generated code:** a binding's count holds its generated files with its written ones; how much of
  each binding is generated is measured by the generation plan of MobilityDB
  ([#3928](https://github.com/MobilityDB/MobilityDB/pull/3928)), table *How much of each binding is
  generated*.
- **MobilityDB-workshop** is mostly prose: its XML lines are the seven DocBook chapters of the
  workshop (AIS, AIS dashboard, flight data dashboard, GPX, GTFS, location history, and the book
  file), with their SQL listings inline; its other tracked files are PNG figures, zipped datasets
  and a LaTeX style file, which cloc does not count.

## The output of cloc

<details><summary>MobilityDB</summary>

```
--------------------------------------------------------------------------------
Language                      files          blank        comment           code
--------------------------------------------------------------------------------
C                               888          56247         219097         439660
CSV                              20              1              0         391846
SQL                             718          26686          44154         289258
XML                              62           3084            408          92602
C/C++ Header                    403           9495          37709          83062
YAML                             62            589           1460          15941
Python                           53           2587          10327          12253
Markdown                         53           2437              0          10003
SVG                              18             52             14           5249
CMake                           106            622           3858           4002
JSON                             35              0              0           2625
C++                               4            214            302           1698
Perl                             14            259            379           1694
Bourne Shell                     15            126            880           1043
yacc                              1             67             33            460
Pascal                            1              0           1329            450
CSS                               1             80             45            319
m4                                2             76             79            271
make                              5             61             32            149
lex                               1             20             32            101
Bourne Again Shell                1             12             62             75
XSLT                              3             14             34             58
Dockerfile                        1             11             11             40
TeX                               2              7             19             16
--------------------------------------------------------------------------------
SUM:                           2469         102747         320264        1352875
--------------------------------------------------------------------------------
```

</details>

<details><summary>PyMEOS</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Python                         146           9528          16156          35666
YAML                             4             57             26            319
reStructuredText                17            187            263            206
Markdown                         4             46              0            136
TOML                             2             13              6             87
DOS Batch                        1              8              1             26
make                             1              4              7              9
-------------------------------------------------------------------------------
SUM:                           175           9843          16459          36449
-------------------------------------------------------------------------------
```

</details>

<details><summary>PyMEOS-CFFI</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Python                          13          10893            364          43501
YAML                             4             90             58            544
TOML                             2              8              6             64
Markdown                         3             22              0             62
Bourne Shell                     1              3             15             17
-------------------------------------------------------------------------------
SUM:                            23          11016            443          44188
-------------------------------------------------------------------------------
```

</details>

<details><summary>JMEOS</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Java                           168           7058          17581          26460
Python                           2            445           1596           2481
Markdown                         5            420              0           1837
Maven                            2             38             21            367
YAML                             4             48             71            207
XML                              2              2              0             71
Dockerfile                       1             11             24             34
Bourne Shell                     1              4             51             23
-------------------------------------------------------------------------------
SUM:                           185           8026          19344          31480
-------------------------------------------------------------------------------
```

</details>

<details><summary>MEOS.NET</summary>

```
------------------------------------------------------------------------------------
Language                          files          blank        comment           code
------------------------------------------------------------------------------------
C#                                  276          18161           1029          51075
Markdown                              3             97              0           4717
Python                                3            378           2189           1419
MSBuild script                        4             16              5             59
YAML                                  1             13             18             47
Visual Studio Solution                1              1              1             41
Bourne Shell                          1              3             15             17
------------------------------------------------------------------------------------
SUM:                                289          18669           3257          57375
------------------------------------------------------------------------------------
```

</details>

<details><summary>MEOS.js</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
TypeScript                      85          11515           8919          56125
C                                1           4271             60          17158
JSON                             6              0              0           5577
Markdown                        14            628              0           1556
Dockerfile                       1             39            127            234
YAML                             2             27             41             98
JavaScript                       1              7             21             46
Bourne Shell                     1              3             15             17
-------------------------------------------------------------------------------
SUM:                           111          16490           9183          80811
-------------------------------------------------------------------------------
```

</details>

<details><summary>GoMEOS</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
CSV                              9              0              0         399490
Go                             241          17284          14185          86870
Python                           3            304           1353           1175
Markdown                         3             55              0            252
YAML                             2             22             50             93
JSON                             1              0              0             60
C/C++ Header                     1              4              1             28
C                                1              7              1             25
XML                              3              0              0             23
Bourne Shell                     1              3             15             17
-------------------------------------------------------------------------------
SUM:                           265          17679          15605         488033
-------------------------------------------------------------------------------
```

</details>

<details><summary>meos-rs</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Rust                            55           1212           3937          29586
Markdown                         4             77              0            170
TOML                             4             13              0             89
YAML                             1             20              0             67
C/C++ Header                     1              0              0              3
-------------------------------------------------------------------------------
SUM:                            65           1322           3937          29915
-------------------------------------------------------------------------------
```

</details>

<details><summary>MobilityDuck</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
C++                             78           6604           4589         116675
CSV                             24              0              0         110322
Python                          11            622           6495           5961
Markdown                        18            651              0           2419
C/C++ Header                    66            671           2558           2174
SQL                             56            215           2186            914
JSON                            23              1              0            729
Jupyter Notebook                 2              0           7321            658
CMake                            6             54            332            328
YAML                             3             29            182            209
SVG                              1              1              1            156
Bourne Shell                     4             37            166            137
make                             1              7             34             37
-------------------------------------------------------------------------------
SUM:                           293           8892          23864         240719
-------------------------------------------------------------------------------
```

</details>

<details><summary>MobilitySpark</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Java                            11            153            502           2004
Markdown                         2             72              0            192
SVG                              1              1              1            156
Maven                            1              6             18            138
YAML                             1             15             45             65
XML                              1              0              8             24
Bourne Shell                     1              4             36             17
-------------------------------------------------------------------------------
SUM:                            18            251            610           2596
-------------------------------------------------------------------------------
```

</details>

<details><summary>MobilityFlink</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
CSV                              2              0              0         156875
Java                           182           2608           5729          13261
Markdown                         8            334              0           1180
Maven                            3             27             44            485
Bourne Shell                    12             52             52            377
YAML                             4             39             73            313
SVG                              1              1              1            156
Dockerfile                       4             18             25             59
Python                           2             17             33             45
XML                              1              0              8             24
SQL                              1              1              0              6
-------------------------------------------------------------------------------
SUM:                           220           3097           5965         172781
-------------------------------------------------------------------------------
```

</details>

<details><summary>MobilityKafka</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Java                            49            524           2014           3178
Markdown                         4             77              0            285
Maven                            3             18             13            276
CSV                              1              0              0            201
SVG                              1              1              1            156
YAML                             1             14             31             56
Bourne Shell                     1              3             14             17
-------------------------------------------------------------------------------
SUM:                            60            637           2073           4169
-------------------------------------------------------------------------------
```

</details>

<details><summary>MobilityNebula</summary>

```
cloc --diff over NebulaStream; counted: added + modified
--------------------------------------------------------------------------------
Language                      files          blank        comment           code
--------------------------------------------------------------------------------
C++
 same                           536          12672          10118          80114
 modified                        21              0              0            100
 added                           65          10929           1206         254245
 removed                          0              0              0             34
CSV
 same                            45              1              0          56720
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
C/C++ Header
 same                           560           9202          11015          33511
 modified                        15              0              1             11
 added                           24            376            595           1687
 removed                          0              0              0              1
Markdown
 same                            57           1931              0           8317
 modified                         3              0              0              1
 added                            3             49              0            286
 removed                          3             43              0            122
Python
 same                             8            238            215            922
 modified                         0              0              0              0
 added                            7           1959           8582           7387
 removed                          1             50             45            132
CMake
 same                           230           1903           3443           8221
 modified                        10              0              0              0
 added                            5             30             68            136
 removed                          0              0              0              0
YAML
 same                            64            316            695           3223
 modified                         2              0              2             50
 added                            2             29             47            231
 removed                         37            258            173           2997
JSON
 same                            17              0              0           3957
 modified                         0              0              0              0
 added                            3              0              0            982
 removed                          0              0              0              0
diff
 same                            38            286           1325           4861
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
Rust
 same                            16            352            979           2959
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
Nix
 same                            19            181             13           2886
 modified                         1              0              0              7
 added                            0              1              9             13
 removed                          0              0              0              0
Bourne Shell
 same                            19            353            500           2033
 modified                         2              0              1              0
 added                            1              2             39             66
 removed                          0              0              1              0
ANTLR Grammar
 same                             0              0             26            517
 modified                         1              0              0              5
 added                            0              3              4             13
 removed                          0              0              0              0
Dockerfile
 same                             7             48             84            388
 modified                         0              0              0              0
 added                            1              1              5             12
 removed                          0              0              0              0
Bourne Again Shell
 same                             1             56             82            324
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
Sass
 same                             1             28              0            162
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
Protocol Buffers
 same                             6             42             70            133
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
SQL
 same                            12             10              5            120
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
TOML
 same                             7             35             70            120
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
Pascal
 same                             1             13             11             96
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
HTML
 same                            10              0              0             69
 modified                         0              0              0              0
 added                            0              0              0              0
 removed                          0              0              0              0
--------------------------------------------------------------------------------
SUM:
 same                          1654          27667          28651         209653
 modified                        55              0              4            174
 added                          111          13379          10555         265058
 removed                         41            351            219           3286
--------------------------------------------------------------------------------
```

</details>

<details><summary>MobilityAPI</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Go                              59            829           2257          11510
JSON                            19              7              0           8990
Markdown                        12            182              0            659
TypeScript                       3             43             72            469
Jupyter Notebook                 2              0           1052            272
YAML                             2             32            110            257
SQL                              2             25             83            155
Java                             2             18             20            138
HTML                             2              0              0            100
Python                           1              6             11             51
Bourne Shell                     1              2              7             24
-------------------------------------------------------------------------------
SUM:                           105           1144           3612          22625
-------------------------------------------------------------------------------
```

</details>

<details><summary>MobilityAPI-Python</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Python                          57           1195          29862          84795
JSON                             3              0              0           2502
Jupyter Notebook                 3              0         456076            690
Markdown                         7            121              0            216
Bourne Shell                     1             18             12            175
SVG                              1              1              1            156
SQL                              1             20             51            133
YAML                             1              7             18             82
-------------------------------------------------------------------------------
SUM:                            74           1362         486020          88749
-------------------------------------------------------------------------------
```

</details>

<details><summary>MEOS-API</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Python                         102           3636           8792          15843
JSON                            10             10              0           3012
Markdown                        11            342              0           1709
YAML                             6             71            167            585
Bourne Shell                     8             47            242            359
-------------------------------------------------------------------------------
SUM:                           137           4106           9201          21508
-------------------------------------------------------------------------------
```

</details>

<details><summary>MobilityDB-BerlinMOD</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
SVG                              7              1            156          12865
SQL                             24            993           2558           5307
XML                              5            196              0           2917
Markdown                        13            325              0           1075
Bourne Shell                    10             99            212            713
Python                           3             90             83            415
CSS                              1             79             34            316
YAML                             2             20             11            111
Dockerfile                       1              5              5             29
TeX                              1              2              6              6
-------------------------------------------------------------------------------
SUM:                            67           1810           3065          23754
-------------------------------------------------------------------------------
```

</details>

<details><summary>mest</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
C                              156          14411          18137          73051
SQL                             39           3353           3566          22387
C/C++ Header                    46           1275           4233           8337
yacc                             1             67             29            447
CMake                            6             70            100            407
Markdown                         7             83              0            220
YAML                             3             15             12            105
lex                              1             24             22            105
Pascal                           1             11              0             58
make                             2             10              2             22
-------------------------------------------------------------------------------
SUM:                           262          19319          26101         105139
-------------------------------------------------------------------------------
```

</details>

<details><summary>MobilityDB-workshop</summary>

```
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
XML                              7            115              0           3243
CSS                              1             79             34            316
YAML                             2             18             10            118
Markdown                         3             48              0            109
Dockerfile                       1              5              0             18
Bourne Shell                     1              7              0             13
TeX                              1              2              6              6
-------------------------------------------------------------------------------
SUM:                            16            274             50           3823
-------------------------------------------------------------------------------
```

</details>
