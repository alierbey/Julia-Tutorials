a = Int64[9,6,8,7,8,4,1,10,11]

top = 0
for i in a
    global top += i
end

mean = top / length(a)

sort(a)

median = a[div(length(a),2, RoundUp)]

b = Vector{Any}(undef, length(a));

for (k,v) in enumerate(a)

end
