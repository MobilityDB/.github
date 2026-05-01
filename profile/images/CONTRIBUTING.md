# Editing the ecosystem figure

The figure shown on the org page is at [`mobilitydb_ecosystem.svg`](mobilitydb_ecosystem.svg). The repository convention is **SVG as the canonical, deployable form**, edited via [draw.io / diagrams.net](https://www.diagrams.net/) (open-source, free, cross-platform).

## To edit

You have three editor options — pick whichever suits your workflow:

| Tool | Install needed? |
|---|---|
| [app.diagrams.net](https://app.diagrams.net/) | None — runs in any browser |
| [drawio-desktop](https://github.com/jgraph/drawio-desktop/releases) | Yes — native desktop app (Linux, macOS, Windows) |
| VS Code extension *"Draw.io Integration"* by Henning Dieterichs | Yes — edit `.drawio` / `.svg` directly in VS Code |

## Workflow

1. Open `mobilitydb_ecosystem.svg` in your chosen editor:
   - In `app.diagrams.net`: *File → Open from → Device* → select the SVG.
   - In drawio-desktop or VS Code: open the file directly.
2. draw.io imports the SVG and lets you edit any element visually.
3. When done, **export back to SVG** (*File → Export As → SVG…*) overwriting the same file. Make sure "Include a copy of my diagram" is checked so the source is round-trippable.
4. Commit the updated SVG in a single commit.

## Color palette

The figure uses these category colors. When adding a new node, match the convention:

| Layer | Hex | Used for |
|---|---|---|
| Core C library | `#1f2937` | MEOS |
| SQL layers | `#2563eb` | MobilityDB, MobilityDuck |
| HTTP / API | `#10b981` | MobilityAPI |
| Language bindings | `#a855f7` | PyMEOS, JMEOS, meos-rs, GoMEOS, MEOS.NET, MEOS.js |
| Tooling | `#a16207` | MEOS-API |
| Application platforms | `#eab308` | Spark, Flink, Kafka, Nebula, Pandas, OpenTripPlanner, MapMatching |
| Visualization | `#f97316` | Deck, OpenLayers, Leaflet, QGIS, GeoServer, move |
| Cloud | `#0891b2` | AWS, Azure, GCP, docker |

Datasets / benchmarks / education / research / archived projects are intentionally not on the figure to keep it readable; they're covered in the org page tables.

## When the figure changes

If you add, rename, or remove a repository elsewhere in the org, update this figure to reflect it. The SVG is referenced from the org profile README (`profile/README.md`).
