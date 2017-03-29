const PRIME_LIMIT = Math.sqrt(Math.pow(10,12)) + 1;
var primeNumbers = [PRIME_LIMIT]
var values = ""

function sieve() {
  for(var i = 0; i < PRIME_LIMIT; ++i) primeNumbers[i] = true;
  primeNumbers[1] = false
  var i = 2;
  while(i * i < PRIME_LIMIT) {
    if(primeNumbers[i] != false) {
      var j = 2 * i;
      while(j < PRIME_LIMIT) {
        primeNumbers[j] = false
        j = j + i;
      }
    }
    i = i + 1;
  }
}


sieve();

values = readline();
values = readline().split(" ");

for (var i = 0; i < values.length; ++i) {
  var svalue = Math.sqrt(parseInt(values[i]));
  if(svalue * svalue == values[i] && primeNumbers[svalue] == true && values[i] != 1) {
    print("YES");
  } else {
    print("NO");
  }
}
