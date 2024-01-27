

function student() {
    this.name = 'simmy';
    this.gender = 'f';
}

student.prototype.age = 23;
 
var obj1 = new student();
console.log(obj1.name);
console.log(obj1.gender);
console.log(obj1.age);


var obj2 = new student();
console.log(obj2.age); 
