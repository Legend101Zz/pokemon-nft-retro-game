


var balance = document.getElementById('balance');








document.getElementById('connect-button').addEventListener('click', event =>{
 let account;
    ethereum.request({method:'eth_requestAccounts'}).then(accounts =>{
        account = account[0];
        console.log(account);



    })


    ethereum.request({method: 'eth_getBalance' , params:[account,'latest']}).then(result =>{
        console.log(result);
        balance.textContent = balance;
    });





    
})