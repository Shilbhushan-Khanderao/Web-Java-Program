package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.DbConnection;
import dao.BookDao;
import pojo.Book;

public class BookDaoImpl implements BookDao{

	@Override
	public Book search(String bookname) {
		Book book = null;
		
		try(Connection con = DbConnection.getConnection()) {
			
			PreparedStatement pst = con.prepareStatement("Select * from book where bookname = ?");
			
			pst.setString(1, bookname);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.isBeforeFirst()) {
				rs.next();
				
				book = new Book();
				book.setBookid(rs.getInt("bookid"));
				book.setBookname(rs.getString("bookname"));
				book.setAuthor(rs.getString("author"));
				book.setPrice(rs.getFloat("price"));
			}
			return book;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
