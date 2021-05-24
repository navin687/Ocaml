/* Examples for testing */

and (iszero (pred (succ 0))) true ;
or false (iszero (pred (succ 0))) ;
or (and (or (iszero (pred (succ 0))) true) false) false;
and true (and false true);
switch succ 0 case 0: pred (succ 0) case succ 0: true ;

