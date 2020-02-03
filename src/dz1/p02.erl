%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 12:19
%%%-------------------------------------------------------------------
-module(p02).
-author("erlang").

%% API
-export([but_last/1]).

%%P02 (*) Найти два последних элемента списка:
%%Пример:
%%1> p02:but_last([a,b,c,d,e,f]).
%%[e,f]

but_last([])->undefined;
but_last([_])->undefined;
but_last([H | T])->
  but_last([H | T], H).
but_last([H | []], Prev)->[Prev | H];
but_last([H | T], _)->but_last(T, H).
