%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:35
%%%-------------------------------------------------------------------
-module(p03_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual(30, p03:element_at([10,20,30,40,50], 3))
.

second_test()->
  ?assertEqual(?NULL, p03:element_at([10,20,30,40,50], 111))
.

third_test()->
  ?assertEqual(?NULL, p03:element_at([10,20,30,40,50], -3))
.