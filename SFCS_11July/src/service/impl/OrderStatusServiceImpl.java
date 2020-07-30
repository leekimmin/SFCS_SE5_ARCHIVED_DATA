package service.impl;

import java.util.List;

import dao.OrderStatusDao;
import dao.impl.OrderStatusDaoImpl;
import model.OrderStatus;
import service.OrderStatusService;

public class OrderStatusServiceImpl implements OrderStatusService {
	OrderStatusDao orderStatusDao = new OrderStatusDaoImpl();

	@Override
	public void insert(OrderStatus OrderStatus) {
		orderStatusDao.insert(OrderStatus);

	}

	@Override
	public void edit(OrderStatus newOrderStatus) {
		OrderStatus oldCate = orderStatusDao.get(newOrderStatus.getId());
		oldCate.setName(newOrderStatus.getName());
		orderStatusDao.edit(oldCate);

	}

	@Override
	public void delete(int id) {
		orderStatusDao.delete(id);

	}

	@Override
	public OrderStatus get(int id) {
		return orderStatusDao.get(id);
	}

	@Override
	public OrderStatus get(String name) {
		return orderStatusDao.get(name);
	}

	@Override
	public List<OrderStatus> getAll() {
		return orderStatusDao.getAll();
	}

	@Override
	public List<OrderStatus> search(String username) {
		return orderStatusDao.search(username);
	}
}