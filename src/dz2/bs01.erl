%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Jan 2020 14:12
%%%-------------------------------------------------------------------
-module(bs01).
-author("erlang").

-include("header_for_macro.hrl").

%% API
-export([first_word/1]).

%%BS01: Извлечь из строки первое слово:
%%Пример:
%%1> BinText = <<”Some text”>>.
%%<<”Some Text”>>
%%2> bs01:first_word(BinText).
%%<<”Some”>>

first_word(Bin) ->
  first_word(ltrim(Bin), <<>>).
first_word(<<>>, Acc) -> Acc;
first_word(<<32, _/binary>>, Acc) -> Acc;
first_word(<<X, Bin/binary>>, Acc) ->
  first_word(Bin, <<Acc/binary, X>>).
ltrim(<<32, Bin/binary>>) -> ltrim(Bin);
ltrim(Bin) -> Bin.
