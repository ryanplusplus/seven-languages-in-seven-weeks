-module(doctor).
-export([start/3, start_supervised/3]).

start(Function, as, Name) ->
  Pid = spawn(fun() -> loop(Function, Name) end),
  Pid ! new,
  Pid.

start_supervised(Function, as, Name) ->
  Pid = spawn(
    fun() ->
      loop(
        fun() -> start(Function, as, Name) end,
        list_to_atom(lists:flatten(io_lib:format("~p", [Name]) ++ ["doctor"])))
    end),
  Pid ! new,
  Pid.

loop(Function, Name) ->
  process_flag(trap_exit, true),
  receive
    new ->
      io:format("Creating and monitoring process as ~p.~n", [Name]),
      register(Name, spawn_link(Function)),
      loop(Function, Name);
    {'EXIT', From, Reason} ->
      io:format("The process ~p died with reason ~p.", [From, Reason]),
      io:format(" Restarting~n."),
      self() ! new,
      loop(Function, Name)
  end.
