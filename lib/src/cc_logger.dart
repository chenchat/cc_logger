import 'package:cc_logger/src/cc_logger_event.dart';
import 'package:cc_logger/src/cc_logger_level.dart';
import 'package:cc_logger/src/printer/cc_logger_comm_printer.dart';
import 'package:cc_logger/src/printer/cc_logger_printer.dart';

class CCLogger {
  final CCLoggerLevel level;
  CCLoggerPrinter printer;

  CCLogger({this.printer, this.level = CCLoggerLevel.verbose}) {
    if (printer == null) {
      printer = CCLoggerCommPrinter();
    }
  }

  void verbose(dynamic message) {
    log(CCLoggerLevel.verbose, message);
  }

  void debug(dynamic message) {
    log(CCLoggerLevel.debug, message);
  }

  void info(dynamic message) {
    log(CCLoggerLevel.info, message);
  }

  void warning(dynamic message) {
    log(CCLoggerLevel.warning, message);
  }

  void error(dynamic message) {
    log(CCLoggerLevel.error, message);
  }

  void fetal(dynamic message) {
    log(CCLoggerLevel.fetal, message);
  }

  void log(CCLoggerLevel level, dynamic message) {
    CCLoggerEvent event = CCLoggerEvent(level, message);
    printer.doLog(event);
  }
}
