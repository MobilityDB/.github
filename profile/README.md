
MobilityDB Projects
===================

<img src="https://github.com/MobilityDB/MobilityDB/blob/master/doc/images/mobilitydb-logo.svg" width="200" alt="MobilityDB Logo" />
 
[MobilityDB](https://github.com/MobilityDB/MobilityDB) is an open source geospatial trajectory data management & analysis platform. This document lists the projects around MobilityDB.

MobilityDB is developed by the Computer & Decision Engineering Department of the [Université libre de Bruxelles](https://www.ulb.be/) (ULB) under the direction of [Prof. Esteban Zimányi](http://cs.ulb.ac.be/members/esteban/). ULB is an OGC Associate Member and member of the OGC Moving Feature Standard Working Group ([MF-SWG](https://www.ogc.org/projects/groups/movfeatswg)).

<img src="https://github.com/MobilityDB/MobilityDB/blob/master/doc/images/OGC_Associate_Member_3DR.png" width="100" alt="OGC Associate Member Logo" />

You can find detailed explanations about MobilityDB and its use in various application scenarios in our texbook

  * Mahmoud Sakr, Alejandro Vaisman, Esteban Zimányi<br>
    *Mobility Data Science: From Data to Insights*<br>
    Springer 2025

https://link.springer.com/book/10.1007/978-3-031-82636-8

<img src="https://github.com/MobilityDB/MobilityDataScienceBook/blob/main/978-3-031-82636-8.webp" width="150" alt="Mobility Data Science Book" />

A [companion website](https://github.com/MobilityDB/MobilityDataScienceBook) contains the datasets used in the book alongside with the scripts allowing you to input these datasets in PostgreSQL and reproduce the use cases, visualizations, and exercises.

MobilityDB
----------

*   [MobilityDB-workshop](https://github.com/MobilityDB/MobilityDB-workshop): Introduction to MobilityDB illustrated in various usage scenarios
*   [MobilityDB-BerlinMOD](https://github.com/MobilityDB/MobilityDB-BerlinMOD): Data generator and benchmark tool based on the [BerlinMOD](https://secondo-database.github.io/BerlinMOD/BerlinMOD.html) benchmark. The data generator takes input data from [Open Street Map](https://www.openstreetmap.org/) and uses [pgRouting](https://pgrouting.org/) to generate routes between pairs of source and target locations.
*   [MobilityDB-docker](https://github.com/MobilityDB/MobilityDB-docker): Docker images for MobilityDB

Programming Languages
----------------------

*   [MEOS](https://libmeos.org): Mobility Engine Open Source C library
*   [PyMEOS](https://github.com/MobilityDB/PyMEOS): Python driver for MEOS
*   [JMEOS](https://github.com/MobilityDB/JMEOS): Java driver for MEOS
*   [GoMEOS](https://github.com/MobilityDB/GoMEOS): Go driver for MEOS
*   [meos-rs](https://github.com/MobilityDB/meos-rs): Rust driver for MEOS
*   [MEOS.NET](https://github.com/MobilityDB/MEOS.NET): .NET driver for MEOS

Cloud
-----

*   [MobilityDB-AWS](https://github.com/MobilityDB/MobilityDB-AWS): MobilityDB on Amazon Web Services
*   [MobilityDB-Azure](https://github.com/MobilityDB/MobilityDB-Azure): MobilityDB on Azure
*   [MobilityDB-GCP](https://github.com/MobilityDB/MobilityDB-GCP): MobilityDB on Google Cloud Platform

Visualization
-------------

*   [MobilityDB-Deck](https://github.com/MobilityDB/MobilityDB-Deck): Integration of MobilityDB with [deck.gl](https://deck.gl/)
*   [MobilityDB-Leaflet](https://github.com/MobilityDB/MobilityDB-Leaflet): Integration of MobilityDB with [Leaflet](https://leafletjs.com/)
*   [MobilityDB-OpenLayers](https://github.com/MobilityDB/MobilityDB-OpenLayers): Integration of MobilityDB with [OpenLayers](https://openlayers.org/)
*   [MOVE plugin](https://github.com/MobilityDB/move) to display the result of MobilityDB queries in [QGIS](https://qgis.org/)

Indexing
--------

*   [MEST](https://github.com/MobilityDB/mest): Multi-Entry Search Trees (MEST)

Public Transport
----------------

*   [MobilityDB-PublicTransport](https://github.com/MobilityDB/MobilityDB-PublicTransport): Integration of MobilityDB with public transport standards such as [GTFS](https://gtfs.org/) and [Netex](https://netex-cen.eu/)
*   [MobilityDB-OpenTripPlanner](https://github.com/MobilityDB/MobilityDB-OpenTripPlanner): Integration of MobilityDB with the [OpenTripPlanner](https://www.opentripplanner.org/) tool, an open source multimodal trip planner

Forthcoming
-----------

*   [MobilityNebula](https://github.com/MobilityDB/MobilityNebula): Geospatial trajectory data streaming platform built on [NebulaStream](https://nebula.stream/)
*   [MobilityFlink](https://github.com/MobilityDB/MobilityFlink): Geospatial trajectory data streaming platform built on [Flink](https://flink.apache.org/)
*   [MobilityKafka](https://github.com/MobilityDB/MobilityKafka): Geospatial trajectory data management platform built on [Kafka](https://kafka.apache.org/)
*   [MobilitySpark](https://github.com/MobilityDB/MobilitySpark): Geospatial trajectory data streaming platform built on [Spark](https://spark.apache.org/)
*   [MobilityPandas](https://github.com/MobilityDB/MobilityPandas): [MovingPandas](https://movingpandas.org/) version using  [PyMEOS](https://github.com/MobilityDB/PyMEOS) as backend
*   [MobilityDuck](https://github.com/MobilityDB/MobilityDuck): Geospatial trajectory data management platform built on [DuckDB](https://duckdb.org/)
*   [MobilityAPI](https://github.com/MobilityDB/MobilityAPI): Implementation of the [OGC](https://www.ogc.org/) [Moving-Features API](https://ogcapi.ogc.org/movingfeatures/overview.html) based on [MobilityDB](https://github.com/MobilityDB/MobilityDB)
*   [MobilityDB-MapMatching](https://github.com/MobilityDB/MobilityDB-MapMatching): Map Matching As Service for [MobilityDB](https://github.com/MobilityDB/MobilityDB)
*   [MEOS.js](https://github.com/MobilityDB/MEOS.js): Javascript driver for [MEOS](https://libmeos.org/)


Archived 
--------

*   [MobilityDB-python](https://github.com/MobilityDB/MobilityDB-python) Initial Python driver for MobilityDB
*   [MobilityDB-QGIS](https://github.com/MobilityDB/MobilityDB-QGIS): Integration of MobilityDB with [QGIS](https://qgis.org/)
*   [MobilityDB-JDBC](https://github.com/MobilityDB/MobilityDB-JDBC): JDBC driver for MobilityDB
