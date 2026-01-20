class Person {
  String name;
  String email;

  Person({required this.name, required this.email});
}

// ===================== Author =====================
class Author extends Person {
  static int _counter = 0;
  int id;

  Author({required String name, required String email})
      : id = ++_counter,
        super(name: name, email: email);
}

// ===================== Book =====================
class Book {
  String name;
  String isbn;
  int edition;
  Author author;

  Book({
    required this.name,
    required this.isbn,
    required this.edition,
    required this.author,
  });
}

// ===================== Customer =====================
class Customer extends Person {
  List<Book> bookList = [];

  Customer({required String name, required String email})
      : super(name: name, email: email);

  void addBook(Book book) {
    bookList.add(book);
  }

  void printInformation() {
    print("Customer Name: $name");
    print("Customer Email: $email");
    print("====================");

    for (int i = 0; i < bookList.length; i++) {
      Book book = bookList[i];

      print("Book Name: ${book.name}");
      print("ISBN: ${book.isbn}");
      print("Edition: ${book.edition}");
      print("Author Name: ${book.author.name}");
      print("Author ID: ${book.author.id}");
      print("--------------------");
    }
  }
}
