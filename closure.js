

function parent(){
    var x = 0;

    function child(){
        let y = 0;
        x++;
        y++;
        console.log(x, y);
    }
    return child;
}

const myfunc = parent();
myfunc();
myfunc();
myfunc();