%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 12:59
%%%-------------------------------------------------------------------
-module(p07).
-author("erlang").

%% API
-export([flatten/1]).

%%P07 (**) Выровнять структуру с вложеными списками:
%%Пример:
%%1> p07:flatten([a,[],[b,[c,d],e]]).
%%[a,b,c,d,e]
flatten(List) -> flatten(List, []).
flatten([], List) -> List;
flatten([H | T], Acc) ->  flatten(H, flatten(T,Acc));
flatten(H, List) ->  [H | List].

