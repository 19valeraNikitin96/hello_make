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
-include("header_for_macro.hrl").
%% API
-export([but_last/1]).

%%P02 (*) Найти два последних элемента списка:
%%Пример:
%%1> p02:but_last([a,b,c,d,e,f]).
%%[e,f]

but_last([])->?NULL;
but_last([_])->?NULL;
but_last([H | T])->
  but_last([H | T], H).
but_last([H | []], Prev)->[Prev | H];
but_last([H | T], _)->but_last(T, H).
