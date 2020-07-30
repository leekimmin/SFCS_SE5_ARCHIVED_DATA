package service.impl;

import java.io.File;
import java.sql.Date;
import java.util.List;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import model.User;
import service.UserService;

public class UserServiceImpl implements UserService {
	UserDao userDao = new UserDaoImpl();

	@Override
	public void insert(User user) {
		userDao.insert(user);
	}

	@Override
	public void edit(User newUser) {
		User oldUser = userDao.get(newUser.getId());

		oldUser.setEmail(newUser.getEmail());
		oldUser.setUsername(newUser.getUsername());
		oldUser.setFirstname(newUser.getFirstname());
		oldUser.setLastname(newUser.getLastname());
		oldUser.setPhone(newUser.getPhone());
		oldUser.setAddress(newUser.getAddress());
		oldUser.setPassword(newUser.getPassword());
		oldUser.setGender(newUser.getGender());
		oldUser.setBirthday(newUser.getBirthday());
		oldUser.setRoleId(newUser.getRoleId());
		if (newUser.getAvatar() != null) {
			// XOA ANH CU DI
			String fileName = oldUser.getAvatar();

			final String dir = "~\\eclipse-workspace\\SFCS\\upload";
			File file = new File(dir + "/" + fileName);

			if (file.exists()) {
				file.delete();
			}
			// THEM ANH MOI
			oldUser.setAvatar(newUser.getAvatar());
		}

		userDao.edit(oldUser);
	}


	@Override
	public void delete(int id) {
		userDao.delete(id);
	}

	@Override
	public User get(String username) {
		return userDao.get(username);
	}

	@Override
	public User get(int id) {
		return userDao.get(id);
	}

	@Override
	public List<User> getAll() {
		return userDao.getAll();
	}

	@Override
	public List<User> search(String username) {
		return userDao.search(username);
	}

	@Override
	public User login(String username, String password) {
		User user = this.get(username);
		if (user != null && password.equals(user.getPassword())) {
			return user;
		}

		return null;
	}

	@Override
	public boolean register(String username, String firstname, String lastname, String mail, String birthday, String gender, String password) {
		if (userDao.checkExistUsername(username)) {
			return false;
		}
		userDao.insert(new User(username, firstname, lastname, mail, birthday, gender, password));
		return true;
	}
	

	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);
	}

	public boolean checkExistUsername(String username) {
		return userDao.checkExistUsername(username);
	}
}
