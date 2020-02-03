%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:41
%%%-------------------------------------------------------------------
-module(p05_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual([], p05:reverse([]))
.

second_test()->
  ?assertEqual([3,2,1], p05:reverse([1,2,3]))
.