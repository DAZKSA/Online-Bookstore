<%-- 
 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <body>
    <header>
            <link rel="stylesheet" href="css/styles.css">
        <h1>All Books</h1>
        <nav>
            <a href="index.jsp">Home</a>
            <a href="addBook.jsp">Add New Item</a>
            <a href="manageBooks.jsp">Manage Books</a>
            <a href="about.jsp">About Us</a>
        </nav>
    </header>
    <main>
        <h2>Search Results 🔎</h2>
        <!-- Search Form -->
        <form action="listBooks.jsp" method="get" class="search-form">
            <input type="text" name="query" placeholder="Search for books..." required>
            <button type="submit">Search</button>
        </form>
        <div class="search-results">
            <% 
                // Define book data (in a real application, this would be from a database)
                String[][] books = {
                    {"To Lord of the Flies", "William Golding", "https://cdn.discordapp.com/attachments/1244752611442167979/1267674082728607867/7624.png?ex=66a9a4fd&is=66a8537d&hm=2fddd933cd0fc45a03d6c62e076c901e23b52683e3509edc21dc318efa9e707b&"},
                    {"To Kill a Mockingbird", "Harper Lee", "https://cdn.discordapp.com/attachments/1244752611442167979/1267672612939763744/2657.png?ex=66a9a39f&is=66a8521f&hm=b6c351acaa13061a967a25e682c1a2a0c61333922c0d3f12d8e093bb9c6fcd6d&"},
                    {"Animal Farm", "George Orwell", "https://cdn.discordapp.com/attachments/1244752611442167979/1267674234365411440/7613.png?ex=66a9a521&is=66a853a1&hm=5d5aab665f8a7961cf618eedff03439ab11382435de9c2218fe7ae1e1cfcc4d3&"},
                    {"1984", "George Orwell", "https://cdn.discordapp.com/attachments/1244752611442167979/1267673296489680979/5470.png?ex=66a9a442&is=66a852c2&hm=3142a37b972fe4ca29ea4448155c15a71d0a1fdc7da73163843b0da46da838bd&"},
                    {"One Flew Over the Cuckoo", "Ken Kesey", "https://cdn.discordapp.com/attachments/1244752611442167979/1267674386987745291/332613.png?ex=66a9a546&is=66a853c6&hm=4dd5365bd8f84093bf67d1ff3b01f3e767b267d8c2f515ead402c3ab15d9ec5c&"},
                    {"The Lord of the Rings", "J.R.R. Tolkien", "https://cdn.discordapp.com/attachments/1244752611442167979/1267673424965144716/33.png?ex=66a9a460&is=66a852e0&hm=33498d296a834b057ce54fdca80680394e49248161af3160235a00203e83789c&"},
                    {"The Catcher in the Rye", "J.D. Salinger", "https://cdn.discordapp.com/attachments/1244752611442167979/1267673605232263271/5107.png?ex=66a9a48b&is=66a8530b&hm=5a8240dd0b9d0d754ae67cfb41d5f9846047a2d5abdcdc6c7c0b0e38c6bf8d76&"},
                    {"Atonement", "Ian McEwan", "https://cdn.discordapp.com/attachments/1244752611442167979/1267674578596139148/6867.png?ex=66a9a573&is=66a853f3&hm=ef187203358e9ee774a44d5b4585ea06e6cf541e6a6e293ad1efc98c78c29dd3&"},
                    {"A Passage to India", "E.M. Forster", "https://cdn.discordapp.com/attachments/1244752611442167979/1267674749446783046/45195.png?ex=66a9a59c&is=66a8541c&hm=ca9a3f5ce3600a805b4abcd2b8f260371e917b649837a8d8bf12944bd8d06490&"}
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
        <h2>ALL Books 📚</h2>              
       <div class="featured-books">
            <!--    </main>
 ALL Books كل الكتب هنا -->
            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267674082728607867/7624.png?ex=66a9a4fd&is=66a8537d&hm=2fddd933cd0fc45a03d6c62e076c901e23b52683e3509edc21dc318efa9e707b&" alt="Book 1">
                <h3>To Lord of the Flies</h3>
                <p>To William Golding</p>
            </div>
            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267672612939763744/2657.png?ex=66a9a39f&is=66a8521f&hm=b6c351acaa13061a967a25e682c1a2a0c61333922c0d3f12d8e093bb9c6fcd6d&" alt="Book 1">
                <h3>To Kill a Mockingbird</h3>
                <p>To Harper Lee</p>
            </div>
  <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267674234365411440/7613.png?ex=66a9a521&is=66a853a1&hm=5d5aab665f8a7961cf618eedff03439ab11382435de9c2218fe7ae1e1cfcc4d3&" alt="Book 2">
                <h3>Animal Farm</h3>
                <p>To George Orwell</p>
            </div>

            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267673296489680979/5470.png?ex=66a9a442&is=66a852c2&hm=3142a37b972fe4ca29ea4448155c15a71d0a1fdc7da73163843b0da46da838bd&" alt="Book 2">
                <h3>1984</h3>
                <p>To George Orwell</p>
            </div>
  <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267674386987745291/332613.png?ex=66a9a546&is=66a853c6&hm=4dd5365bd8f84093bf67d1ff3b01f3e767b267d8c2f515ead402c3ab15d9ec5c&" alt="Book 1">
                <h3>One Flew Over the Cuckoo</h3>
                <p>To Ken Kesey</p>
            </div>
            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267673424965144716/33.png?ex=66a9a460&is=66a852e0&hm=33498d296a834b057ce54fdca80680394e49248161af3160235a00203e83789c&" alt="Book 1">
                <h3>The Lord of the Rings</h3>
                <p>To J.R.R. Tolkien</p>
            </div>
              <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267673605232263271/5107.png?ex=66a9a48b&is=66a8530b&hm=5a8240dd0b9d0d754ae67cfb41d5f9846047a2d5abdcdc6c7c0b0e38c6bf8d76&" alt="Book 1">
                <h3>The Catcher in the Rye</h3>
                <p>To J.D. Salinger</p>
            </div>
  <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267674578596139148/6867.png?ex=66a9a573&is=66a853f3&hm=ef187203358e9ee774a44d5b4585ea06e6cf541e6a6e293ad1efc98c78c29dd3&" alt="Book 1">
                <h3>Atonement</h3>
                <p>To Ian McEwan</p>
            </div>
            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267673726506373173/4671.png?ex=66a9a4a8&is=66a85328&hm=f54afad80ce9dd7beabc6d05d40ff56d921cb18b837b82c0e69762f405dbbc8b&" alt="Book 1">
                <h3>The Great Gatsby</h3>
                <p>To F. Scott Fitzgerald</p>
            </div>
<div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267674749446783046/45195.png?ex=66a9a59c&is=66a8541c&hm=ca9a3f5ce3600a805b4abcd2b8f260371e917b649837a8d8bf12944bd8d06490&" alt="Book 1">
                <h3>A Passage to India</h3>
                <p>To E.M. Forster</p>
            </div>
        </div>
    </main>
    <footer>
        <p>&copy; Jazan Online Bookstore</p>
    </footer>
</
