:- dynamic movies/5,category/1,language/1,age/1,season/1 .

/*list */
category(["'Drama'","'Science'","'Fantasy'","'Mystery'","'Action'","'Crime'","'Romance'","'Comedy'","'Animation'","'Horror'"]).
language(["'English'","'Korean'","'Indian'","'Japanese'","'No preference'"]).
age(["General Audience (suitable for all ages)","Parental Guidance Suggested","Restricted (under 17 requires accompanying parent or adult guardian)","No one 17 and under admitted (adult only)","No preference"]).
season(["First Quarter (January - March)","Second Quarter (April - June)","Third Quarter (July - September)","Fourth Quarter (October - December)","No preference"]).


/*movies(title,category,language,age restrictions, season).*/

movies('Doctor Sleep', "'Horror'", "'English'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Fourth Quarter (October - December)").
movies('Midway', "'Action'", "'English'", "Parental Guidance Suggested", "Fourth Quarter (October - December)").
movies('The Goldfinch', "'Drama'", "'English'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Third Quarter (July - September)").
movies('Toy Story 4', "'Animation'", "'English'", "General Audience (suitable for all ages)", "Second Quarter (April - June)").
movies('Noelle', "'Fantasy'", "'English'", "General Audience (suitable for all ages)", "Fourth Quarter (October - December)").
movies('Crawl', "'Action'", "'English'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Third Quarter (July - September)").
movies('Motherless Brooklyn', "'Crime'", "'English'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Fourth Quarter (October - December)").
movies('Let It Snow', "'Romance'", "'English'", "Parental Guidance Suggested", "Fourth Quarter (October - December)").

movies('Until I Meet Septembers Love', "'Romance'", "'Japanese'", "General Audience (suitable for all ages)", "First Quarter (January - March)").
movies('Snow Flower', "'Romance'", "'Japanese'", "General Audience (suitable for all ages)", "First Quarter (January - March)").
movies('Kingdom', "'Action'", "'Japanese'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Third Quarter (July - September)").
movies('Weathering with You', "'Animation'", "'Japanese'", "Parental Guidance Suggested", "First Quarter (January - March)").
movies('Parallel World Love Story', "'Mystery'", "'Japanese'", "Parental Guidance Suggested", "Second Quarter (April - June)").
movies('Hit Me Anyone One More Time', "'Comedy'", "'Japanese'", "Parental Guidance Suggested", "Second Quarter (April - June)").
movies('12 Suicidal Teens', "'Mystery'", "'Japanese'", "No one 17 and under admitted (adult only)", "Third Quarter (July - September)").
movies('Sadako', "'Horror'", "'Japanese'", "No one 17 and under admitted (adult only)", "First Quarter (January - March)").
movies('Bento Harassment', "'Drama'", "'Japanese'", "Parental Guidance Suggested", "Second Quarter (April - June)").
movies('Makuko', "'Science'", "'Japanese'", "Parental Guidance Suggested", "Third Quarter (July - September)").

movies('Gully Boy', "'Drama'", "'Indian'", "Parental Guidance Suggested", "First Quarter (January - March)").
movies('Kabir Singh', "'Romance'", "'Indian'", "No one 17 and under admitted (adult only)", "Second Quarter (April - June)").
movies('De De Pyaar De', "'Comedy'", "'Indian'", "Parental Guidance Suggested", "Second Quarter (April - June)").
movies('Chhichhore', "'Comedy'", "'Indian'", "Parental Guidance Suggested", "Third Quarter (July - September)").
movies('Mission Mangal', "'Drama'", "'Indian'", "Parental Guidance Suggested", "Third Quarter (July - September)").
movies('The Zoya Factor', "'Romance'", "'Indian'", "Parental Guidance Suggested", "Third Quarter (July - September)").
movies('Article 15', "'Crime'", "'Indian'", "Parental Guidance Suggested", "Second Quarter (April - June)").
movies('Section 375', "'Crime'", "'Indian'", "Parental Guidance Suggested", "Third Quarter (July - September)").
movies('9: Nine', "'Horror'", "'Indian'", "Parental Guidance Suggested", "First Quarter (January - March)").
movies('Bypass Road', "'Drama'", "'Indian'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Fourth Quarter (October - December)").
movies('706', "'Horror'", "'Indian'", "Restricted (under 17 requires accompanying parent or adult guardian)", "First Quarter (January - March)").
movies('Ghost', "'Horror'", "'Indian'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Fourth Quarter (October - December)").

movies('Extreme Job', "'Action'", "'Korean'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Second Quarter (April - June)").
movies('The Gangster, the Cop, the Devil', "'Action'", "'Korean'", "Parental Guidance Suggested", "Second Quarter (April - June)").
movies('The Divine Fury', "'Horror'", "'Korean'", "Parental Guidance Suggested", "Third Quarter (July - September)").
movies('Parasite', "'Comedy'", "'Korean'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Second Quarter (April - June)").
movies('The Man Inside Me', "'Comedy'", "'Korean'", "Restricted (under 17 requires accompanying parent or adult guardian)", "First Quarter (January - March)").
movies('Bad Guys: The Movie', "'Crime'", "'Korean'", "Parental Guidance Suggested", "Third Quarter (July - September)").
movies('Eorin uiroein', "'Drama'", "'Korean'", "Restricted (under 17 requires accompanying parent or adult guardian)", "Second Quarter (April - June)").
movies('No Mercy', "'Action'", "'Korean'", "Restricted (under 17 requires accompanying parent or adult guardian)", "First Quarter (January - March)").
movies('Exit', "'Action'", "'Korean'", "Parental Guidance Suggested", "Third Quarter (July - September)").
movies('Tazza: One Eyed Jack', "'Crime'", "'Korean'", "No one 17 and under admitted (adult only)", "Third Quarter (July - September)").
movies('Witness', "'Crime'", "'Korean'", "Parental Guidance Suggested", "First Quarter (January - March)").
movies('Birthday', "'Drama'", "'Korean'", "Parental Guidance Suggested", "Second Quarter (April - June)").
movies('Idol', "'Crime'", "'Korean'", "Parental Guidance Suggested", "First Quarter (January - March)").
movies('Romang', "'Romance'", "'Korean'", "Parental Guidance Suggested", "Second Quarter (April - June)").



/*start Rule*/
start:-
      write('*** Movies Recommendation System ***'),nl,nl,
      write('** Our system will make a recommendation to the movie lover by showing the best-matched movie based on the user selections or preferences. **'),nl,
      menu.
/*Main menu rule*/
menu:-
     nl,nl,
     write('Do you want to watch a movie? "Select 1,2 or 3"'),nl,
     write('1- Yes'),nl,
     write('2- No'),nl,
write('Enter your choice:'),nl,
read(X),
option(X).

/*second menu rule*/
menutwo:-
nl,nl,
write('Do you want another recommendation? "Select 1 or 2"'),nl,
write('1- Yes'),nl,
write('2- No'),nl,
write('Enter your choice:'),nl,
read(X),
option(X).



/*menu option rule*/
option(1):-
         write(' What is your mode? "Select from 1 to 10"'),nl,
         category(L),
         (display(L,0);true),
         write('Enter your choice:'),
         nl,read(X),
		 checkinput(X,L),
		 nb_getval(checkresult,S),
		 mode(S).

option(2):-
         write('Thank you for using our system').




/* movie's filter questions*/

mode(X):-
         T is X-1,
         category(L),
         nth0(T,L,Result1),
         nb_setval(result1,Result1),
		 nb_setval(result1,Result1),
         write('What is your preferred movies language? "Select from 1 to 5 or 0 to print recommendation"'),nl,
         language(R),
         (display(R,0);true),
         write('Enter your choice:'),nl,
         read(S), checkinput(S,R),
		 nb_getval(checkresult,A),
		 (A =:= 0 ->( nb_setval(flag,1),end );(languageRest(A))).


languageRest(X):-
                N is X-1,
                language(R),
                nth0(N,R,Result2),
				(Result2 == "'No preference'"  ->( nb_setval(result2," "));(nb_setval(result2,Result2))),
                write('What is your preferred age? "Select from 1 to 5 or 0 to print recommendation"'),nl,
                age(A),
                (display(A,0);true),
                write('Enter your choice:'),nl,
                read(L),
				checkinput(L,A),
		        nb_getval(checkresult,S),
	        (S =:= 0 ->( nb_setval(flag,2),end) ;(ageRest(S))).

ageRest(X):-
           N is X-1,
           age(R),
           nth0(N,R,Result3),
          (Result3 == "'No preference'" ->( nb_setval(result3," "));(nb_setval(result3,Result3))),
           write('Movie season? "Select from 1 to 5 or 0 to print recommendation"'),nl,
           season(A),
           (display(A,0);true),
           write('Enter your choice:'),nl,
           read(L),
		   checkinput(L,A),
		   nb_getval(checkresult,O),
		   ( O =:= 0 ->( nb_setval(flag,3),end );(seasonRest(O))).

seasonRest(X):-
              U is X-1,
              season(P),
              nth0(U,P,Result4),
              (Result4 == "'No preference'" ->( nb_setval(result4," "));(nb_setval(result4,Result4))),
			  nb_setval(flag,4)
			 ,end.



end:- nb_getval(flag,Flag),print(Flag).

/* movie's filter result*/
print(1):-

         nb_getval(result1,Result1),nl,
         write('** Based on your preferences **'),nl,
         write('Category: ') ,write(Result1),nl,
         write('I Recommend: '),
		 nl, (printFinalResult(Result1,_,_,_);true),
		 nl,nl,write('**Note: if there is no result that it is mean there is no match with your preferences**'),
		 menutwo.

print(2):-
         nb_getval(result1,Result1),
         nb_getval(result2,Result2),
         write('** Based on your preferences **'),nl,
         write('Category: ') ,write(Result1),nl,
         write('Language: '), ( Result2 == " "->(write(' No preferences '),nb_setval(result2,_));(write(Result2))),nl,
	     write('I Recommend: '),
		 nb_getval(result2,Result2new),
		 nl, (printFinalResult(Result1,Result2new,_,_);true),
		 nl,nl,write('**Note: if there is no result that it is mean there is no match with your preferences**'),
		 menutwo.

print(3):-
         nb_getval(result1,Result1),
         nb_getval(result2,Result2),
         nb_getval(result3,Result3),
         write('** Based on your preferences **'),nl,
         write('Category: ') ,write(Result1),nl,
         write('Language: '), ( Result2 == " "->(write(' No preferences '),nb_setval(result2,_));(write(Result2))),nl,
	     write('Age Restriction: '),( Result3 == " "->(write(' No preferences '),nb_setval(result3,_));(write(Result3))),nl,
         write('I Recommend: ') ,
		 nb_getval(result2,Result2new),
		 nb_getval(result3,Result3new),
		 nl, (printFinalResult(Result1,Result2new,Result3new,_);true),
		 nl,nl,write('**Note: if there is no result that it is mean there is no match with your preferences**'),
		 menutwo.


print(4):-
         nb_getval(result1,Result1),
         nb_getval(result2,Result2),
         nb_getval(result3,Result3),
         nb_getval(result4,Result4),
	     write('** Based on your preferences **'),nl,
         write('Category: ') ,write(Result1),nl,
         write('Language: '), ( Result2 == " "->(write(' No preferences '),nb_setval(result2,_));(write(Result2))),nl,
	     write('Age Restriction: '),( Result3 == " "->(write(' No preferences '),nb_setval(result3,_));(write(Result3))),nl,
         write('Season: ') , (Result4  == " "-> (write(' No preferences '),nb_setval(result4,_));(write(Result4))),nl,
         write('I Recommend: ') ,
		 nb_getval(result2,Result2new),
         nb_getval(result3,Result3new),
         nb_getval(result4,Result4new),
		 nl, (printFinalResult(Result1,Result2new,Result3new,Result4new);true),
		 nl,nl, write('**Note: if there is no result that it is mean there is no match with your preferences**'),
		 menutwo.


printFinalResult(Result1,Result2,Result3,Result4):-
                                                  nl,
												  movies(J,Result1,Result2,Result3,Result4),
                                                  nl,
												  write(J),
                                                  display(J).


/* display  helper rule for movie's filter result*/
display([]).
display([H|T],A):-
                  M is A+1,
                  write(M),
                  write('- '),
                  write(H),
			      nl,
                  write(' '),
                  display(T,M).


checkinput(A,L):-
         length(L,Len),
		 ( A>Len ->(write('Please enter valid number: '),read(D),checkinput(D,L) ) ; (nb_setval(checkresult,A),nl) ).













