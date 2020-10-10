class Util {
  static bool isConnectionError(e) {
    if (e.toString().contains("SocketException") ||
        e.toString().contains("HandshakeException")) {
      return true;
    } else {
      return false;
    }
  }
}
