%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:52
%%%-------------------------------------------------------------------
-module(p10_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual([{4,1},{1,2},{2,3},{2,1},{1,4},{4,5}], p10:encode([1,1,1,1,2,3,3,1,1,4,5,5,5,5]))
.