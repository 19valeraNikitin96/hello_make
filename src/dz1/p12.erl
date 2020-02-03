%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 14:38
%%%-------------------------------------------------------------------
-module(p12).
-author("erlang").

%% API
-export([decode_modified/1]).

%%P12 (**) Написать декодер для модифицированого алгоритма RLE:
%%Пример:
%%1> p12:decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]).
%%[a,a,a,a,b,c,c,a,a,d,e,e,e,e]

decode_modified([])->[];
decode_modified([{0, _Item} | T])->
  decode_modified(T);
decode_modified([{Count, Item} | T])->
  [Item | decode_modified([{Count - 1, Item} | T])];
decode_modified([Val | T])->[Val | decode_modified(T)];
decode_modified(List)->
  decode_modified(List).

%%decode_modified([])->[];
%%decode_modified([H | T])->
%%  p05:reverse(decode_modified(H, T, [])).
%%
%%decode_modified({Count, Val}, [], Result)-> decode_modified(Count, Val, []) ++ Result;
%%decode_modified(Val, [], Result)-> [Val | Result];
%%
%%
%%decode_modified({Count, Val}, [H | T], Result)->
%%  decode_modified(H, T, decode_modified(Count, Val, []) ++ Result);
%%decode_modified(0, _Val, Acc)->Acc;
%%decode_modified(Val, [H | T], Result)->
%%  decode_modified(H, T, [Val | Result]);
%%
%%decode_modified(Count, Val, Acc)->
%%  decode_modified(Count - 1, Val, [Val | Acc]).


