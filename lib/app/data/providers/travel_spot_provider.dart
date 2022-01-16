import 'package:get/get.dart';

import '../models/travel_spot_model.dart';

class TravelSpotProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return TravelSpot.fromJson(map);
      if (map is List)
        return map.map((item) => TravelSpot.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<TravelSpot?> getTravelSpot(int id) async {
    final response = await get('travelspot/$id');
    return response.body;
  }

  Future<Response<TravelSpot>> postTravelSpot(TravelSpot travelspot) async =>
      await post('travelspot', travelspot);
  Future<Response> deleteTravelSpot(int id) async =>
      await delete('travelspot/$id');
}
