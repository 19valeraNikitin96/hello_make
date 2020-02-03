%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 15:34
%%%-------------------------------------------------------------------
-module(p13).
-author("erlang").

%% API
-export([decode/1]).

%%P13 (**) Написать декодер для стандартного алгоритма RLE:
%%Пример:
%%1> p13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]).
%%[a,a,a,a,b,c,c,a,a,d,e,e,e,e]

decode([])->[];
decode([{0, _Item} | T])->
  decode(T);
decode([{Count, Item} | T])->
  [Item | decode([{Count - 1, Item} | T])];
decode(List)->
  decode(List).