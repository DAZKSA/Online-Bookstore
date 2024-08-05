import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {

    private Connection getConnection() throws SQLException {
        // Provide your database URL, username, and password here
        String url = "jdbc:sqlite:path_to_your_database.db";
        return DriverManager.getConnection(url);
    }

    public List<Book> getAllBooks() {
        List<Book> books = new ArrayList<>();
        String sql = "SELECT * FROM books";

        try (Connection conn = getConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getInt("id"));
                book.setTitle(rs.getString("title"));
                book.setAuthor(rs.getString("author"));
                books.add(book);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    public Book getBookById(int id) {
        Book book = null;
        String sql = "SELECT * FROM books WHERE id = ?";

        try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    book = new Book();
                    book.setId(rs.getInt("id"));
                    book.setTitle(rs.getString("title"));
                    book.setAuthor(rs.getString("author"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return book;
    }

    public void addBook(Book book) {
        String sql = "INSERT INTO books (title, author) VALUES (?, ?)";

        try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, book.getTitle());
            pstmt.setString(2, book.getAuthor());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateBook(Book book) {
        String sql = "UPDATE books SET title = ?, author = ? WHERE id = ?";

        try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, book.getTitle());
            pstmt.setString(2, book.getAuthor());
            pstmt.setInt(3, book.getId());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteBook(int id) {
        String sql = "DELETE FROM books WHERE id = ?";

        try (Connection conn = getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
