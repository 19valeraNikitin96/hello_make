%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 12:27
%%%-------------------------------------------------------------------
-module(p03).
-author("erlang").

%% API
-export([element_at/2]).

%%1> p03:element_at([a,b,c,d,e,f], 4).
%%d
%%2> p03:element_at([a,b,c,d,e,f], 10).
%%undefined

element_at([], _)->undefined;
element_at(_, Index) when Index < 1 -> undefined;
element_at([H | _], 1)->H;
element_at([_ | T], Index)->
  element_at(T, Index - 1).