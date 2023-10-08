sum_list([], 0).
sum_list([Head|Tail], Total) :-
  sum_list(Tail, Rest),
  Total is Head + Rest.

:- initialization(main).
main :- 
  Arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
  sum_list(Arr, Total),
  write(Total),
  nl,
  halt.