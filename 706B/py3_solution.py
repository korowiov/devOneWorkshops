from bisect import *
n = int(input())
prices = sorted(list(map(int, input().split())))
days = int(input())
for i in range(days):
    print(str(bisect_right(prices, int(input()))))
