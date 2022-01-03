import 'package:aw_geez/util/enum/api_request_status.dart';
import 'package:flutter/material.dart';

import 'errors/error_widget.dart';

class BodyBuilder extends StatelessWidget {
  final APIRequestStatus apiRequestStatus;
  final Widget child;
  final Widget loadingWidget;
  final Function reload;

  const BodyBuilder({
    Key? key,
    required this.apiRequestStatus,
    required this.child,
    required this.loadingWidget,
    required this.reload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    switch (apiRequestStatus) {
      case APIRequestStatus.loading:
        return loadingWidget;
      case APIRequestStatus.unInitialized:
        return loadingWidget;
      case APIRequestStatus.connectionError:
        return MyErrorWidget(refreshCallBack: reload, isConnection: true);
      case APIRequestStatus.error:
        return MyErrorWidget(refreshCallBack: reload);
      case APIRequestStatus.loaded:
        return child;
      default:
        return loadingWidget;
    }
  }
}
