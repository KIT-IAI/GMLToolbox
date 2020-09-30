# GML-ToolboxApp

## Description

The GML-Toolbox is a tool for handling spatially related data in the standardized formats XPlanGML 
(all versions), CityGML (all versions and Application Domain Extensions(ADEs)), 
BoreholeML (version 3.0), ALKIS/NAS (version 5.1 and 6.0), or an INSPIRE format. 
For all formats, reading and writing of file-based data, geometrical 
and syntactical checking (schema validation), evaluation and change of attribute values, 
reference system transformations, as well as visualization with external viewers are supported. 
For this, two-dimensional geodata are transformed into the Structured Vector Graphics (SVG) 
format and displayed with a suited HTML browser.
For three-dimensional geodata, the Keyhole Markup Language (KML) format is used as visualization format,
and GoogleEarth as external viewer. The software can only be used under MS-Windows.

The German national standard XPlanGML for urban and landscape planning information is supported 
by a number of specialized features: 
Transformation of Shapefile-based plans into the XPlanGML format, 
checking of he XPlanGML conformity rules, 
and migration of older standard-versions into newer ones.

## Links
GML-Toolbox release version

[GML-Toolbox user manual](https://github.com/KIT-IAI/GMLToolbox-src/blob/master/AppConfig/Benutzerhandbuch.pdf)

## License
The software is released under [Apache 2.0 license](LICENSE.md)

**Author**: Dr. Joachim Benner


# Building the Application

## Source Code Repositories
Due to *historical reasons*(TM) the software is splitted into three
submodule repositories and a wrapping superprojekt repository.

```ascii
  --+ GML-ToolboxApp
    |-- GML-Toolbox     (URL ../GMLToolbox-src.git)
    |-- gps             (URL ../GMLToolbox-gps.git)
    |-- Diagramm        (URL ../GMLToolbox-tsdiagram.git)
```

Also due to *historical reasons*(TM) the names of the repositories do not match the names of the submodules, and thus the submodule paths and the submodule URLs are different from the submodule names.

When you are cloning the superproject repository (this repo), the submodules are not cloned immediatly. You have do a `git submodule init` and `git submodule update` to have a complete clone of the project.

## Toolchain
Currently the toolbox is build using the ''Visual Studio 2017 (v141)'' platform toolset. The application is targeted to the ''Windows SDK 8.1'' and the ''.NET Framework v4.0''

The main entry point for loading the project into Visual Studio is the solution file `GML-ToolboxApp.sln` located in the superproject folder. In the solution there are different configurations. Please start with either `Debug x64` or `Release x64`. These are the configurations that should be prefered. Other configurations might not represent the latest development state and are subject to be removed in the future.

Select the project *GML-Toolbox* as the start project for the solution.

When the build is completed, the executable should be located somewhere in `x64\Debug\GML-Toolbox.exe` resp. `x64\Release\GML-Toolbox.exe`.
