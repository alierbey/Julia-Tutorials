function f(x)
    x+5
end
print(f(4))


dizi = [4,5,6]

function ortalama(init, args...)
    s = 0
    for arg in args
        s += arg
    end
    return init + s/length(args)
end

a = ortalama(4,5,6,7)
b = ortalama(10, dizi...)

f(a,b) = 3a, b+4
k,m= f(4,6)
print(k , m)


x -> x^2 + 2x + 1

x = 3
