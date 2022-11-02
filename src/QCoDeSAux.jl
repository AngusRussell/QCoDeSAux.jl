module QCoDeSAux

using PyPlot, LaTeXStrings
using CSV, DataFrames, Glob
using REPL.TerminalMenus: MultiSelectMenu, RadioMenu, request
pygui(true)

include("load_csv.jl")
include("plotting_presets.jl")

export fig, load_csv



end
