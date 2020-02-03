%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 15:40
%%%-------------------------------------------------------------------
-module(p14).
-author("erlang").

%% API
-export([duplicate/1]).

%%P14 (*) Написать дубликатор всех элементов входящего списка:
%%Пример:
%%1> p14:duplicate([a,b,c,c,d]).
%%[a,a,b,b,c,c,c,c,d,d]

duplicate([])->[];
duplicate([H | T])->
  [H, H | duplicate(T)].

%%TODO old variant
%%  p05:reverse(duplicate([H | T], [])).
%%
%%duplicate([H | []], Result)->[H, H | Result];
%%duplicate([H | T], Result)->
%%  duplicate(T, [H, H] ++ Result).