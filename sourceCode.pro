/****************************************************************************

 Project:  CPCS331-2018
 FileName: Studets Specialization Expert System
 Purpose: Help fresh computer students to determining the appropriate specialty for them
 Written by: Israa Allouh , Lama Salah
 Section : CAR 
******************************************************************************/

facts
  xpositive(symbol)
  xnegative(symbol)

predicates
  he_is(symbol) - nondeterm (o)
 
  ask(symbol,symbol) - determ (i,i)
  remember(symbol,symbol) - determ (i,i)

  positive(symbol) - determ (i)
  negative(symbol) - determ (i)
  clear_facts - determ ()
  run - determ ()

clauses
    
  he_is(computer_Science):-
        positive("Do you want to learn new programming languages like python?" ),
        positive("Do you want to learn new programming languages like C++ ?"),
        positive("Do you want to learn new programming languages like php ?"),
        positive("Do you like mathmatical ?").
        
        
  he_is(information_Technology):-      
        positive("Are you interested to learn web programming ?"),
        positive("Do you like to learn HTML ,CSS,XML  ?").
       
       
        
  he_is(computer_Science):-     
        positive("Are you interested to learn about artificial intelligence ?"),
        positive("Are you interested to learn and internet of things?").


  he_is(information_System):-    
        positive("Are you interested in programming with Administrative subject ?"),   
        positive("Are you interested to learn Analysis data ?").        
      
      
  he_is(computer_Science):- 
        positive("Are you interested to learn computer components (hardware,software) ?"),
        positive("Are you interested to know the compiler and how was running ?").
        
  
   he_is(information_System):-       
         positive("Are you interested to learn Design of web Interfaces ?").
      
        
    he_is(computer_Science):-   
        positive("Do you like sitting on your computer programming for a long time ?").
        
     
       
  he_is(computer_Science):-
        positive("Do you want to learn how write the Algorithms ?"),
        positive("Are you interested to analysis the Algorithms ?").
      
      
 he_is(information_System):- 	
        positive("Do you want to learn Accounting, Markting ?"),
        positive (" Do you like to learn Modern Management ?").

	
       
        
  he_is(information_Technology):-
       positive("Do you want to learn about Computer Networks ?"),
       positive("Do you want to learn about Information Security ?").




		
  he_is(computer_Science):-         
        positive("Do you like Mathmatical?"),
        positive("Do you like Statistics?").		
	
		
  
       
	
 
 
   	
   	
  positive(X):-
	xpositive(X),!.
  positive(X):-
	not(xnegative(X)),
	ask(X,yes).

  negative(X):-
	xnegative(X),!.
  negative(X):-
	not(xpositive(X)),
	ask(X,no).

  ask(X,yes):-
	!,
	write(X,'\n'),
	readln(Reply),nl,
	frontchar(Reply,'y',_),
	remember(X,yes).
  ask(X,no):-
	!,
	write(X,'\n'),
	readln(Reply),nl,
	frontchar(Reply,'n',_),
	remember(X,no).


  remember(X,yes):-
	assertz(xpositive(X)).
  remember(X,no):-
	assertz(xnegative(X)).

  clear_facts:-
	write("\n\nPlease press the space bar to exit\n"),
	retractall(_,dbasedom),
	readchar(_).

  run:-
	he_is(X),!,
	write("\nI think the right specialty for you is: ",X),
	nl,
	clear_facts.
  run:-
	write("\nUnable to determine : change the college :) "),
	clear_facts.

goal
  run.