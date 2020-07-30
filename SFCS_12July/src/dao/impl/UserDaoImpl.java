package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Date;

import dao.UserDao;
import jdbc.JDBCConnection;
import model.User;

public class UserDaoImpl extends JDBCConnection implements UserDao {

	@Override
	public void insert(User user) {
		int roleId=0;
		String sql = "INSERT INTO users(first_name, last_name, username, password, email, birth_date, gender, role_id) VALUES (?,?,?,?,?,?,?,?)";
		Connection con = super.getJDBCConnection();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user.getFirstname());
			ps.setString(2, user.getLastname());
			ps.setString(3, user.getUsername());
			ps.setString(4, user.getPassword());
			ps.setString(5, user.getEmail());
			ps.setDate(6, Date.valueOf(user.getBirthday()));
			ps.setString(7, user.getGender());
			try {
				if(user.getRoleId() == 2) {
					roleId = 2;
				}else {
					roleId = 1;
				}

			} catch (Exception e) {
				roleId = 1;
			}
			ps.setInt(8, roleId);
			;
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(User user) {
		String sql = "UPDATE users SET email = ? , username = ?, password = ?, avatar = ?, role_id = ? WHERE user_id = ?";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getAvatar());
			ps.setInt(5, user.getRoleId());
			ps.setInt(6, user.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM users WHERE user_id = ?";
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
	public User get(String username) {
		String sql = "SELECT * FROM users WHERE username = ? ";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setId(rs.getInt("user_id"));
				user.setEmail(rs.getString("email"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setFirstname(rs.getString("first_name"));
				user.setLastname(rs.getString("last_name"));
				user.setAddress(rs.getString("address"));
				user.setBirthday(rs.getString("birth_date"));
				user.setPhone(rs.getString("phone"));
				user.setGender(rs.getString("gender"));
				user.setAvatar(rs.getString("avatar"));
				user.setRoleId(Integer.parseInt(rs.getString("role_id")));

				return user;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public User get(int id) {
		String sql = "SELECT * FROM users WHERE user_id = ? ";
		Connection con = super.getJDBCConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setId(rs.getInt("user_id"));
				user.setEmail(rs.getString("email"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setAvatar(rs.getString("avatar"));
				user.setRoleId(Integer.parseInt(rs.getString("role_id")));

				return user;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<User> getAll() {
		List<User> userList = new ArrayList<User>();
		String sql = "SELECT * FROM users";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setId(rs.getInt("user_id"));
				user.setEmail(rs.getString("email"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setAvatar(rs.getString("avatar"));
				user.setRoleId(Integer.parseInt(rs.getString("role_id")));

				userList.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return userList;
	}

	@Override
	public List<User> search(String keyword) {
		List<User> userList = new ArrayList<User>();
		String sql = "SELECT * FROM users WHERE name LIKE ? ";
		Connection conn = super.getJDBCConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();

				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setAvatar(rs.getString("avatar"));
				user.setRoleId(Integer.parseInt(rs.getString("role_id")));

				userList.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return userList;
	}

	public boolean checkExistEmail(String email) {
		boolean duplicate = false;
		Connection conn = JDBCConnection.getJDBCConnection();
		try {
			String query = "select * from users where email = ?";

			PreparedStatement psmt = conn.prepareStatement(query);

			psmt.setString(1, email);

			ResultSet resultSet = psmt.executeQuery();

			if (resultSet.next()) {
				duplicate = true;
			}
			psmt.close();
			conn.close();
		} catch (SQLException ex) {
		}
		return duplicate;
	}

	public boolean checkExistUsername(String username) {
		boolean duplicate = false;
		Connection conn = JDBCConnection.getJDBCConnection();
		try {
			String query = "select * from users where username = ?";

			PreparedStatement psmt = conn.prepareStatement(query);

			psmt.setString(1, username);

			ResultSet resultSet = psmt.executeQuery();

			if (resultSet.next()) {
				duplicate = true;
			}
			psmt.close();
			conn.close();
		} catch (SQLException ex) {
		}
		return duplicate;
	}

}
