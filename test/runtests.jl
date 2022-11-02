using QCoDeSAux
using CSV, DataFrames
using Test

const CR = "\r"
const LF = "\n"
const UP = "\eOA"
const DOWN = "\eOB"
const ALL = "a"
const NONE = "n"
const DONE = "d"
const SIGINT = "\x03"

@testset "QCoDeSAux.jl" begin
    @testset "Simulated inputs" begin
        print(
            stdin.buffer, 
            CR,
        )
        @test load_csv("C:/users/angus/OneDrive - University of Strathclyde/Documents/University work/5th Year/Project/Angus_VNA/2022-11-01/") == QCoDeSAux.transmute2D(CSV.read("C:/users/angus/OneDrive - University of Strathclyde/Documents/University work/5th Year/Project/Angus_VNA/2022-11-01/PCB_ground_runID=3.csv", header=1, Tables.matrix))
    end

end
