%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jan 2020 12:52
%%%-------------------------------------------------------------------
-module(p06).
-author("erlang").

%% API
-export([is_palindrome/1]).

%%P06 (*) Определить, является ли список палиндромом:
%%Пример:
%%1> p06:is_palindrome([1,2,3,2,1]).
%%true
is_palindrome([])->undefined;
is_palindrome(List)->
  List == p05:reverse(List).
