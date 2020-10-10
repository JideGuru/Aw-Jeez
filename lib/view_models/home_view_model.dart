import 'package:aw_geez/services/rest_service.dart';
import 'package:aw_geez/util/enum/api_request_status.dart';
import 'package:aw_geez/util/util.dart';
import 'package:flutter/foundation.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    getCharacters();
  }

  RestService service = RestService();
  List characters = List();
  APIRequestStatus requestStatus = APIRequestStatus.loading;

  getCharacters() async {
    requestStatus = APIRequestStatus.loading;
    notifyListeners();
    try {
      Map body = await service.getCharacters();
      characters = body['results'];
      requestStatus = APIRequestStatus.loaded;
      notifyListeners();
    } catch (e) {
      if (Util.isConnectionError(e)) {
        requestStatus = APIRequestStatus.connectionError;
        notifyListeners();
      } else {
        requestStatus = APIRequestStatus.error;
        notifyListeners();
      }
    }
  }
}
