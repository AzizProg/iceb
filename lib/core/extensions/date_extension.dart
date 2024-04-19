extension DateExtension on DateTime {
  int daysInMonth() {
    var currentDay = this;
    var nextMonth = DateTime(currentDay.year, currentDay.month + 1, 1);
    var lastDay = nextMonth.subtract(const Duration(days: 1));
    return lastDay.day;
  }
}
