%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 13:54
%%%-------------------------------------------------------------------
-module(p11).
-author("erlang").

%% API
-export([encode_modified/1]).

%%P11 (**) Закодировать список с использованием модифицированого алгоритма RLE:
%%Пример:
%%1> p11:encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%%[{4,a},b,{2,c},{2,a},d,{4,e}]

encode_modified(List)->
  lists:reverse(encode_modified(List, 0, [])).
encode_modified([], _Acc, Result)->Result;
encode_modified([H, H | T], Acc, Result)->
  encode_modified([H | T], Acc + 1, Result);
encode_modified([H1, _H2 | T], 0, Result)->encode_modified(T, 0, [H1 | Result]);
encode_modified([H | T], Acc, Result)->
  encode_modified(T, 0, [{Acc+1, H} | Result]).

%%TODO old variant
%%encode_modified([H | T])->
%%  p05:reverse(encode_modified([H | T], H, 1, [])).
%%encode_modified([], Element, Count, Result)->Result ++ [{Count, Element}];
%%encode_modified([H | T], Element, Count, Result) when H == Element ->
%%  encode_modified(T, Element, Count + 1, Result);
%%encode_modified([H | T], Element, Count, Result)->
%%  case Count == 1 of
%%                true -> encode_modified(T, H, 1, Result ++ [Element]) ;
%%                false -> encode_modified(T, H, 1, Result ++ [{Count, Element}])
%%  end.