<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
        <link rel="stylesheet" href="css/styles.css">
     <body style="background: url('image/2.png') no-repeat center center/cover;">
    <header>
        <h1>Add New Book</h1>
        <nav>
            <a href="index.jsp">Home</a>
            <a href="manageBooks.jsp">Manage Books</a>
            <a href="about.jsp">About Us</a>
        </nav>
    </header>

    <main>
        <form action="addBookServlet" method="post">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>

            <label for="author">Author:</label>
            <input type="text" id="author" name="author" required>

            <button type="submit">Add Book</button>
        </form>
    </main>
    <footer>
        <p>&copy; Jazan Online Bookstore</p>
    </footer>
</body>
</html>
