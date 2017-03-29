elements = int(input())
arr = list(map(int,input().split()))
arr_sum, answer, count, temp_sum = sum(arr), 0, 0, 0

if arr_sum % 3 == 0:
    arr_sum = arr_sum / 3
    for i in range(elements - 1):
        temp_sum = temp_sum + arr[i]
        if temp_sum == 2 * arr_sum: answer = answer + count
        if temp_sum == arr_sum: count = count + 1
        
print(answer)
