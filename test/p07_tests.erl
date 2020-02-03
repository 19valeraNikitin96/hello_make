%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:46
%%%-------------------------------------------------------------------
-module(p07_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual([1,2,3,4], p07:flatten([1,[2,3,[4]]]))
.

second_test()->
  ?assertEqual([], p07:flatten([]))
.