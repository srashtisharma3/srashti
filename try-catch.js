let val = 500 ;


try{

    if(val == undefined){
        throw "undefined";
    }else if(val < 0){
        throw 'too short';
    }else if(val > 100){
        throw 'too big';
    }else{
        throw 'valid';
    }

}catch(err){
    console.log(err);
}