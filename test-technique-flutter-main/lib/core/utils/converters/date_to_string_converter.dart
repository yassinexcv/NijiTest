class DateToStringConverter {
  static String convert(DateTime date) {
    final splittedDate = date.toString().split(' ');

    return splittedDate.first;
  }
}
