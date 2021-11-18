using DataFrames


## create dataframe

df = DataFrame(A = 1:5, B = ["A", "B", "C", "D", "E"])
print(df)

## create dataframe column

df = DataFrame()

#add columns
df.A = 1:5
df.B = ["A", "B", "C", "D", "E"]

df

df

## Create dataframe ROW

dfrow = DataFrame(A=Int[], B= String[])

# Add rows
push!(dfrow,(1,"A"))
push!(dfrow,(2,"B"))
push!(dfrow,(3,"C"))
push!(dfrow,(4,"D"))
push!(dfrow,(5,"E"))

## Convert DataFrame to CSV

using CSV
dfCsv = DataFrame(CSV.File("/Users/alierbey/Storage/Ders/julia/linreg.csv"))

first(dfCsv,5)

show(dfCsv,allrows = true)
show(dfCsv,allcols = true)

last(dfCsv, 1)

println(size(df))

println(summary(df))

names(dfCsv)


## variable type, mean, median, max...
describe(dfCsv)

dfCsv[1:5,:]
dfCsv[:,:2]
dfCsv[1:5,[:maas]]

dfCsv[1:5,:maas]


## average

global toplam
for i in 1:5
    print(i)
    toplam += i
end
toplam
print("ortalama : ", top/length(dfCsv[:,:maas]))
