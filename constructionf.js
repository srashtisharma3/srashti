
// constructor functions >>


// function class1(){
//     this.hyy = 'Good morning!! ';
//     this.bye = () => {
//         return 'Good evening!! ' 
//     }
// }

// let obj = new class1()
// console.log(obj.hyy)
// console.log(obj.bye())


function class_adc(arg1, arg2, arg3){
    this.st1 = arg1
    this.st2 = arg2
    this.st3 = arg3
    this.opt = () => {
        console.log(this.st1, this.st2, this.st3)
    }
}
let obj1 = new class_adc(1, '2', 3)
obj1.opt()

new class_adc('hyy', 'bye', 'hii').opt()