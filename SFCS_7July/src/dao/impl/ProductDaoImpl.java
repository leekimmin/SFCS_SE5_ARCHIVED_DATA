package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ProductDao;
import dao.UserDao;
import jdbc.JDBCConnection;
import model.Category;
import model.Product;
import model.User;
import service.CategoryService;
import service.impl.CategoryServiceImpl;

public class ProductDaoImpl extends JDBCConnection implements ProductDao {
	CategoryService categortService = new CategoryServiceImpl();

	@Override
	public void insert(Product product) {
		String sql = "INSERT INTO products(name, price, image, category_id, description) VALUES (?,?,?,?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setLong(2, product.getPrice());
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getCategory().getId());
			ps.setString(5, product.getDes());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Product product) {
		String sql = "UPDATE products SET products.name = ? , price = ?, image = ?,category_id=?, description=?  WHERE product_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setDouble(2, product.getPrice());
			;
			ps.setString(3, product.getImage());
			ps.setInt(4, product.getCategory().getId());
			ps.setString(5, product.getDes());
			ps.setInt(6, product.getId());
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
		String sql = "SELECT products.product_id, products.name AS p_name, products.price, products.image, products.description, categories.name AS c_name, categories.category_id AS c_id "
				+ "FROM products INNER JOIN categories " + "ON products.category_id = categories.category_id WHERE products.product_id=?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("c_id"));

				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));
				product.setCategory(category);

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
		String sql = "SELECT products.product_id, products.name AS p_name, products.price, products.image, products.description, categories.name AS c_name, categories.category_id AS c_id  "
				+ "FROM products INNER JOIN categories " + "ON products.category_id = categories.category_id";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("c_id"));
				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));
				product.setCategory(category);

				product.setCategory(category);
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
		String sql = "SELECT * FROM users WHERE name LIKE ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));

				Category category = new Category();
				category.setId(rs.getInt("c_id"));
				category.setName(rs.getString("c_name"));

				product.setCategory(category);

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
		String sql = "SELECT products.product_id, products.name AS p_name, products.price, products.image, products.description , categories.name AS c_name, categories.category_id AS c_id FROM products , categories where products.category_id = categories.category_id and categories.category_id=?";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, cate_id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("c_id"));
				Product product = new Product();
				product.setId(rs.getInt("product_id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("description"));
				product.setCategory(category);

				product.setCategory(category);
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
		String sql = "SELECT products.product_id, products.name AS p_name, products.price, products.image, products.description , categories.name AS c_name, categories.category_id AS c_id"
				+ " FROM products , categories where products.category_id = categories.category_id and products.name like ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,"%"+ productName +"%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Category category = categortService.get(rs.getInt("c_id"));
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("p_name"));
				product.setPrice(rs.getLong("price"));
				product.setImage(rs.getString("image"));
				product.setDes(rs.getString("des"));
				product.setCategory(category);

				product.setCategory(category);
				productList.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}
}
