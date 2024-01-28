

//global scope

// var a = "hello";
// console.log(a);

// function print(){
//     a="heyya srashti";  //local scope
//     console.log(a);

//     a="srashti";
//     console.log(a);
// }
// print();
// console.log(a);


// local scobe---

// if(true){
//     var a = "hello";
//     let b = "hyy";
//     const c = "hiii";

    
//     a = "hello srashti";
//     b = "hyy sras";
//     // c = "hiii simmy";


//     console.log(a);
//     console.log(b);
//     // console.log(c);
// }

// console.log(a);
// // console.log(b);
// // console.log(c);


// function scope

// function print(){
//     if(true){
//         var a = "hello";
//         let b = "hyy";
//         const c = "hiii";

//         console.log(a);
//         console.log(b);
//         console.log(c);
//     }
//     console.log(a);
//     // console.log(b);
//     // console.log(c);
// }
// print();


// nested scope 

function print(){
    var a = "hello";
    let b = "hyy";
    const c = "hiii";


    function inner(){

        console.log(a);
        console.log(b);
        console.log(c);
    }
    inner();

}
print();