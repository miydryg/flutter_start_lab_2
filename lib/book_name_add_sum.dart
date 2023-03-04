class LambdaFunctionsClousere {
  var addSum = ({int a = 5, int b = 5}) => a + b;

  book(bookName) {
    return (bookAuthor) =>
        'Назва книги: $bookName, автор книги: $bookAuthor'; //lyambada
  }
}
