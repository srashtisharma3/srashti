

class student {
    constructor(name, age){
        this.name = name;
        this.age = age;
    }
    
    greet(){
        console.log (`Hi, ${this.name}`);
    }
}


// var st = new student("srashti", 23);
// console.log(st.greet());



//  inhertance

class Person extends student {
    constructor(name, age, gender, email, address) {
         super();
         this.name =name;
         this.age = age;

         this.gender = gender;

     }
   details() {
     console.log(`gender : ${this.gender}`);
   }
}  
  
let c1 = new Person('srashti', 23, 'female');

c1.greet();
c1.details();