
# Array

a = Int64[1,3,5,7,9,11]
eltype(a)
ndims(a)
size(a)
length(a)
typeof(a)

#Index
a[1]
a[end]
a[1:3]

a[1] = 34
a

push!(a,13)
pushfirst!(a, -1)

pop!(a)
a
popfirst!(a)

append!(a,18)



range(1,stop = 10)
1:10




a=Array{Any,1}(5)




b = size(a)

print(b)


a = [[1,2,3] [4,5,6]]
print(a)

a = [1 4; 2 5; 3 6]
print(a)

s = Dict("ali"=>76, "veli"=>12, "ayse"=>36)
print(s)

for (k,v) in s
    println("$k is $v")
end

a = Set([1,2,2,3,4])
b = Set([1,5,2,6,4])
print(a)
print(b)
print(intersect(a,b))
print(union(a,b))
print(setdiff(a,b))

# 0 ile 1 arasında randım bir sayı
rand()

# 10 ile 20 arasında random bir sayı atar
rand(5:10)

# ondalik kismin kac karakterden olusacagini formatlamak
rand(10:0.02:20)

# matrix random
rand(2,3)



#Julia arrayleri index 1 den baslar
a = [12,23,45]
print(a[1])
print(typeof(a))


# arraylerin butun elemanalirini carpabiliriz
yeniDizi = [1,2,3]
yeniDizi * 3


# Dizileri 3 farkli sekilde tanimlayabiliriz

#1
dizi1 = [1,2,3]
println(typeof(dizi1))
#2
dizi2 = Array([1,2,3])

#3
dizi3 = Array{Int64}([1,2,3])

a = [1,2,3]

b = [1;2;3]

dizi1 = [1,2,"ali"]

matris1 = [1 2 ; 3 4]

A = [[1 2 3 ; 4 5 6],[1 2 3 ; 4 5 6]]
