for i = 1:5
    println(i)
end

for i = 1:1:10
    println(i)
end

for i = 1:2:10
    println(i)
end

for i in 1:5
    println(i)
end

for i in 1:1:10
    println(i)
end

for i in 1:2:10
    println(i)
end






@time begin
    y = [j*cos(j*j) for j in x]
end




for i= 0:2,j=0:2
    println(i,j)
end



for i= 0:2,j=5:7
    println(i,j)
end


list = 1:10
print(list)



for i in list
    println("9 * $i = " , 9i)
end

for i in 1:10
    println("2 * $i = " , 2i)
end

list1 = 1:10
list2 = 21:30

out = ["$i -  $j" for i in list1 for j in list2]
out
