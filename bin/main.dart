
import 'exercies.dart';

void main() {
  // ===================== Authors =====================
  Author author1 = Author(name: "Author 1", email: "author1@mail.com");
  Author author2 = Author(name: "Author 2", email: "author2@mail.com");
  Author author3 = Author(name: "Author 3", email: "author3@mail.com");

  // Print id for each author (different)
  print(author1.id);
  print(author2.id);
  print(author3.id);

  // ===================== Books =====================
  Book book1 = Book(
    name: "Book 1",
    isbn: "ISBN001",
    edition: 1,
    author: author1,
  );

  Book book2 = Book(
    name: "Book 2",
    isbn: "ISBN002",
    edition: 2,
    author: author2,
  );

  Book book3 = Book(
    name: "Book 3",
    isbn: "ISBN003",
    edition: 1,
    author: author3,
  );

  // ===================== Customer =====================
  Customer customer1 = Customer(name: "Customer 1", email: "customer1@mail.com");

  // Add books using addBook()
  customer1.addBook(book1);
  customer1.addBook(book2);
  customer1.addBook(book3);

  // Print customer info + books + author info
  customer1.printInformation();
}
