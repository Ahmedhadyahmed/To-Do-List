import 'Task.dart';
import 'dart:io';
void main() {
  List<Task> tasks =[];
  var cont = true;
  while (cont) {
    print("\n==== To-Do List ====");
    print("1. Adding Task.");
    print("2. View Tasks.");
    print("3. Marking task as done.");
    print("4. Exit.");

    stdout.write("Enter your choice: ");
    String? choice =stdin.readLineSync();
    switch (choice) {
      case '1':
        stdout.write("Enter Task title");
        String? title = stdin.readLineSync();
        if(title!=null && title.isNotEmpty){
          tasks.add(Task(title));
          print("Done.");
        }
        break;
      case '2':
        print("\n Your Tasks is:");
        for(var i = 0;i<tasks.length;i++){
          String status = tasks[i].isDone?"Done":"[Pending :/ ]";
          print("${i+1}.$status ${tasks[i].title}");
        }
        break;
      case '3':
      stdout.write("Enter nummber to mark it done");
      String? numInput = stdin.readLineSync();
      int? index = int.tryParse(numInput ?? "");
      if(index!=null && index>0 && index<=tasks.length){
        tasks[index-1].markDone();
        print("Marked");
      }else{
        print("Invalid");
      }
      break;
    case '4':
      print("Exiting");
      cont = false;
      break;
      default:
      print("Invalid Input");
    }
  }
}