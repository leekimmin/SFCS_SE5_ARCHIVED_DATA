package dao;

import java.util.List;

import model.Stall;

public interface StallDao {
	void insert(Stall stall);

	void edit(Stall stall);

	void delete(int id);

	Stall get(int id);
	
	Stall get(String name);

	List<Stall> getAll();

	List<Stall> search(String username);
}
