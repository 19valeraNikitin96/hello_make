%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 15:45
%%%-------------------------------------------------------------------
-module(p15).
-author("erlang").

-include("header_for_macro.hrl").
%% API
-export([replicate/2]).

%%P15 (**) Написать функцию-репликатор всех элементов входящего списка:
%%Пример:
%%1> p15:replicate([a,b,c], 3).
%%[a,a,a,b,b,b,c,c,c]

%%replicate(_Val, 0, Result)->Result;
%%
%%replicate([], _Amount, Result)->Result;
%%replicate([H | T], Amount, Result)->
%%  replicate(T, Amount, replicate(H, Amount, []) ++ Result);
%%replicate(Val, Amount, Result)->
%%  replicate(Val, Amount - 1, [Val | Result]).

replicate(_, Acc)when Acc < 1->?NULL;
replicate(List, Acc) ->
  replicate(List, Acc, Acc).
replicate([_ | T], Acc, 0)-> replicate(T, Acc, Acc);
replicate([H | T], Acc, N) ->
  [H | replicate([H | T], Acc, N-1)];
replicate([],_,_) -> [].

%%replicate3(List, Amount)->
%%  replicate3(List, Amount, []).
%%replicate3([], _ , Result)->Result;
%%replicate3([H | T], Amount, Result)->
%%  Res1 = replicate3(T, Amount, Result),
%%  [H || _<- lists:seq(1, Amount)] ++ Res1.
%%
%%replicate2(List, Amount)->
%%  lists:concat([[X || _ <- lists:seq(1, Amount)] || X <- List]).
%%
%%replicate(List, Amount)->
%%  replicate(List, Amount, []).
%%replicate([], _, Result)->Result;
%%replicate([H | T], Amount, Result)->
%%  replicate(T, Amount, Result ++ lists:duplicate(Amount, H)).

%%replicate(List, Amount)->
%%  replicate(List, Amount, []).
%%replicate([], _, Result)->Result;
%%replicate([H | T], Amount, Result)->
%%  replicate(T, Amount, Result ++ lists:duplicate(Amount, H)).


%%dupl(N, X) when is_integer(N), N >= 0 -> dupl(N, X, []).
%%dupl(0, _, L) -> L;
%%dupl(N, X, L) -> dupl(N-1, X, [X|L]).

%%replicate([H | T], Amount, Iteration)->
%%  replicate(H, Amount, []).

%%TODO bad variants
%%replicate2(List, Amount)->
%%  replicate2(List, Amount, []).
%%replicate2(List, Amount, Result)->
%%  case Amount == 0 of
%%    true -> lists:sort(Result);
%%    false -> replicate2(List, Amount - 1, Result ++ List)
%%  end.
%%replicate([H | T], Amount)->
%%  p05:reverse(replicate(T, Amount, [], H, Amount)).
%%replicate(List, Amount, Result, Element, Current)->
%%  case Current /= 0 of
%%    true -> replicate(List, Amount, [Element | Result], Element, Current - 1);
%%    false -> case List == [] of
%%               true -> Result;
%%               false -> [H | T] = List,replicate(T, Amount, Result, H, Amount)
%%             end
%%  end.
%%TODO old variant
%%replicate(_Val, 0, Result)->Result;
%%
%%replicate([], _Amount, Result)->Result;
%%replicate([H | T], Amount, Result)->
%%  replicate(T, Amount, replicate(H, Amount, []) ++ Result);
%%replicate(Val, Amount, Result)->
%%  replicate(Val, Amount - 1, [Val | Result]).