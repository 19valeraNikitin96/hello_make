%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 13:45
%%%-------------------------------------------------------------------
-module(p10).
-author("erlang").

%% API
-export([encode/1]).

%%P10 (**) Закодировать список с использованием алгоритма RLE:
%%Пример:
%%1> p10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%%[{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]


encode(List)->
  lists:reverse(encode(List, 0, [])).
encode([], _, Result)->Result;
encode([H, H | T], Acc, Result)->
  encode([H | T], Acc + 1, Result);
encode([H | T], Acc, Result)->
  encode(T, 0, [{Acc + 1, H} | Result]).

%%encode([H | T])->
%%  p05:reverse(encode([H | T], H, 1, [])).
%%encode([], Element, Count, Result)->
%%  lists:concat()
%%  Result ++ [{Count, Element}];
%%encode([H | T], Element, Count, Result) when H == Element ->  encode(T, Element, Count + 1, Result);
%%encode([H | T], Element, Count, Result)->
%%  encode(T, H, 1, Result ++ [{Count, Element}]).
