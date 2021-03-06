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
-include("header_for_macro.hrl").

%% API
-export([last/1]).

%%> p01:last([a,b,c,d,e,f]).
%%f
last([])->?NULL;
last([H | []])->H;
last([_ | T])->
  last(T).
