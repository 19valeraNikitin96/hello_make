%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:50
%%%-------------------------------------------------------------------
-module(p09_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual([[1,1,1,1],[2,2,2],[3,3,3,3],[4]], p09:pack([1,1,1,1,2,2,2,3,3,3,3,4]))
.