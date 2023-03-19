% vim: sw=4 ts=4 et ft=erlang
% Nitrogen Web Framework for Erlang
% Copyright (c) 2008-2010 Rusty Klophaus
% See MIT-LICENSE for licensing information.

-module (nprocreg_registry_handler).
-behaviour (process_registry_handler).
-include_lib ("wf.hrl").
-export ([
    init/2, 
    finish/2,
    get_pid/3,
    get_pid/4
]).

init(_Config, _State) -> 
    {ok, no_state}.

finish(_Config, _State) ->
    {ok, no_state}.

get_pid(Key, _Config, State) ->
    Pid = nprocreg:get_pid(Key),
    {ok, Pid, State}.

get_pid(Key, Function, _Config, State) ->
    Pid = nprocreg:get_pid(Key, Function),
    {ok, Pid, State}.
