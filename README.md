# QCoDeSAux

[![Build Status](https://travis-ci.com/angus/QCoDeSAux.jl.svg?branch=main)](https://travis-ci.com/angus/QCoDeSAux.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/angus/QCoDeSAux.jl?svg=true)](https://ci.appveyor.com/project/angus/QCoDeSAux-jl)
[![Coverage](https://codecov.io/gh/angus/QCoDeSAux.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/angus/QCoDeSAux.jl)
[![Coverage](https://coveralls.io/repos/github/angus/QCoDeSAux.jl/badge.svg?branch=main)](https://coveralls.io/github/angus/QCoDeSAux.jl?branch=main)
[![PkgEval](https://JuliaCI.github.io/NanosoldierReports/pkgeval_badges/Q/QCoDeSAux.svg)](https://JuliaCI.github.io/NanosoldierReports/pkgeval_badges/report.html)

A package to assist in loading data aquired from [QCoDeS](https://qcodes.github.io/Qcodes/index.html) into Julia.

When exporting data to csv, QCoDeS does so into a standard 3 column csv file. This package allows yout to navigate your directory, select a csv exported from QCoDeS, and then load it into Julia and transmuting it into an x and a y vector and 2D z array.
