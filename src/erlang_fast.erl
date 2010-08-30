-module(erlang_fast).

-include("erlang_fast_context.hrl").

-export
([
      create_context/2
      ,decode/2
]).

create_context(TemplatesFileName, Logger) ->
   {Dicts, Templates} = erlang_fast_xml:parse(TemplatesFileName),
   #fast_context{dicts = Dicts, templates = Templates, logger = Logger}.

decode(_Data, _Context) ->
   ok.
