function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

//  This will break 
// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// This will break
// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }


function madLib(verb, adjective, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()} `)
}

madLib('make', 'best', 'guac')

function isSubstring(str1, str2){
    return str1.includes(str2)
}

isSubstring("time to program", "time")

isSubstring("Jump for joy", "joys")

function fizzbuzz(array){
    let ans = []
    for(let i = 0; i < array.length; i++){
        if (array[i] % 3 === 0 && array[i] % 5 != 0){
            ans.push(array[i])
        } else if (array[i] % 3 != 0 && array[i] % 5 === 0) {
            ans.push(array[i])
        }
    }
    return ans
}

fizzbuzz([27,8,3,15])

function isPrime(num){
    if (num < 2) return false

    for(let i = 2; i < num; i++){
        if (num%i=== 0) return false
    }
    return true
}

isPrime(2)
isPrime(10)
isPrime(15485863)
isPrime(3548563)

function sumOfNPrimes(n){
    let array = []
    let i = 2
    while (array.length < n){
        if(isPrime(i)) array.push(i)
    }
    return array.reduce((a, b) => a + b, 0)
}

sumOfNPrimes(0)
sumOfNPrimes(1)
sumOfNPrimes(4)