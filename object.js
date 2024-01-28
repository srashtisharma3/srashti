
// literal 
// var car = {
//     name : "naxon",
//     model : 2023,
//     brand : "tata"
// }

// console.log(car);


// object constructor

// var car = new Object();
//     car.name = "naxon",
//     car.model = 2023,
//     car.brand = "tata"

// console.log(car);


// ES6 class syntax

// class student {
//     constructor(name, age){
//         this.name = name;
//         this.age = age;
//     }
// }
// var st = new student("srashti", 23);
// console.log(st);


var car = {
    name : "naxon",
    model : 2023,
    brand : "tata"
}

console.log(car.brand);

car['color'] = "black";  // add
console.log(car.color);

car.brand = "TATA";  // modify
console.log(car.brand);

delete car.model;  // delete
console.log(car);