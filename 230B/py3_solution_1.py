import math

PRIME_LIMIT = int(math.sqrt(math.pow(10,12))) + 1
prime_numbers = [True] * PRIME_LIMIT

def sieve():
    i = 2
    while i * i < PRIME_LIMIT:
        if prime_numbers[i] != False:
            j = 2 * i
            while j < PRIME_LIMIT:
                prime_numbers[j] = False
                j = j + i
        i = i + 1

n=int(input())
values=list(map(int, input().split()))
sieve()
for value in values:
    svalue = int(math.sqrt(value))
    if (svalue * svalue == value) and (prime_numbers[svalue] == True) and (value != 1):
        print("YES")
    else:
        print("NO")
