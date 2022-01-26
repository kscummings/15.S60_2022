Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("Gurobi")
Pkg.add("JuMP")

using CSV
using DataFrames
using Gurobi
using JuMP

include("~/john/project/helpers.jl")

raw_data = CSV.read("~/john/project/data.csv", DataFrame)
data = long_data_processing_step(raw_data)

results = []
for params in long_list_of_parameters
    model = build_large_and_hard_to_solve_model(data, params)
    set_optimizer(model, Gurobi.Optimizer)
    optimize!(model)
    result = process_results(model)
    append!(results, result)
end

final_results = vcat(results...)

CSV.write("~/john/project/results.csv", final_results)
