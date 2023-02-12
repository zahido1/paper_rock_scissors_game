import "dart:math";
import "dart:io";


main(){
  List myElements = ['Paper', 'Rock', 'Scissors'];
  print("*******Welcome to the Paper-Rock-Scissors Game!*******");
  while(true){
    var randChooser = Random().nextInt(3);
    print("\nEnter your choice:\n1. Paper\n2. Rock\n3. Scissors");
    var userChoice = int.parse(stdin.readLineSync()!);
    print("Computer chose ${myElements[randChooser]}.");
    
    if(userChoice<1 || userChoice>3){
      print("Invalid input.");
    }
    else if(randChooser == userChoice-1){
      print("*******Tie!!!*******");
    }
    else if((randChooser == 0 && userChoice == 2) || (randChooser == 1 && userChoice == 3) || (randChooser == 2 && userChoice == 1)){
      print("*******You lost!!!*******");
    }
    else{
      print("*******You won!!!*******");
    }

    print("=============================================\nDo you want to play again?");
    String choice = stdin.readLineSync()!;
    if(choice.toUpperCase()=='Y'){continue;}
    else{break;}
  }
}
