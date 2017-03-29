var elements = readline();
var arr = readline().split(" ").map(Number);

var sum = 0, answer = 0, count = 0, temp_sum = 0;
for(var i = 0; i < elements; ++i) sum = arr[i];

if(sum % 3 == 0) {
  sum = sum / 3;
  for(var i = 0; i < elements - 1; ++i) {
    temp_sum = temp_sum + arr[i];
    if(temp_sum == 2 * sum) answer = answer + count;
    if(temp_sum == sum) count = count + 1;
  }
}

print(answer);
