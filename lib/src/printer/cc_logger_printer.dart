import 'package:cc_logger/src/cc_logger_event.dart';

abstract class CCLoggerPrinter {
  void init() {}
  void doLog(CCLoggerEvent event);
  void destroy() {}
}
