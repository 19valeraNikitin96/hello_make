%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Jan 2020 14:40
%%%-------------------------------------------------------------------
-module(bs02).
-author("erlang").

%% API
-export([words/1]).

%%BS02: Разделить строку на слова:
%%Пример:
%%1> BinText = <<”Text with four words”>>.
%%<<”Text with four words”>>
%%2> bs02:words(BinText).
%%[<<”Text”>>, <<”with”>>, <<”four”>>, <<”words”>>]

words(Bin)->
  lists:reverse(words(ltrim(Bin), <<>>, [])).
words(<<>>, Acc, Result)->[Acc|Result];
words(<<" ", Rest/binary>>, Acc, Result)->words(Rest, <<>>, [Acc|Result]);
words(<<Char, Bin/binary>>, Acc, Result)->
  words(Bin, <<Acc/binary, Char>>, Result).

ltrim(<<" ", Rest/binary>>)->ltrim(Rest);
ltrim(<<B/binary>>)->B.
