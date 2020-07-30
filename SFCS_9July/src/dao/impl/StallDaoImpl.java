package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.StallDao;
import jdbc.JDBCConnection;
import model.Stall;

public class StallDaoImpl extends JDBCConnection implements StallDao {

	@Override
	public void insert(Stall stall) {
		String sql = "INSERT INTO stalls(name, item, description, image) VALUES (?,?,?,?)";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, stall.getName());
			ps.setInt(2, stall.getItem());
			ps.setString(3, stall.getDes());
			ps.setString(4, stall.getImage());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Stall stall) {
		String sql = "UPDATE stalls SET name = ?, item = ?, description = ?, image = ?, WHERE stall_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, stall.getName());
			ps.setInt(2, stall.getItem());
			ps.setString(3, stall.getDes());
			ps.setString(4, stall.getImage());
			ps.setInt(5, stall.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM stalls WHERE stall_id = ?";
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
	public Stall get(int id) {
		String sql = "SELECT * FROM stalls WHERE stall_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Stall stall = new Stall();

				stall.setId(rs.getInt("stall_id"));
				stall.setName(rs.getString("name"));
				stall.setItem(rs.getInt("item"));
				stall.setDes(rs.getString("description"));
				stall.setImage(rs.getString("image"));
				
				return stall;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Stall> getAll() {
		List<Stall> stalls = new ArrayList<Stall>();
		String sql = "SELECT * FROM stalls";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Stall stall = new Stall();

				stall.setId(rs.getInt("stall_id"));
				stall.setName(rs.getString("name"));
				stall.setItem(rs.getInt("item"));
				stall.setDes(rs.getString("description"));
				stall.setImage(rs.getString("image"));

				stalls.add(stall);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return stalls;
	}

	@Override
	public List<Stall> search(String keyword) {
		List<Stall> stalls = new ArrayList<Stall>();
		String sql = "SELECT * FROM stalls WHERE name LIKE ?";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Stall stall = new Stall();

				stall.setId(rs.getInt("stall_id"));
				stall.setName(rs.getString("name"));
				stall.setItem(rs.getInt("item"));
				stall.setDes(rs.getString("description"));
				stall.setImage(rs.getString("image"));

				stalls.add(stall);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return stalls;
	}

	@Override
	public Stall get(String name) {
		String sql = "SELECT * FROM stalls WHERE name LIKE ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Stall stall = new Stall();

				stall.setId(rs.getInt("stall_id"));
				stall.setName(rs.getString("name"));
				stall.setItem(rs.getInt("item"));
				stall.setDes(rs.getString("description"));
				stall.setImage(rs.getString("image"));
				
				return stall;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
