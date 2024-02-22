// function fun(arg1 = 'simmy', arg2 = 23 , arg3 = true){
//     console.log( arg1 , arg2 , arg3) 
// }

// fun()
// fun('kinnu')
// fun(undefined, 21)    // if undefined then return true value
// fun('kinnu', 30, false)
// fun('kinnu', 30, 'false')
// fun('kinnu', 30, 'false', 9)


function fun(arg1, arg2, arg3){
    console.log( arg1 , arg2 , arg3) 
}

fun()
fun('simmy')
fun(null, 21)    
fun('simmy', 30, false)
fun(null, 30, null)
fun('simmy', 30, 'false', 9)
fun([1,2,3,4])



function fun1(...arg){
    console.log(arg)
}

fun1()
fun1(10)
fun1("simmy", "kinnu")
fun1(undefined)
fun1(10, undefined, null)
fun1(null, false, undefined)


function fuc(arg1, arg2 = "hyy", ...arg3){
    console.log(arg1, arg2, arg3)
}

fuc("hii")
fuc("hii", undefined, "bye")
fuc("hii", "wow", "bye", "oye")
fuc(undefined, undefined, undefined)
fuc(undefined, undefined, [1,2,3], [4,5,6])
fuc(undefined, [1,2,3], [4,5,6])
fuc(undefined, [1,2,3], 4,5,6)

