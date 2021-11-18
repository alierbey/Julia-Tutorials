i = [.05 .10]
o = [.01 .99]
w = [.15 .20 .25 .30 .40 .45 .50 .55]
b = [.35 .60]
h = [.0 .0]


# hidden 1
calh1 = (w[1] *  i[1]) + (w[2] *  i[2]) + (b[1] *  1)
h[1] = 1 / (1 + ℯ ^ (- calh1))

# hidden 2
calh2 = (w[3] *  i[1]) + (w[4] *  i[2]) + (b[1] *  1)
h[2] = 1 / (1 + ℯ ^ (- calh2))

# output 1
o1 = (w[5] *  h[1]) + (w[6] *  h[2]) + (b[2] *  1)
out1 = 1 / (1 + ℯ ^ (- o1))

# output 2
o2 = (w[7] *  h[1]) + (w[8] *  h[2]) + (b[2] *  1)
out2 = 1 / (1 + ℯ ^ (- o2))

# total error
Eo1 = 1 // 2 * ((o[1] - out1) * (o[1] - out1))
Eo2 = 1 // 2 * ((o[2] - out2) * (o[2] - out2))

Etotal = Eo1 + Eo2


back1 =  2 * (1 // 2 * (o[1] - out1)) * (-1) + 0

back2 = out1 * (1-out1)

back3 = h[1]

backw1 = back1 * back2 * back3

newW5 = w[5] - 0.5 * backw1
