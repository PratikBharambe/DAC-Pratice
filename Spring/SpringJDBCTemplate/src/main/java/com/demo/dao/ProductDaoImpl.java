package com.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.demo.beans.Product;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public boolean addNewProduct(Product p) {
		int n = jdbcTemplate.update("insert into product values(?, ?, ?, ?, ?, ?)",
				new Object[] { p.getId(), p.getName(), p.getQty(), p.getPrice(), p.getExpiryDate(), p.getCid() });
		if (n > 0)
			return true;
		else
			return false;
	}

	@Override
	public boolean deleteProductById(int id) {
		int n = jdbcTemplate.update("delete from product where id = ?", new Object[] { id });
		if (n > 0)
			return true;
		else
			return false;
	}

	@Override
	public boolean modifyProduct(int id, int qty, double price) {
		int n = jdbcTemplate.update("update  product set qty = ?, price = ? where id = ?",
				new Object[] { qty, price, id });
		if (n > 0)
			return true;
		else
			return false;
	}

	@Override
	public List<Product> getAllProducts() {
		try {
			List<Product> plist = jdbcTemplate.query("select * from product", (rs, noOfRows) -> {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setQty(rs.getInt(3));
				p.setPrice(rs.getDouble(4));
				p.setExpiryDate(rs.getDate(5).toLocalDate());
				p.setCid(rs.getInt(6));
				return p;
			});
			return plist;
		} catch (EmptyResultDataAccessException e) {
			System.out.println("in exception product not found");
			return null;
		}
	}

	@Override
	public Product getProductById(int id) {
		try {
			@SuppressWarnings("deprecation")
			Product p = jdbcTemplate.queryForObject("select * from product where id = ?", new Object[] { id },
					BeanPropertyRowMapper.newInstance(Product.class));
			return p;
		} catch (EmptyResultDataAccessException e) {
			System.out.println("in exception product not found");
			return null;
		}
	}

	@Override
	public List<Product> getProductsByPrice(double price) {
		try {
			@SuppressWarnings("deprecation")
			List<Product> plist = jdbcTemplate.query("select * from product where price > ?",new Object[] {price}, BeanPropertyRowMapper.newInstance(Product.class));
			return plist;
		} catch (EmptyResultDataAccessException e) {
			System.out.println("in exception product not found");
			return null;
		}
	}

}
