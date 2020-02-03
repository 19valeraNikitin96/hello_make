%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:38
%%%-------------------------------------------------------------------
-module(p04_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual(0, p04:len([]))
.

second_test()->
  ?assertEqual(3, p04:len([22,33,44]))
.