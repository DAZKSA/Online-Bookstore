
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Books</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body style="background: url('image/2.png') no-repeat center center/cover;">
    <header>
        <h1>All Books</h1>
        <nav>
            <a href="GhostView.jsp">Home</a>  
            <a href="GhostView2.jsp">List All Books</a>
            <a href="login.jsp">Add New Books</a>
            <a href="login.jsp">Manage Books</a>
            <a href="about.jsp">About Us</a>
        </nav>
    </header>
    <main>
        <h2>Search Results</h2>
        <!-- Search Form -->
        <form action="listBooks.jsp" method="get" class="search-form">
            <input type="text" name="query" placeholder="Search for books..." required>
            <button type="submit">Search</button>
        </form>
        <div class="search-results">
            <% 
                // Define book data (in a real application, this would be from a database)
                String[][] books = {
                    {"To Lord of the Flies", "William Golding", "image/7.png"},
                    {"To Kill a Mockingbird", "Harper Lee", "image/1.png"},
                    {"Animal Farm", "George Orwell", "image/8.png"},
                    {"1984", "George Orwell", "image/3.png"},
                    {"One Flew Over the Cuckoo", "Ken Kesey", "image/9.png"},
                    {"The Lord of the Rings", "J.R.R. Tolkien", "image/4.png"},
                    {"The Catcher in the Rye", "J.D. Salinger", "image/5.png"},
                    {"Atonement", "Ian McEwan", "image/10.png"},
                    {"A Passage to India", "E.M. Forster", "image/11.png"},
                    {"The Great Gatsby", "To F. Scott Fitzgerald", "image/6.png"}
                };

                String query = request.getParameter("query");
                boolean found = false;

                if (query != null && !query.trim().isEmpty()) {
                    for (String[] book : books) {
                        if (book[0].toLowerCase().contains(query.toLowerCase())) {
                            out.println("<div class='book'>");
                            out.println("<img src='" + book[2] + "' alt='" + book[0] + "'>");
                            out.println("<h3>" + book[0] + "</h3>");
                            out.println("<p>" + book[1] + "</p>");
                            out.println("</div>");
                            found = true;
                            break; // Display only the first matching book
                        }
                    }
                    if (!found) {
                        out.println("<p>No matching books found.</p>");
                    }
                } else {
                    out.println("<p>Please enter a search query.</p>");
                }
            %>
        </div>
    </main>
    <main>
        <h2>ALL Books</h2>              
        <div class="featured-books">
            <!-- All Books Display -->
            <div class="book">
                <img src="image/7.png" alt="Book 1">
                <h3>To Lord of the Flies</h3>
                <p>William Golding</p>
            </div>
            <div class="book">
                <img src="image/1.png" alt="Book 2">
                <h3>To Kill a Mockingbird</h3>
                <p>Harper Lee</p>
            </div>
            <div class="book">
                <img src="image/8.png" alt="Book 3">
                <h3>Animal Farm</h3>
                <p>George Orwell</p>
            </div>
            <div class="book">
                <img src="image/3.png" alt="Book 4">
                <h3>1984</h3>
                <p>George Orwell</p>
            </div>
            <div class="book">
                <img src="image/9.png" alt="Book 5">
                <h3>One Flew Over the Cuckoo</h3>
                <p>Ken Kesey</p>
            </div>
            <div class="book">
                <img src="image/4.png" alt="Book 6">
                <h3>The Lord of the Rings</h3>
                <p>J.R.R. Tolkien</p>
            </div>
            <div class="book">
                <img src="image/5.png" alt="Book 7">
                <h3>The Catcher in the Rye</h3>
                <p>J.D. Salinger</p>
            </div>
            <div class="book">
                <img src="image/10.png" alt="Book 8">
                <h3>Atonement</h3>
                <p>Ian McEwan</p>
            </div>
            <div class="book">
                <img src="image/6.png" alt="Book 9">
                <h3>The Great Gatsby</h3>
                <p>F. Scott Fitzgerald</p>
            </div>
            <div class="book">
                <img src="image/11.png" alt="Book 10">
                <h3>A Passage to India</h3>
                <p>E.M. Forster</p>
            </div>
        </div>
    </main>
    <footer>
        <p>&copy; Jazan Online Bookstore</p>
    </footer>
</body>
</html>
