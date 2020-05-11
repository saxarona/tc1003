:- discontiguous(sone/1).
:- discontiguous(reveluv/1).
:- discontiguous(blink/1).
:- discontiguous(likes/2).

% fandom names
sone(X) :- likes(X, girlsgeneration).
reveluv(X) :- likes(X, redvelvet).
blink(X) :- likes(X, blackpink).

% genres 
likes(X, ballads) :- reveluv(X).
likes(X, dance) :- blink(X).

% artists
likes(X, djhyo) :- likes(X, electro), sone(X).
likes(X, chungha) :- likes(X, dance), likes(X, ballads).
likes(X, seohyun) :- likes(X, drama), sone(X).
likes(X, taeyeon) :- likes(X, ballads), sone(X).
likes(X, heize) :- likes(X, drama), likes(X, ballads).


% known facts about our users

% question 1 & 2
likes(userA, girlsgeneration).
reveluv(userA).

% question 3
sone(userB).
reveluv(userB).
blink(userB).
likes(userB, drama).
