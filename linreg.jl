# X = [1,4,8,11,14,18,20,25]
# Y = [6,17,22,35,36,39,46,52]

using DataFrames
using CSV
using Plots
using Lathe
using GLM
using Statistics
#using StatsPlots
using MLBase

yeap = CSV.read("/Users/alierbey/Storage/Ders/julia/linreg.csv")
print(yeap)

scatter(yeap.deneyim, yeap.maas)

# y = b0 + b1*x
# maas = b0 + b1 * deneyim
