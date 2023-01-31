void main(List<String> args) {
  /// Switch

  const theday = Day.monday;
  switch (theday) {
    case Day.monday:
      print("Monday");
      break;
    case Day.tuesday:
      print("Tuesday");
      break;
    case Day.wednesday:
      print("Wednesday");
      break;
    case Day.thursday:
      print("Thursday");
      break;
    case Day.friday:
      print("Friday");
      break;
    case Day.saturday:
      print("Saturday");
      break;
    case Day.sunday:
      print("Sunday");
      break;
    default:
      print("Ori e ko pe ");
  }

  const audioState = AudioState.paused;
  switch (audioState) {
    case AudioState.playing:
      print("Your audiostate is playing ");
      break;
    case AudioState.stopped:
      print("Your audiostate is stopped ");
      break;
    case AudioState.paused:
      print("Your audiostate is paused ");
      break;
    
  }
}

/// Enum
enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

enum AudioState { playing, paused, stopped }
