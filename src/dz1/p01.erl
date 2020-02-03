%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 12:10
%%%-------------------------------------------------------------------
-module(p01).
-author("erlang").

%% API
-export([last/1]).

%%> p01:last([a,b,c,d,e,f]).
%%f
last([])->undefined;
last([H | []])->H;
last([_ | T])->
  last(T).
