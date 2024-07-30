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
        <form action="searchBooks.jsp" method="get">
            <input type="text" name="query" placeholder="Search by title, author " required>
        </form>
        
        <div class="search-results">
            <% 
                String query = request.getParameter("query");
                if (query != null && !query.trim().isEmpty()) {
                    // Display static book details
                    out.println("<div class='book'>");
                    out.println("<img src='https://cdn.discordapp.com/attachments/1244752611442167979/1267672612939763744/2657.png?ex=66a9a39f&is=66a8521f&hm=b6c351acaa13061a967a25e682c1a2a0c61333922c0d3f12d8e093bb9c6fcd6d&' alt='To Kill a Mockingbird'>");
                    out.println("<h3>To Kill a Mockingbird</h3>");
                    out.println("<p>Harper Lee</p>");
                    out.println("</div>");
                    
                    out.println("<div class='book'>");
                    out.println("<img src='https://cdn.discordapp.com/attachments/1244752611442167979/1267673296489680979/5470.png?ex=66a9a442&is=66a852c2&hm=3142a37b972fe4ca29ea4448155c15a71d0a1fdc7da73163843b0da46da838bd&' alt='1984'>");
                    out.println("<h3>1984</h3>");
                    out.println("<p>George Orwell</p>");
                    out.println("</div>");
                    
                    out.println("<div class='book'>");
                    out.println("<img src='https://cdn.discordapp.com/attachments/1244752611442167979/1267673424965144716/33.png?ex=66a9a460&is=66a852e0&hm=33498d296a834b057ce54fdca80680394e49248161af3160235a00203e83789c&' alt='The Lord of the Rings'>");
                    out.println("<h3>The Lord of the Rings</h3>");
                    out.println("<p>J.R.R. Tolkien</p>");
                    out.println("</div>");
                    
                    out.println("<div class='book'>");
                    out.println("<img src='https://cdn.discordapp.com/attachments/1244752611442167979/1267673605232263271/5107.png?ex=66a9a48b&is=66a8530b&hm=5a8240dd0b9d0d754ae67cfb41d5f9846047a2d5abdcdc6c7c0b0e38c6bf8d76&' alt='The Catcher in the Rye'>");
                    out.println("<h3>The Catcher in the Rye</h3>");
                    out.println("<p>J.D. Salinger</p>");
                    out.println("</div>");
                    
                    out.println("<div class='book'>");
                    out.println("<img src='https://cdn.discordapp.com/attachments/1244752611442167979/1267673726506373173/4671.png?ex=66a9a4a8&is=66a85328&hm=f54afad80ce9dd7beabc6d05d40ff56d921cb18b837b82c0e69762f405dbbc8b&' alt='The Great Gatsby'>");
                    out.println("<h3>The Great Gatsby</h3>");
                    out.println("<p>F. Scott Fitzgerald</p>");
                    out.println("</div>");
                } else {
                    out.println("<p>No search query provided.</p>");
                }
            %>
        </div>
    </main>
  <main>
        <h2>ALL Books 📚</h2>              
        <div class="featured-books">
            <!-- ALL Books كل الكتب هنا -->
            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267672612939763744/2657.png?ex=66a9a39f&is=66a8521f&hm=b6c351acaa13061a967a25e682c1a2a0c61333922c0d3f12d8e093bb9c6fcd6d&" alt="Book 1">
                <h3>To Kill a Mockingbird</h3>
                <p>Harper Lee</p>
            </div>
            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267673296489680979/5470.png?ex=66a9a442&is=66a852c2&hm=3142a37b972fe4ca29ea4448155c15a71d0a1fdc7da73163843b0da46da838bd&" alt="Book 2">
                <h3>1984</h3>
                <p>George Orwell</p>
            </div>
            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267673424965144716/33.png?ex=66a9a460&is=66a852e0&hm=33498d296a834b057ce54fdca80680394e49248161af3160235a00203e83789c&" alt="Book 1">
                <h3>The Lord of the Rings</h3>
                <p>J.R.R. Tolkien</p>
            </div>
              <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267673605232263271/5107.png?ex=66a9a48b&is=66a8530b&hm=5a8240dd0b9d0d754ae67cfb41d5f9846047a2d5abdcdc6c7c0b0e38c6bf8d76&" alt="Book 1">
                <h3>The Catcher in the Rye</h3>
                <p>J.D. Salinger</p>
            </div>
            <div class="book">
                <img src="https://cdn.discordapp.com/attachments/1244752611442167979/1267673726506373173/4671.png?ex=66a9a4a8&is=66a85328&hm=f54afad80ce9dd7beabc6d05d40ff56d921cb18b837b82c0e69762f405dbbc8b&" alt="Book 1">
                <h3>The Great Gatsby</h3>
                <p>F. Scott Fitzgerald</p>
            </div>
        </div>
    </main>
    <footer>
        <p>&copy; Jazan Online Bookstore</p>
    </footer>
</