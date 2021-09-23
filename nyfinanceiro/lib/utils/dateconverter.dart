import 'package:intl/intl.dart';


// Convert from string format dd/MM/yyyy
// to datetime format yyyy-MM-dd hh:mm:ss
DateTime StringToDateTimeFormat(String? datetime) {
  List<String> date = datetime!.split('/');
  return DateTime.parse("${date[2]}-${date[1]}-${date[0]} 00:00:00").toLocal();
}

// Convert from datetime yyyy-MM-dd hh:mm:ss
// to string format dd/MM/yyyy
String DateTimeToString(DateTime datetime) {
  return DateFormat('dd/MM/yyyy').format(datetime.toLocal());
}