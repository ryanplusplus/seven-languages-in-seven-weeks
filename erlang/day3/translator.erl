-module(translator).
-export([start/0, translate/2]).

start() ->
  receive
    {From, "casa"} ->
      From ! "house",
      start();

    {From, "blanca"} ->
      From ! "white",
      start();

    {From, What} ->
      From ! "No entiendo",
      exit({no_entiendo, What}),
  end.

translate(To, Word) ->
    To ! {self(), Word},
    receive
        Translation -> Translation
    end.
