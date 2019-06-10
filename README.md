#Prereqs
> node and npm

> sudo npm install -g ethereumjs-testrpc
>testrpc
    #this proves you with 10 accounts and private keys along with local server on localhost:8545

>npminit
>npm install ethereum/web3.js --save

#in remix...
deploy contract in Web3 environment


I got stuck when web3 js wasnt included in deprecated .. so this fixed it kinda
>npm install ethereum/web3.js#develop --save --verbose
