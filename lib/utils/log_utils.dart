import 'package:logger/logger.dart';

Logger logesh = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 8,
    lineLength: 50,
    colors: true,
    printEmojis: true,
dateTimeFormat: DateTimeFormat.dateAndTime,
  ),
);