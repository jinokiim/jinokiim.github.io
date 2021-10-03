N = int(input())
line = 1

while N > line:
    N = N - line
    line+=1

a = N
b = line - N + 1
if line%2==0:
    pass
else:
    a, b = b, a

print(a,'/',b, sep='')
