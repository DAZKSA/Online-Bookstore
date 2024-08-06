<%-- 
202201223 
202101369
202001058
202207321
202209273
--%>

<%@ page import="java.util.List" %>
<%@ page import="com.example.dao.BookDAO" %>
<%@ page import="com.example.model.Book" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Books</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <h1>Manage Books</h1>
        <nav>
            <a href="index.jsp">Home</a>
            <a href="addBook.jsp">Add New Item</a>
            <a href="manageBooks.jsp">Manage Books</a>
            <a href="about.jsp">About Us</a>
        </nav>
    </header>
    <main>
        <h2>Book List</h2>
        <table>
            <thead>
                <tr>
                    <th>Book Title</th>
                    <th>Author</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Initialize the BookDAO to fetch the list of books
                    BookDAO bookDAO = new BookDAO();
                    List<Book> books = bookDAO.getAllBooks();

                    for (Book book : books) {
                        // Display each book in a table row
                %>
                    <tr>
                        <td><%= book.getTitle() %></td>
                        <td><%= book.getAuthor() %></td>
                        <td>
                            <a href="editBook.jsp?id=<%= book.getId() %>">Edit</a> |
                            <a href="deleteBook.jsp?id=<%= book.getId() %>" onclick="return confirm('Are you sure you want to delete this book?');">Delete</a>
                        </td>
                    </tr>
                <% 
                    }
                %>
            </tbody>
        </table>
    </main>
    <footer>
        <p>&copy; 2024 Online Bookstore</p>
    </footer>
</body>
</html>
