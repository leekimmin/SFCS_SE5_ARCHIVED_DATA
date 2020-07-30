package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ProductDao;
import jdbc.JDBCConnection;
import model.Category;
import model.Product;
import model.Stall;
import service.CategoryService;
import service.StallService;
import service.impl.CategoryServiceImpl;
import service.impl.StallServiceImpl;

public class ProductDaoImpl extends JDBCConnection implements ProductDao {
	CategoryService categortService = new CategoryServiceImpl();
	StallService stallService = new StallServiceImpl();

	@Override
	public void insert(Product product) {
		String sql = "INSERT INTO products(name, price, quantity, discount, category_id, stall_id, description, image) VALUES (?,?,?,?,?,?,?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setInt(2, product.getPrice());
			ps.setInt(3, product.getQuantity());
			ps.setInt(4, product.getDiscount());
			ps.setInt(5, product.getCategory().getId());
			ps.setInt(6, product.getStall().getId()); 
			ps.setString(7, product.getDes());
			ps.setString(8, product.getImage());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Product product) {
		String sql = "UPDATE products SET name = ? , price = ?, quantity = ?, discount = ?, category_id = ?, stall_id = ?, description = ?, image = ? "
				+ "WHERE product_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setInt(2, product.getPrice());
			ps.setInt(3, product.getQuantity());
			ps.setInt(4, product.getDiscount());
			ps.setInt(5, product.getCategory().getId());
			ps.setInt(6, product.getStall().getId()); 
			ps.setString(7, product.getDes());
			ps.setString(8, product.getImage());
			ps.setInt(9, product.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM products WHERE product_id=?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Product get(int id) {
		String sql = "SELECT p.product_id, p.name, p.price, p.quantity, p.discount, p.description, p.image, c.category_id, c.name AS cate_name, s.stall_id, s.name AS stall_name "
				+ "FROM products p, categories c, stalls s "
				+ "WHERE p.category_id = c.category_id AND p.stall_id = s.stall_id AND p.product_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("category_id"));
				Stall stall = stallService.get(rs.getInt("stall_id"));
				
				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setDiscount(rs.getInt("discount"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));
				product.setCategory(category);
				product.setStall(stall); 

				return product;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Product> getAll() {

		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT p.product_id, p.name, p.price, p.quantity, p.discount, p.description, p.image, c.category_id, c.name AS cate_name, s.stall_id, s.name AS stall_name "
				+ "FROM products p, categories c, stalls s " 
				+ "WHERE p.category_id = c.category_id AND p.stall_id = s.stall_id";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("category_id"));
				Stall stall = stallService.get(rs.getInt("stall_id"));
				
				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setDiscount(rs.getInt("discount"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));
				product.setCategory(category);
				product.setStall(stall); 

				productList.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return productList;
	}

	@Override
	public List<Product> search(String keyword) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT * FROM products WHERE name LIKE ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setDiscount(rs.getInt("discount"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));

				Category category = new Category();
				category.setId(rs.getInt("category_id"));
				category.setName(rs.getString("cate_name"));
				product.setCategory(category);
				
				Stall stall = new Stall();
				stall.setId(rs.getInt("stall_id"));
				stall.setName(rs.getString("stall_name"));
				product.setStall(stall); 
				
				productList.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return productList;
	}

	@Override
	public List<Product> searchByCategory(int cate_id) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT p.product_id, p.name, p.price, p.quantity, p.discount, p.description, p.image, c.category_id, c.name AS cate_name, s.stall_id, s.name AS stall_name "
				+ "FROM products p, categories c, stalls s WHERE p.category_id = c.category_id AND p.stall_id = s.stall_id AND p.category_id = ?";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, cate_id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("category_id"));
				Stall stall = stallService.get(rs.getInt("stall_id"));
				
				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setDiscount(rs.getInt("discount"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));
				product.setCategory(category);
				product.setStall(stall); 
				
				productList.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return productList;
	}
	
	@Override
	public List<Product> searchByStall(int stall_id) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT p.product_id, p.name, p.price, p.quantity, p.discount, p.description, p.image, c.category_id, c.name AS cate_name, s.stall_id, s.name AS stall_name "
				+ "FROM products p, categories c, stalls s WHERE p.category_id = c.category_id AND p.stall_id = s.stall_id AND p.stall_id = ?";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, stall_id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("category_id"));
				Stall stall = stallService.get(rs.getInt("stall_id"));
				
				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setDiscount(rs.getInt("discount"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));
				product.setCategory(category);
				product.setStall(stall); 
				
				productList.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return productList;
	}

	@Override
	public List<Product> searchByName(String productName) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT p.product_id, p.name, p.price, p.quantity, p.discount, p.description, p.image, c.category_id, c.name AS cate_name, s.stall_id, s.name AS stall_name "
				+ "FROM products p, categories c, stalls s WHERE p.category_id = c.category_id AND p.stall_id = s.stall_id AND p.name LIKE ?";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,"%"+ productName +"%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("category_id"));
				Stall stall = stallService.get(rs.getInt("stall_id"));
				
				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				product.setQuantity(rs.getInt("quantity"));
				product.setDiscount(rs.getInt("discount"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));
				product.setCategory(category);
				product.setStall(stall); 
				
				productList.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}
}
