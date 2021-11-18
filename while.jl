i = 0

while i < 5
    println(i)
    global i += 1
end


# break ifadesi
a = 0
while true
    println(a)
    if a == 4
        break
    end
    global a += 1
end

# continue ifadesi
b = 0
while b<5
    global b += 1
    if b == 4
        continue
    end
    println(b)
end
