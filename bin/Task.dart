class Task {
  String title;
  bool isDone;

  Task(this.title) : isDone = false;

  void markDone() {
    isDone = true;
  }
}