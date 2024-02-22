

// class usename{
//     name = ""
//     getter(){
//         this.name = prompt("Enter name")
//     }
//     setter(){
//         console.log("name is ", this.name)
//     }
// }

// let obj = new usename()
// obj.getter()
// obj.setter()



// class abc{
//     constructor(name, city){
//         this.name = name
//         this.city = city
//     }
//     display(){
//         alert(`Enter name: ${this.name} and Enter city: ${this.city}`)
//     }
// }

// let uname = prompt("Name")
// let mycity = prompt("City")

// let objj = new abc(uname, mycity)
// objj.display()


// Encapsulation

class students {
    #name;
    #rollno;
    constructor() {
        this.#name = '';
        this.#rollno = 0;
    }
    getinfo() {
        this.#name = prompt("Enter name:");
        this.#rollno = prompt("Enter roll number:");
    }
    display() {
        this.getinfo();
        alert("Name: " + this.#name + "\nRoll no.: " + this.#rollno);
    }
}

let obj1 = new students();
obj1.display();

let obj2 = new students();
obj2.display();
