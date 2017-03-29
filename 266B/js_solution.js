var time = readline().split(" ")[1];
var queue = readline();
while(time--){
    queue = queue.replace(/BG/g, 'GB');
}
print(queue);
