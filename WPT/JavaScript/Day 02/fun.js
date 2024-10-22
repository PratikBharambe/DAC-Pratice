function add(a, b){
    return a+b;
}

function isPrime(num){
    let checkFlag = false;
    for(let i = 2; i <= num/2; i++){
        if(num % i == 0)
            checkFlag = true;
    }
    return (checkFlag) ? false : true;
}