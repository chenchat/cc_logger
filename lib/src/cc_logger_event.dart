import 'package:cc_logger/src/cc_logger_level.dart';

class CCLoggerEvent {
  final CCLoggerLevel level;
  final dynamic message;

  CCLoggerEvent(this.level, this.message);
}
