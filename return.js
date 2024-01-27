let num ;

let result = checkNumber(num);
console.log(result);

function checkNumber(num){
    if(num == undefined){
        return "undefined";
    }else if(num == ''){
        return 'null';
    }else if(isNaN(num)){
        return 'not valid';
    }else{
        return 'valid';
    }
}