childrens, time = map(int, input().split())
queue = input()
for i in range(time):
	queue = queue.replace('BG', 'GB')
print(queue)
