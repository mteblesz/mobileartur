part of 'rest_repository.dart';

extension SquadRequests on RestRepository {
  Future<void> addMember({required int playerId}) async {
    final response = await HttpSender.post(
      Uri.parse(RestConfig.addMemberUrl(playerId)),
      headers: getAuthHeaders(),
    );

    if (response.statusCode != 204) {
      throw AddMemberFailure(response.statusCode, response.body);
    }
  }

  Future<void> removeMember({
    required int playerId,
  }) async {
    final response = await HttpSender.delete(
        Uri.parse(RestConfig.removeMemberUrl(playerId)),
        headers: getAuthHeaders());

    if (response.statusCode != 204) {
      throw RemoveMemberFailure(response.statusCode, response.body);
    }
  }

  Future<void> submitSquad({
    required int squadId,
  }) async {
    final response = await HttpSender.patch(
      Uri.parse(RestConfig.submitSquadUrl(squadId)),
      headers: getAuthHeaders(),
    );

    if (response.statusCode != 204) {
      throw SubmitSquadFailure(response.statusCode, response.body);
    }
  }
}
