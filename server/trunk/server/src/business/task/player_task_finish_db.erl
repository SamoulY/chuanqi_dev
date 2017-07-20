%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. 十一月 2015 14:11
%%%-------------------------------------------------------------------
-module(player_task_finish_db).

-include("common.hrl").
-include("cache.hrl").

%% API
-export([
	select_row/1,
	select_all/1,
	insert/1,
	update/2,
	delete/1
]).

%% ====================================================================
%% API functions
%% ====================================================================

select_row({TaskId, PlayerId}) ->
	case db:select_row(player_task_finish, record_info(fields, db_player_task_finish), [{taskid_id, TaskId}, {player_id, PlayerId}]) of
		[] ->
			null;
		List ->
			list_to_tuple([db_player_task_finish | List])
	end.

select_all({'_', PlayerId}) ->
	case db:select_all(player_task_finish, record_info(fields, db_player_task_finish), [{player_id, PlayerId}]) of
		[] ->
			[];
		List ->
			[list_to_tuple([db_player_task_finish | X]) || X <- List]
	end.

insert(TaskInfo) ->
	db:insert(player_task_finish, util_tuple:to_tuple_list(TaskInfo)).

update({TaskId, PlayerId}, TaskInfo) ->
	db:update(player_task_finish, util_tuple:to_tuple_list(TaskInfo), [{taskid_id, TaskId}, {player_id, PlayerId}]).

delete({TaskId, PlayerId}) ->
	db:delete(player_task_finish, [{taskid_id, TaskId}, {player_id, PlayerId}]).
%% API

