class Node { 

  Node(this.value, [this.next]);

  int value;
  Node? next;

  @override
  String toString() {
    
    final result = StringBuffer();
    result.write(value);
    var nextNode = next;

    
    while (nextNode != null) {

      result.write(" -> ");
      result.write(nextNode.value);
      nextNode = nextNode.next;

    }
    return result.toString();
  }
}

class linkedList {

  Node? head;
  Node? tail;

  void addLast(int value) {
    final newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else if (head != null) {
      tail?.next = newNode;
      tail = newNode;
    }
  }

  void addFirst(int value) {
    // TODO: add a value to the beginning of the list
    final newNode = Node(value, head);
    head = newNode;
    if (tail == null) {
      tail = newNode;
    }
  }

  void removeFirst() {
    // TODO: remove the first value int the list
    if (head == null) return;
    head = head?.next;
    if (head == null) {
      tail = null;
    }
  }

  void removeLast() {
    // TODO: remove the last value in the list
    if (head == null) return;
    if (head == tail) {
      head = null;
      tail = null;
      return;
    }
    var current = head;
    while (current?.next != tail) {
      current = current?.next;
    }
    current?.next = null;
    tail = current;
  }

  @override
  String toString() {
    if (head == null) {
      return "List is empty";
    }
    return head.toString();
  }

}

void main() {

  final myList = linkedList();

  myList.addLast(42);
  myList.addLast(10);
  myList.addLast(3);

  print(myList);

  myList.addFirst(49);
  myList.addFirst(1);

  print(myList);

  myList.removeFirst();

  print(myList);

  myList.removeLast();

  print(myList);

}