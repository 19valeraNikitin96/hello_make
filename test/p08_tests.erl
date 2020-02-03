%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:48
%%%-------------------------------------------------------------------
-module(p08_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual([1,2,3], p08:compress([1,1,1,2,2,3,3,3,3]))
.

second_test()->
  ?assertEqual([], p08:compress([]))
.