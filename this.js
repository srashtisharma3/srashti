
// var car = {
//     no: "4562",
//     brand: "kia",

//     display: function(){
//         console.log(this.brand + ' : ' + this.no);
//     }
// }

// // car.display();

// var mycar = car.display.bind(car);
// mycar();



// var car = {
//     no: "4562",
//     brand: "kia",

//     display: function(owner){
//         console.log(owner + ' : ' +this.brand + ' : ' + this.no);
//     }
// }

// // car.display();

// var mycar = car.display.bind(car, 'sras');
// mycar();


var car = {
    no: "4562",
    brand: "kia"
}

function display(owner){
    console.log(owner + ' : ' +this.brand + ' : ' + this.no);
}

display.apply(car, ['sras']);
display.call(car, 'sras');
