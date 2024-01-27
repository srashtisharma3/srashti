function sayHello(){
    console.log("Hellow srashti...");
}

sayHello();
sayHello();


// function getName(fname, lname){
//     console.log(`Welcome ${fname} ${lname}`);
// }

// getName('srashti', 'sharma');
// getName('srashti');
// getName(100, 200);
// getName('srashti', 'sharma', 'kumari');



function getName(){
    // console.log(`Welcome ${arguments[0]} ${arguments[1]}`);
    for (let i = 0; i < arguments.length; i++) {
        console.log(`Welcome ${arguments[i]}`);
        
    }
}

getName('srashti', 'sharma');
getName('srashti');
getName(100, 200);
getName('srashti', 'sharma', 'kumari');


// function getName(fname, lname){
//     return `Welcome ${fname} ${lname}`;
// }

// // var name = getName('srashti', 'sharma');
// console.log(name);

// console.log(getName('srashti', 'sharma'));