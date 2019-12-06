const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

reader.question("Would you like tea?", function(ans1){
    reader.question("Would you like biscuits?", function(ans2){
        const firstRes = (ans1 === 'yes') ? 'do' : 'don\'t';
        const secondRes = (ans2 === 'yes') ? 'do' : 'don\'t';
        console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
        
        reader.close()
    });
});