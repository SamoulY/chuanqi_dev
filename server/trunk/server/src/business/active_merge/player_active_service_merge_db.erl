%%%-------------------------------------------------------------------
%%% @author zhengsiying
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. 十二月 2015 下午4:25
%%%-------------------------------------------------------------------
-module(player_active_service_merge_db).

-include("common.hrl").
-include("cache.hrl").

%% API
-export([
	select_all/1,
	select_row/1,
	insert/1
]).

%% ====================================================================
%% API functions
%% ====================================================================
select_all({'_', ActiveServiceId}) ->
	case db:select_all(player_active_service_merge, record_info(fields, db_player_active_service_merge), [{active_service_merge_id, ActiveServiceId}]) of
		[] ->
			[];
		List ->
			[list_to_tuple([db_player_active_service_merge | X]) || X <- List]
	end.


select_row({PlayerId, ActiveServiceId}) ->
	case db:select_row(player_active_service_merge, record_info(fields, db_player_active_service_merge), [{player_id, PlayerId}, {active_service_merge_id, ActiveServiceId}]) of
		[] ->
			null;
		List ->
			list_to_tuple([db_player_active_service_merge | List])
	end.

insert(PlayerInstance) ->
	db:insert(player_active_service_merge, util_tuple:to_tuple_list(PlayerInstance)).

