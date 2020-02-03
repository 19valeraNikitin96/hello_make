%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Feb 2020 18:44
%%%-------------------------------------------------------------------
-module(p06_tests).
-author("erlang").
-include("header_for_macro.hrl").
-include_lib("eunit/include/eunit.hrl").

first_test()->
  ?assertEqual(true, p06:is_palindrome([1,2,1]))
.

second_test()->
  ?assertEqual(false, p06:is_palindrome([1,2,3]))
.

third_test()->
  ?assertEqual(?NULL, p06:is_palindrome([]))
.

