%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:29
%%%-------------------------------------------------------------------
-module(p02_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual([1 | 2], p02:but_last([5,6,4,3,1,2]))
.

second_test()->
  ?assertEqual(?NULL, p02:but_last([]))
.

third_test()->
  ?assertEqual(?NULL, p02:but_last([2]))
.