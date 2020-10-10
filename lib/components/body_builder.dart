import 'package:aw_geez/util/enum/api_request_status.dart';
import 'package:flutter/material.dart';

import 'errors/error_widget.dart';

class BodyBuilder extends StatelessWidget {
  final APIRequestStatus apiRequestStatus;
  final Widget child;
  final Widget loadingWidget;
  final Function reload;

  BodyBuilder(
      {Key key,
      @required this.apiRequestStatus,
      @required this.child,
      @required this.loadingWidget,
      @required this.reload})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    switch (apiRequestStatus) {
      case APIRequestStatus.loading:
        return loadingWidget;
        break;
      case APIRequestStatus.unInitialized:
        return loadingWidget;
        break;
      case APIRequestStatus.connectionError:
        return MyErrorWidget(refreshCallBack: reload, isConnection: true);
        break;
      case APIRequestStatus.error:
        return MyErrorWidget(refreshCallBack: reload);
        break;
      case APIRequestStatus.loaded:
        return child;
        break;
      default:
        return loadingWidget;
    }
  }
}
