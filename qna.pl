advise:-
get_intro(Name).

get_intro(Name):-
write('What is your name?'),nl,
read(Name),
write('Hello '), write(Name),write('!'),nl,
get_field(Field,Name).



get_field(Field,Name):-
write('So, '), write(Name), write(' which of these fields do you like the most? '),
write('enter the respective number:'),nl,
write('1. Machine Learning and Data science'),nl,
write('2. Data Engineering'),nl,
write('3. Information security'),nl,
write('4. Mobile Computing'),nl,
read(Field),

(
Field =:= 1 -> ds_ml;
(Field =:= 2 -> de;(
    Field =:= 3 -> is;
    mc
)
)
).

get_knows_ml_ds:-
does_know(python),
does_know(prolog),
does_know(ml).

get_good_at_ml_ds:-
is_good(statistics_and_probability),
is_good(linear_algebra),
is_good(logic).

get_interest_ml_ds:-
has_interest(data_mining),
has_interest(image_processing),
has_interest(text_processing),
has_interest(conversational_ai),
has_interest(computer_vision),
has_interest(computer_games).


get_frameworks:-
write('which of the following python frameworks are you familiar with?'),nl,
know_framework([numpy,pandas,matplotlib,scikit_learn,scipy,tensorflow,pytorch]).

know_framework([H|T]):-
write(H),write('(y/n)'),nl,
read(Y),
Y==y -> assert(knows(H)),know_framework(T);
know_framework(T);true.


is_good(X):-
write('Are you good at '), write(X), write('?(y/n)'),
read(Y),
Y==y -> assert(good_at(X));true.

has_interest(X):-
write('Are you interested in '), write(X), write('?(y/n)'),
read(Y),
Y==y -> assert(interested(X));true.

does_know(X):-
write('do you know '), write(X), write('?(y/n)'),
read(Y),
Y==y -> (
    X==python -> (
         assert(knows(X)),
         get_frameworks
         );
         assert(knows(X)),true
); true.



ds_ml():-
write('you chose ds_ml!'),nl,
get_knows_ml_ds,
get_good_at_ml_ds,
get_interest_ml_ds,
suggest_ds_ml_electives.

suggest_ds_ml_electives:-
knows(python),
good_at(statistics_and_probability),
good_at(linear_algebra),
assert(elective(machine_learning)),
fail.

suggest_ds_ml_electives:-
knows(prolog),
good_at(logic),
interested(computer_games),
assert(elective(ai)),
fail.

suggest_ds_ml_electives:-
knows(python),
interested(text_processing),
assert(elective(nlp)),
fail.

suggest_ds_ml_electives:-
write('here are your predictions').






de:-
write('you chose Data Engineering!'),nl,
get_knows_de,
get_good_at_de,
get_interest_de,
suggest_de_electives.



get_knows_de:-
does_know(python),
does_know(sql).

get_good_de:-
is_good(maths),
is_good(statistics_and_probability),
is_good(dbms),
is_good(programming).

get_interest_de:-
has_interest(finance),
has_interest(cloud_computing),
has_interest(big_data),
has_interest(data_analytics),
has_interest(data_warehousing),
has_interest(social_network_analysis).




is:-
write('you chose Information security!'),nl.

mc:-
write('you chose Mobile Computing!'),nl.


