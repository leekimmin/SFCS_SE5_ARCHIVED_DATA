package service.impl;

import java.util.List;

import dao.StallDao;
import dao.impl.StallDaoImpl;
import model.Stall;
import service.StallService;

public class StallServiceImpl implements StallService {
	StallDao stallDao = new StallDaoImpl();

	@Override
	public void insert(Stall stall) {
		stallDao.insert(stall);
	}

	@Override
	public void edit(Stall newStall) {
		Stall oldStall = stallDao.get(newStall.getId());
		oldStall.setName(newStall.getName());
		oldStall.setItem(newStall.getItem());
		oldStall.setDes(newStall.getDes());
		oldStall.setImage(newStall.getImage());
		stallDao.edit(oldStall);
	}

	@Override
	public void delete(int id) {
		stallDao.delete(id);
	}

	@Override
	public Stall get(int id) {
		return stallDao.get(id);
	}

	@Override
	public Stall get(String name) {
		return stallDao.get(name);
	}

	@Override
	public List<Stall> getAll() {
		return stallDao.getAll();
	}

	@Override
	public List<Stall> search(String username) {
		return stallDao.search(username);
	}
}