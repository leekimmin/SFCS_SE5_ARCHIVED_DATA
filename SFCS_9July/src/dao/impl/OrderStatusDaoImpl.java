package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.OrderStatusDao;
import jdbc.JDBCConnection;
import model.OrderStatus;

public class OrderStatusDaoImpl extends JDBCConnection implements OrderStatusDao {

	@Override
	public void insert(OrderStatus orderStatus) {
		String sql = "INSERT INTO order_statuses(name) VALUES (?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, orderStatus.getName());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(OrderStatus orderStatus) {
		String sql = "UPDATE order_statuses SET name = ? WHERE order_status_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, orderStatus.getName());
			ps.setInt(2, orderStatus.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM order_statuses WHERE order_status_id = ?";
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
	public OrderStatus get(int id) {
		String sql = "SELECT * FROM order_statuses WHERE order_status_id = ? ";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				OrderStatus OrderStatus = new OrderStatus();

				OrderStatus.setId(rs.getInt("order_status_id"));
				OrderStatus.setName(rs.getString("name"));

				return OrderStatus;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<OrderStatus> getAll() {
		List<OrderStatus> orderStatuses = new ArrayList<OrderStatus>();
		String sql = "SELECT * FROM order_statuses";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				OrderStatus orderStatus = new OrderStatus();

				orderStatus.setId(rs.getInt("order_status_id"));
				orderStatus.setName(rs.getString("name"));

				orderStatuses.add(orderStatus);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return orderStatuses;
	}

	@Override
	public List<OrderStatus> search(String keyword) {
		List<OrderStatus> orderStatuses = new ArrayList<OrderStatus>();
		String sql = "SELECT * FROM order_statuses WHERE name LIKE ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				OrderStatus orderStatus = new OrderStatus();

				orderStatus.setId(rs.getInt("order_status_id"));
				orderStatus.setName(rs.getString("name"));

				orderStatuses.add(orderStatus);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return orderStatuses;
	}

	@Override
	public OrderStatus get(String name) {
		String sql = "SELECT * FROM order_statuses WHERE name = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				OrderStatus orderStatus = new OrderStatus();

				orderStatus.setId(rs.getInt("order_status_id"));
				orderStatus.setName(rs.getString("name"));

				return orderStatus;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
