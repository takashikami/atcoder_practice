# -*- coding: utf-8 -*-
n, q = map(int, input().split())
data = list(map(lambda x: chr(x + ord('A')), list(range(0, n))))

h = int(n * 10 / 13)
while True:
    swaps = 0
    for i in range(n - h):
        print("? {} {}\n".format(data[i], data[i + h]), flush=True)
        ans = input()
        if ans == '>':
            data[i], data[i + h] = data[i + h], data[i]
            swaps += 1
    if h == 1:
        if swaps == 0: break
    else:
        h = int(h * 10 / 13)

print("! {}\n".format("".join(data)), flush=True)
