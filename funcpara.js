

function sum(...num){
    var res = 0;
    for(var value of num){
        res += value;
    } 
    console.log(res);
}

sum(10, 20);
sum(100, 200, 300, 500);