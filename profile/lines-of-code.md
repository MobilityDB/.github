MobilityDB Ecosystem — Lines of Code
====================================

The size of each repository of the ecosystem, counted with [cloc](https://github.com/AlDanial/cloc)
1.90 on 2026-11-22, on a fresh clone of its default branch at the commit shown
(`cloc --exclude-dir=.git .`, submodules not fetched). *Blank*, *Comment* and *Code* are cloc's columns. The counts
include data files (CSV, JSON) and the code generated from the MEOS catalog.

| Repository | Commit | Files | Blank | Comment | Code |
|---|---|---:|---:|---:|---:|
| **Core** | | | | | |
| [MobilityDB](https://github.com/MobilityDB/MobilityDB) | `7e3bf5f` 2026-11-22 | 2,467 | 102,738 | 320,181 | 1,352,696 |
| **Language bindings** | | | | | |
| [PyMEOS](https://github.com/MobilityDB/PyMEOS) | `b6be02b` 2026-11-20 | 175 | 9,843 | 16,459 | 36,449 |
| [PyMEOS-CFFI](https://github.com/MobilityDB/PyMEOS-CFFI) | `1cab8bd` 2026-11-21 | 23 | 10,959 | 440 | 43,929 |
| [JMEOS](https://github.com/MobilityDB/JMEOS) | `da6409b` 2026-11-20 | 185 | 8,026 | 19,344 | 31,480 |
| [MEOS.NET](https://github.com/MobilityDB/MEOS.NET) | `66cfb9d` 2026-11-20 | 289 | 18,540 | 3,256 | 56,597 |
| [MEOS.js](https://github.com/MobilityDB/MEOS.js) | `31be640` 2026-11-20 | 111 | 16,433 | 9,159 | 80,530 |
| [GoMEOS](https://github.com/MobilityDB/GoMEOS) | `726dcc9` 2026-11-20 | 265 | 17,679 | 15,605 | 488,033 |
| [meos-rs](https://github.com/MobilityDB/meos-rs) | `2b49f27` 2026-10-31 | 65 | 1,322 | 3,937 | 29,915 |
| **Databases and stream processors** | | | | | |
| [MobilityDuck](https://github.com/MobilityDB/MobilityDuck) | `396579b` 2026-11-21 | 293 | 8,892 | 23,864 | 240,719 |
| [MobilitySpark](https://github.com/MobilityDB/MobilitySpark) | `82783da` 2026-11-19 | 18 | 251 | 610 | 2,596 |
| [MobilityFlink](https://github.com/MobilityDB/MobilityFlink) | `6c9f71c` 2026-11-20 | 220 | 3,097 | 5,965 | 172,781 |
| [MobilityKafka](https://github.com/MobilityDB/MobilityKafka) | `9b08ffb` 2026-11-11 | 60 | 637 | 2,073 | 4,169 |
| [MobilityNebula](https://github.com/MobilityDB/MobilityNebula)¹ | `b879c09` 2026-11-22 | 171 | 13,532 | 10,878 | 266,032 |
| **APIs and catalog** | | | | | |
| [MobilityAPI](https://github.com/MobilityDB/MobilityAPI) | `65cbbff` 2026-11-21 | 105 | 1,144 | 3,612 | 22,625 |
| [MobilityAPI-Python](https://github.com/MobilityDB/MobilityAPI-Python)² | `6439451` 2026-11-12 | 74 | 1,362 | 486,020 | 88,749 |
| [MEOS-API](https://github.com/MobilityDB/MEOS-API) | `8f8950b` 2026-11-21 | 137 | 4,106 | 9,201 | 21,508 |
| **Benchmark, index and workshop** | | | | | |
| [MobilityDB-BerlinMOD](https://github.com/MobilityDB/MobilityDB-BerlinMOD) | `2b841e1` 2026-11-08 | 67 | 1,810 | 3,065 | 23,754 |
| [mest](https://github.com/MobilityDB/mest) | `26503db` 2026-11-21 | 262 | 19,319 | 26,101 | 105,139 |
| [MobilityDB-workshop](https://github.com/MobilityDB/MobilityDB-workshop) | `329b2ab` 2026-06-25 | 16 | 274 | 50 | 3,823 |
| **Total** | | **5,003** | **239,964** | **959,820** | **3,071,524** |

¹ MobilityNebula is a fork of [NebulaStream](https://github.com/nebulastream/nebulastream); its
row counts the files it adds or modifies over its NebulaStream base `6c63b6acb1`
(`cloc --diff`). The full tree is 478,911 lines of code.

² cloc reads the stored outputs of the Jupyter notebooks as comment lines.
