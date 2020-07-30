package dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import dao.CartDao;
import jdbc.JDBCConnection;
import model.Cart;
import model.OrderStatus;
import model.User;
import service.OrderStatusService;
import service.UserService;
import service.impl.OrderStatusServiceImpl;
import service.impl.UserServiceImpl;

public class CartDaoImpl extends JDBCConnection implements CartDao {
	UserService userS = new UserServiceImpl();
	OrderStatusService statusS = new OrderStatusServiceImpl();

	@Override
	public void insert(Cart cart) {
		String sql = "INSERT INTO orders(order_id, user_id, order_date, status) VALUES (?,?,?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, cart.getId());
			ps.setInt(2, cart.getBuyer().getId());
			ps.setDate(3, new Date(cart.getBuyDate().getTime()));
			ps.setInt(4, cart.getStatus().getId()); 
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Cart cart) {
		String sql = "UPDATE orders SET user_id = ?, order_date = ?, status = ? WHERE order_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, cart.getBuyer().getId());
			ps.setDate(2, new Date(cart.getBuyDate().getTime()));
			ps.setInt(3, cart.getStatus().getId()); 
			ps.setInt(4, cart.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM orders WHERE order_id = ?";
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
	public Cart get(int id) {
		String sql = "SELECT o.order_id, o.order_date, u.user_id, u.username, u.email, os.order_status_id, os.name "
				+ "FROM orders o, users u, order_statuses os "
				+ "WHERE o.user_id = u.user_id AND o.status = os.order_status_id AND o.order_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userS.get(rs.getInt("user_id"));
				OrderStatus status = statusS.get(rs.getInt("order_status_id"));

				Cart cart = new Cart();
				cart.setId(rs.getInt("order_id"));
				cart.setBuyDate(rs.getDate("order_date"));
				cart.setStatus(status);
				cart.setBuyer(user);

				return cart;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Cart> getAll() {
		List<Cart> cartList = new ArrayList<Cart>();
		String sql = "SELECT o.order_id, o.order_date, u.user_id, u.username, u.email, os.order_status_id, os.name "
				+ "FROM orders o, users u, order_statuses os "
				+ "WHERE o.user_id = u.user_id AND o.status = os.order_status_id";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userS.get(rs.getInt("user_id"));
				OrderStatus status = statusS.get(rs.getInt("order_status_id"));

				Cart cart = new Cart();
				cart.setId(rs.getInt("order_id"));
				cart.setBuyDate(rs.getDate("order_date"));
				cart.setStatus(status);
				cart.setBuyer(user);

				cartList.add(cart);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cartList;
	}

	public List<Cart> search(String name) {
		List<Cart> cartList = new ArrayList<Cart>();
		String sql = "SELECT o.order_id, o.order_date, u.user_id, u.username, u.email, os.order_status_id, os.name "
				+ "FROM orders o, users u, order_statuses os "
				+ "WHERE o.user_id = u.user_id AND o.status = os.order_status_id AND u.email LIKE ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = userS.get(rs.getInt("user_id"));
				OrderStatus status = statusS.get(rs.getInt("order_status_id"));

				Cart cart = new Cart();
				cart.setId(rs.getInt("order_id"));
				cart.setBuyDate(rs.getDate("order_date"));
				cart.setStatus(status);
				cart.setBuyer(user);

				cartList.add(cart);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cartList;
	}

	@Override
	public Cart get(String name) {
		return null;
	}
}
