var n = readline()
var prices = readline().split(" ").map(Number).sort(function(x,y){ return x-y; })
var days = readline()

for(var i = 0; i < days; i++){
    var money = readline()
    var l = 0, r = n-1;

    while(l != r){
        var m = Math.floor((l+r)/2);

        if(prices[m] < money){
            l = m + 1;
        }else if(prices[m] > money){
            r = m;
        }else{
            l = m + 1;
        }
    }

    if(prices[l] <= money){
        print(l + 1);
    }else{
        print(l);
    }
}
