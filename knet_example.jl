using Knet
include(Knet.dir("data","housing.jl"))
x,y = housing()  # x is (13,506); y is (1,506)

struct Linear; w; b; end

(f::Linear)(x) = f.w * x .+ f.b           # prediction function if one argument
(f::Linear)(x,y) = mean(abs2, f(x) - y)   # loss function if two arguments

model = Linear(zeros(1,13), zeros(1))

pred = model(x)

y

loss = model(x,y)

r = (model(x) - y) / length(y)

∇w = 2r * x'

∇b = sum(2r)

model = Linear(Param(zeros(1,13)), Param(zeros(1)))

loss = @diff model(x,y)

grad(loss, model.w)

grad(loss, model.b)

function sgdupdate(model, x, y)
    loss = @diff model(x, y)
    for p in params(model)
        p .-= 0.1 * grad(loss, p)
    end
    return value(loss)
end

using Plots

plot([sgdupdate(model,x,y) for i in 1:20])
