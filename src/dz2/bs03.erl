%%%-------------------------------------------------------------------
%%% @author erlang
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Jan 2020 15:15
%%%-------------------------------------------------------------------
-module(bs03).
-author("erlang").

%% API
-export([split/2]).

%%BS03: Разделить строку на части, с явным указанием разделителя:
%%Пример:
%%1> BinText = <<”Col1-:-Col2-:-Col3-:-Col4-:-Col5”>>.
%%<<”Col1-:-Col2-:-Col3-:-Col4-:-Col5”>>
%%2> bs03:split(BinText, “-:-”).
%%[<<”Col1”>>, <<”Col2”>>, <<”Col3”>>, <<”Col4”>>, <<”Col5”>>]

split(Bin, Separator)->
  split(Bin, Separator, <<>>, []).
split(<<>>, _, Acc, Result)->[Acc | Result];
split(Bin, Separator, Acc, Result) when Separator =:= Acc-> split(Bin, Separator, <<>>, Result);
split(<<Char, String/binary>> = Bin, Separator, Acc, Result)->
  case forward_separator(Bin, Separator) of
    true -> split(String, Separator, <<Char>>, [Acc | Result]);
    false -> split(String, Separator, <<Acc/binary, Char>>, Result)
  end.
forward_separator(_, <<>>)->true;
forward_separator(<<Char1, Str1/binary>>, <<Char2, Separator/binary>>) ->
  case Char1 =:= Char2 of
    true -> forward_separator(Str1, Separator);
    false -> false
  end.