suggest_ai_electives:-
(

(interested('Conversational AI'),knows(tensorflow),knows(machine_learning)) ;
(interested('Conversational AI'),knows(pytorch),knows(machine_learning));
(interested('Computer Vision'),knows(tensorflow),knows(machine_learning));
(interested('Computer Vision'),knows(pytorch),knows(machine_learning))

),
assert(elective('Deep Learning')),
fail.