a = [1 2 12 4 5 6]

max = a[1]

for i in a
    global max
    if max < i
        max = i
    end
end

print(max)
