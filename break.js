//break statement

for(let i=1; i<=10; i++){
    if(i == 5)
    break;   
    console.log(i);
}

let str = 'g';

switch(str){
    case 'a' : console.log('A');
    break;
    case 'e' : console.log('E');
    break;
    case 'i' : console.log('I');
    break;
    case 'o' : console.log('O');
    break;
    case 'u' : console.log('U');
    break;
    default : console.log('Not a vowel');
    break;
}


// continue statement

for(let i=1; i<=10; i++){
    if(i == 5)
    continue;   
    console.log(i);
}