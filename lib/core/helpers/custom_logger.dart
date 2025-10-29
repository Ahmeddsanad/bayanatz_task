import 'package:logger/logger.dart';

class Log {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      stackTraceBeginIndex: 1,
      // Number of stack trace methods to display
      errorMethodCount: 8,
      // Number of stack trace methods for errors
      lineLength: 120,
      // Width of the output
      colors: true,
      // Colorful log output
      printEmojis: true, // Print an emoji for each log level
    ),
  );

  static void d(String message) => _logger.d(message); // Debug log
  static void e(String message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.e(message, error: error, stackTrace: stackTrace); // Error log
  static void i(String message) => _logger.i(message); // Info log
  static void w(String message) => _logger.w(message); // Warning log
  static void v(String message) => _logger.v(message); // Verbose log
}