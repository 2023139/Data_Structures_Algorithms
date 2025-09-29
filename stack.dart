class Stack {
  final List<int> _data = [];

  bool get isEmpty => _data.isEmpty;

  void push(int value) {
    _data.add(value); 
  }

  int? peek() {
    if (isEmpty) return null;
    return _data.last;  
  }

  int? pop() {
    if (isEmpty) return null;
    return _data.removeLast();
  }

  @override
  String toString() {
    final result = StringBuffer();
    result.writeln("Top");
    result.writeln("---");
    for (int i = _data.length - 1; i >= 0; i--) {
      result.writeln(_data[i]);
    }
    result.writeln("---");
    return result.toString();
  }
}

void main() {
  final myStack = Stack();
  myStack.push(42);
  myStack.push(3);
  myStack.push(10);
  myStack.push(23);
  myStack.push(19);

  print(myStack);

  print("Peek: ${myStack.peek()}");
  print("Pop: ${myStack.pop()}");
  print("Pop: ${myStack.pop()}");
  print("Pop: ${myStack.pop()}");
  print("Pop: ${myStack.pop()}");
  print("Pop: ${myStack.pop()}");
  print("Empty? ${myStack.isEmpty}");
}
