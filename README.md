# demo-cracy
Solidity experiment on a decentralized voting system. By **NO** means a real world solution I just made it for funz. Probably if you look into my commits you will see how I leard from my mistakes and misunderstanding on Solidity, maybe someone can learn from my mistakes.

###Some of the msitakes I made: 

 - I tried to loop through a mapping. You can **NOT** do that, there are patterns to solve that but it's not a hashmap like in Java. Maybe someday we will have something like .hasNext() or maybe not.
 - I created getters for my public state variables. What happpens is that Solidity 'generates' aucomatically getters for public state variables, so you end up with duplicated getter for a state variable that later on you realized that it should've been a costant. 
 - I was not following the [Solidity etiquette](https://solidity.readthedocs.io/en/develop/style-guide.html). Please read that before you start using one `blank lines` between functions insted of **TWO** `blank lines`.

I hope you have a less embarrassing journey than I had. Solidity is a really fun and exiting programming language, since you can screw up so big that it scares. Also you have to think in minimize gas usage and that's an extra layer that developers have to think which makes you an even cooler developer 😎