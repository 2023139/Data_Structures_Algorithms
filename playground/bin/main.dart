import 'package:playground/bunny.dart';

void main() {
  // oneToTenRecursion();
  // oneToTenIteration();
  // print(bunnyFamily.name);
  // print(bunnyFamily.babies[0].name);
  // print(bunnyFamily.babies[0].babies[0].name);
  // print(bunnyFamily.babies[0].babies[1].name);
  // print(bunnyFamily.babies[1].name);
  // print(bunnyFamily.babies[1].babies[0].name);
  // print(bunnyFamily.babies[1].babies[1].name);
  // print(bunnyFamily.babies[1].babies[2].name);
  // print(bunnyFamily.babies[2].name);
  // print(bunnyFamily.babies[2].babies[0].name);
  printBunnyNames(bunnyFamily);
}

void oneToTenRecursion([int current = 1]) {

  if (current > 10) {
    return;
  }

  print(current);
  oneToTenRecursion(current + 1);
}

void oneToTenIteration() {
  
  int count = 1;

  while (count < 11) {

    print(count);
    count ++;
  }
}