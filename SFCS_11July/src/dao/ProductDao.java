package dao;

import java.util.List;

import model.Product;

public interface ProductDao {
	void insert(Product product);

	void edit(Product product);

	void delete(int id);

	Product get(int id);

	List<Product> getAll();

	List<Product> search(String username);
	
	List<Product> searchByCategory(int cate_id);
	
	List<Product> searchByStall(int stall_id);
	
	List<Product> searchByName(String productName);
}
