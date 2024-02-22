
function hy(){
    return "heyya srashti..."
}

console.log(hy)    // function definition

console.log(hy())      //function output


function hi(arg1, arg2, arg3){
    return arg1 + arg2 + arg3;
}

console.log('ram', 'sita', 'kavi')

console.log('simmy', 1234, true)



function fun1(){
    return fun2
}

function fun2(){
    return "Hello"
}
console.log(fun1)
console.log(fun1())
console.log(fun1()())



var hyy = () => {
    return "heyya srashti..."
}
console.log(hyy) 
console.log(hyy()) 


var fun = () => {
    return() => {
        return "heyya srashti..."
    }
}
console.log(fun) 
console.log(fun()) 
console.log(fun()()) 