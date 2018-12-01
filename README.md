# Expert-System-Specialization-in-Computer-College-
This is my experience in programming with prolog langues .

What this is Program ? 

An expert system is an artificial intelligent (AI) application whose purpose is to use fact and rules taken from the knowledge of many human experts in particular domain to help making decisions and solving problems .  Our system works in prolog program as a code  AI agent who help the students to choose the appropriate specialization in the computer field . the system is going to identify the correct  specialization in computer ( Computer science , Information Technology or Information System ) on the provided answers .  So , we write many question to decide the best specialization in computer . 

#Run-the-program
1- you need to instuall Visual Prolog 
https://www.visual-prolog.com/vip/download/default.html
2- open the code 
3- press ctrl+G to run the code

  Rules
he_is(symbol) :
        This rule is represented our knowledge-based  information , where questions are stored into the system and gathered when needed .

ask(symbol,symbol) :
     This rule take two parameters  , the first one is (X) means question and the second parameter r is  the answer form users.  So . it will ask many questions to the student and receive the answer  from him / her  either YES or NO  .

remember(symbol,symbol) :
     This rule is save the answer from the students and store it in the data base using (assert)  
for example , assertz(xnegative(X)).

positive(symbol) :
       This rule is invoke the ask(symbol,symbol) , when the student answer the question "YES" it displays all next predicates  one by one  and complete the answer , while the answer 
" NO " it will skip all next predicates to another Computer Specialties predicates , and its invoked in student_is(symbol) :

negative(symbol) : 
       This rule is invoke the ask(symbol,symbol) , and its opposite of the positive(symbol).


clear_facts :
      This rule will allow user to exit the prolog program .

run :
      This rule  is invoked he_is(symbol) and clear_facts  , the will recommended  the student what is appropriate Computer specialization  for him / her  through his / her answers ( YES – NO ) .


We implement a simple expert System of how choose the best specialization in computer on the provided answers of students using prolog . this system are designed to solve the problem by reasoning about knowledge and it saves a lot of time and It indicate that in the future we can implement a full expert system . 


	References 
•	https://www.computersciencedegreehub.com/faq/difference-information-technology-computer-science/








