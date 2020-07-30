package service.impl;

import java.util.List;

import dao.CartDao;
import dao.impl.CartDaoImpl;
import model.Cart;
import service.CartService;

public class CartServiceImpl implements CartService {
	CartDao cartDao = new CartDaoImpl();

	@Override
	public void insert(Cart cart) {
		cartDao.insert(cart);
	}
	
	@Override
	public void delete(int id) {
		cartDao.delete(id);
	}
	
	@Override
	public void edit(Cart newCart) {
		Cart oldCart = cartDao.get(newCart.getId());
		oldCart.setBuyDate(newCart.getBuyDate());
		oldCart.setBuyer(newCart.getBuyer());
		oldCart.setStatus(newCart.getStatus()); 	
		cartDao.edit(oldCart);

	}

	@Override
	public Cart get(int id) {
		return cartDao.get(id);
	}
	
	@Override
	public List<Cart> getAll() {
		return cartDao.getAll();
	}

	@Override
	public List<Cart> search(String name) {
		return cartDao.search(name);
	}

}

