package service.impl;

import java.io.File;
import java.util.List;

import dao.CartDao;
import dao.CartItemDao;
import dao.ProductDao;
import dao.UserDao;
import dao.impl.CartDaoImpl;
import dao.impl.CartItemDaoImpl;
import dao.impl.ProductDaoImpl;
import dao.impl.UserDaoImpl;
import model.Cart;
import model.CartItem;
import model.Product;
import model.User;
import service.CartItemService;
import service.CartService;
import service.ProductService;
import service.UserService;

public class CartServiceItemImpl implements CartItemService {
	CartItemDao cartItemDao = new CartItemDaoImpl();

	@Override
	public void insert(CartItem cartItem) {
		cartItemDao.insert(cartItem);
		
	}

	@Override
	public void edit(CartItem newCartItem) {
		CartItem oldCartItem = cartItemDao.get(newCartItem.getId());
		oldCartItem.setCart(newCartItem.getCart());
		oldCartItem.setProduct(newCartItem.getProduct());
		oldCartItem.setQuantity(newCartItem.getQuantity());
		oldCartItem.setUnitPrice(newCartItem.getUnitPrice());
		
		cartItemDao.edit(oldCartItem);
	}

	@Override
	public void delete(String id) {
		cartItemDao.delete(id);
	}

	@Override
	public CartItem get(int id) {
		return cartItemDao.get(id);
	}

	@Override
	public List<CartItem> getAll() {
		return cartItemDao.getAll();
	}

	@Override
	public List<CartItem> search(String keyword) {
		return cartItemDao.search(keyword);
	}

	
}
