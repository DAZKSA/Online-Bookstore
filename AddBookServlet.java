import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");

        BookDAO bookDAO = new BookDAO();
        Book newBook = new Book();
        newBook.setTitle(title);
        newBook.setAuthor(author);

        bookDAO.addBook(newBook);

        response.sendRedirect("manageBooks.jsp"); // Redirect to the manage books page after adding
    }
}
