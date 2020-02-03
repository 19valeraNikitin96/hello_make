%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 13:23
%%%-------------------------------------------------------------------
-module(p08).
-author("erlang").

%% API
-export([compress/1]).

%%P08 (**) Удалить последовательно следующие дубликаты:
%%Пример:
%%1> p08:compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%%[a,b,c,a,d,e]
compress([H, H | T])->
  compress([H | T]);
compress([])->[];
compress([H | T])->
  [H | compress(T)].



%%compress([H1 | T1], [H2 | T2]) when H1 == H2 -> compress(T1, [H2 | T2]);
%%compress([H1 | T1], [H2 | T2])->
%%  compress(T1, [H1 | [H2 | T2]]).

