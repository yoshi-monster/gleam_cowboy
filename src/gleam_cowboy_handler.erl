-module(gleam_cowboy_handler).

-export([init/2]).

init(Req0, Service) ->
    Handler = gleam@http@cowboy:service_to_handler(Service),
    Req = Handler(Req0),
    {ok, Req, Service}.
