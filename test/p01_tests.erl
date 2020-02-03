%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 17:58
%%%-------------------------------------------------------------------
-module(p01_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

simple_test() ->
  ?assert(true).

first_test()->
  [
    ?assert(p01:last([1,2,3,4,5])=:= 5)
    ]
%%  ?assertEqual(5, p01:last([1,2,3,4,5]))]
  .

second_test()->
  Res = p01:last([1,4,3,2,11]),
  ?assertEqual(11, Res)
.

third_test()->
  ?assertEqual(?NULL, p01:last([]))
.

fourth_test()->
  ?assertEqual(6, p01:last([6]))
.
