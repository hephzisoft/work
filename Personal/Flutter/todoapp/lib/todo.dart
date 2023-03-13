class Todo {
  String note;
  int id;
  bool isCompleted;

  Todo(this.note, this.isCompleted, this.id);
  Todo.addTask(this.note, this.isCompleted, this.id){
    allTask.add(Todo(note, isCompleted, id));
  }

  static List<Todo> allTask = [
    Todo("I want to go toilet", false, 1),
    Todo("I want to fly a plane", false, 2),
  ];


}
