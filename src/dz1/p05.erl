%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 12:43
%%%-------------------------------------------------------------------
-module(p05).
-author("erlang").

%% API
-export([reverse/1]).

%%P05 (*) Перевернуть список:
%%Пример:
%%1> p05:reverse([1,2,3]).
%%[3,2,1]

reverse([]) -> [];
reverse([H | T]) ->
  reverse([H | T], []).
reverse([H | []], Reversed)->[H |Reversed];
reverse([H | T], Reversed)->
  reverse(T, [H |Reversed]).

