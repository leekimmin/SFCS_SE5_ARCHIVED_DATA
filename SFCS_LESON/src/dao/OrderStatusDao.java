package dao;

import java.util.List;

import model.OrderStatus;

public interface OrderStatusDao {
	void insert(OrderStatus orderStatus);

	void edit(OrderStatus orderStatus);

	void delete(int id);

	OrderStatus get(int id);
	
	OrderStatus get(String name);

	List<OrderStatus> getAll();

	List<OrderStatus> search(String name);
}
