import 'package:universal_io/io.dart';
import 'package:flutter/foundation.dart';

class RestConfig {
  static String get baseUrl {
    if (Platform.isAndroid) {
      return 'https://10.0.2.2:7700';
    } else if (Platform.isIOS) {
      throw UnimplementedError();
    } else if (kIsWeb) {
      return 'https://localhost:7700';
    }
    return 'https://localhost:7700';
  }

  static String get apiUrl => '$baseUrl/api';

  static String createRoomUrl() => '$apiUrl/matchup/room';
  static String joinRoomUrl(int roomId) => '$apiUrl/matchup/join/$roomId';
  static String setNicknameUrl() => '$apiUrl/matchup/nick';
  static String removePlayerUrl(int playerId, int roomId) =>
      '$apiUrl/matchup/remove/$playerId/from/$roomId';
  static String startGameUrl() => '$apiUrl/matchup/start';

  static String getRoomByIdUrl(int roomId) => '$apiUrl/info/room/$roomId';
  static String getPlayerByIdUrl(int playerId) =>
      '$apiUrl/info/player/$playerId';
  static String getRoleByPlayerIdUrl(int playerId) =>
      '$apiUrl/info/player/role/$playerId';
  static String getGoodPlayersUrl(int roomId) =>
      '$apiUrl/info/goodplayers/$roomId';
  static String getEvilPlayersUrl(int roomId) =>
      '$apiUrl/info/evilplayers/$roomId';
  static String getEvilPlayersForEvilUrl(int roomId) =>
      '$apiUrl/info/evilknows/$roomId';
  static String getEvilPlayersForMerlinUrl(int roomId) =>
      '$apiUrl/info/merlinknows/$roomId';
  static String getMerlinAndMorganaUrl(int roomId) =>
      '$apiUrl/info/percivalknowns/$roomId';
  static String getQuestBySquadIdUrl(int squadId) =>
      '$apiUrl/info/quest/$squadId';

  static String leaveGameUrl(int playerId) => '$apiUrl/matchup/leave/$playerId';
  static String getPlayersUrl(int roomId) => '$apiUrl/info/players/$roomId';

  static String addMemberUrl(int playerId) => '$apiUrl/squad/add/$playerId';
  static String removeMemberUrl(int playerId) =>
      '$apiUrl/squad/remove/$playerId';
  static String submitSquadUrl(int squadId) => '$apiUrl/squad/submit/$squadId';

  static String voteSquadUrl() => '$apiUrl/vote/squad';
  static String voteQuestUrl() => '$apiUrl/vote/quest';

  static String killPlayerUrl() => '$apiUrl/kill';
}
