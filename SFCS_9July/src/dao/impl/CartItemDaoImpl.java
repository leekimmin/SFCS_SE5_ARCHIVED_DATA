package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import dao.CartItemDao;
import dao.OrderStatusDao;
import dao.UserDao;
import jdbc.JDBCConnection;
import model.Cart;
import model.CartItem;
import model.OrderStatus;
import model.Product;
import model.User;
import service.CartService;
import service.ProductService;
import service.impl.CartServiceImpl;
import service.impl.ProductServiceImpl;


public class CartItemDaoImpl extends JDBCConnection implements CartItemDao {
	CartService cartService = new CartServiceImpl();
	ProductService productService = new ProductServiceImpl();
	UserDao userDao = new UserDaoImpl();
	OrderStatusDao statusDao = new OrderStatusDaoImpl();
	
	@Override
	public void insert(CartItem cartItem) {
		String sql = "INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES (?,?,?,?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, cartItem.getId());
			ps.setString(2, cartItem.getCart().getId());
			ps.setInt(3, cartItem.getProduct().getId());
			ps.setInt(4, cartItem.getQuantity());
			ps.setLong(5, cartItem.getUnitPrice());

			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(CartItem cartItem) {
		String sql = "UPDATE order_items SET order_id = ?, product_id = ?, quantity = ?, unit_price = ? WHERE order_item_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, cartItem.getCart().getId());
			ps.setInt(2, cartItem.getProduct().getId());
			ps.setInt(3, cartItem.getQuantity());
			ps.setLong(4, cartItem.getUnitPrice());
			ps.setString(5, cartItem.getId());		
			
			ps.executeUpdate();
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(String id) {
		String sql = "DELETE FROM order_items WHERE order_item_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public CartItem get(int id) {
		String sql = "SELECT oi.order_item_id, oi.quantity, oi.unit_price, o.user_id, o.order_date, o.status, p.name, p.price " 
				+ "FROM order_items oi, orders o, products p "
				+ "WHERE oi.order_id = o.order_id AND oi.product_id = p.product_id AND oi.order_item_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userDao.get(rs.getInt("user_id"));
				OrderStatus status = statusDao.get(rs.getInt("status"));
				
				Cart cart = new Cart();
				cart.setBuyer(user);
				cart.setBuyDate(rs.getDate("order_date"));
				cart.setStatus(status);
				
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
								
				CartItem cartItem = new CartItem();
				cartItem.setCart(cart);
				cartItem.setProduct(product);
				cartItem.setQuantity(rs.getInt("quantity"));
				cartItem.setUnitPrice(rs.getInt("unit_price"));
				
				return cartItem;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<CartItem> getAll() {
		List<CartItem> cartItemList = new ArrayList<CartItem>();
		String sql = "SELECT oi.order_item_id, oi.quantity, oi.unit_price, o.user_id, o.order_date, o.status, p.name, p.price " 
				+ "FROM order_items oi, orders o, products p "
				+ "WHERE oi.order_id = o.order_id AND oi.product_id = p.product_id";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userDao.get(rs.getInt("user_id"));
				OrderStatus status = statusDao.get(rs.getInt("status"));
				
				Cart cart = new Cart();
				cart.setBuyer(user);
				cart.setBuyDate(rs.getDate("order_date"));
				cart.setStatus(status);
				
				Product product = new Product();
				product.setName(rs.getString("name"));
				product.setPrice(rs.getInt("price"));
				
				
				CartItem cartItem = new CartItem();
				cartItem.setCart(cart);
				cartItem.setProduct(product);
				cartItem.setQuantity(rs.getInt("quantity"));
				cartItem.setUnitPrice(rs.getInt("unit_price"));

				cartItemList.add(cartItem);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cartItemList;
	}

	public List<CartItem> search(String name) {
		return null;
	}

	@Override
	public CartItem get(String name) {
		return null;
	}
}
