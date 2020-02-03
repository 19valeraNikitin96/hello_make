%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 13:33
%%%-------------------------------------------------------------------
-module(p09).
-author("erlang").

%% API
-export([pack/1]).

%%P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки:
%%Пример:
%%1> p09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%%[[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

pack([])->[];
pack(List)->
  lists:reverse(pack(List, [], [])).
pack([H, H | T], Acc, Result)->
  pack([H | T], [H | Acc], Result);
pack([], _Acc, Result)->Result;
pack([H | T], Acc, Result)->pack(T, [], [[H | Acc] | Result]).


%%TODO old variant
%%pack([])->[];
%%pack([H | T])->
%%  pack(T, H, [H | []],[]).
%%pack([], _, Acc, Result)->Result ++ Acc;
%%pack([H | T], Element, Acc, Result) when H =/= Element ->
%%  pack(T, H, [H | []], Result ++ Acc);
%%pack([H | T], Element, Acc, Result)->
%%  pack(T, Element, [H | Acc], Result).
