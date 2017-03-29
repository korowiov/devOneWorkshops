var values = ""

values = readline();
values = readline().split(" ");

function isPrime(v, sv) {
  var prime = true
  for(var j = 2; j < sv; ++j) {
    if(v % j == 0) {
      prime = false;
      break;
    }
  }
  return prime;
}

for (var i = 0; i < values.length; ++i) {
  var svalue = Math.sqrt(parseInt(values[i]));
  if(svalue * svalue == values[i] && isPrime(values[i], svalue) == true && values[i] != 1) {
    print("YES");
  } else {
    print("NO");
  }
}
