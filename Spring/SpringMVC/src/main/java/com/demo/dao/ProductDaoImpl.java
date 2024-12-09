package com.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.demo.beans.Product;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Product> getAllProducts() {
		return jdbcTemplate.query("select * from product", (rs, noOfRoes) -> {
			Product p = new Product();
			p.setId(rs.getInt(1));
			p.setName(rs.getString(2));
			p.setQty(rs.getInt(3));
			p.setPrice(rs.getDouble(4));
			p.setExpiryDate(rs.getDate(5).toLocalDate());
			p.setCid(rs.getInt(6));
			return p;
		});
	}

	@Override
	public boolean addNewProduct(Product p) {
		System.out.println(p);
		int n = jdbcTemplate.update("insert into product values(?, ?, ?, ?, ?, ?)",
				new Object[] { p.getId(), p.getName(), p.getQty(), p.getPrice(), p.getExpiryDate(), p.getCid() });
		return n > 0;
	}

	@SuppressWarnings("deprecation")
	@Override
	public Product getById(int id) {
		return jdbcTemplate.queryForObject("select * from product where id = ?", new Object[] { id },
				(rs, noOfRoes) -> {
					Product p = new Product();
					p.setId(rs.getInt(1));
					p.setName(rs.getString(2));
					p.setQty(rs.getInt(3));
					p.setPrice(rs.getDouble(4));
					p.setExpiryDate(rs.getDate(5).toLocalDate());
					p.setCid(rs.getInt(6));
					return p;
				});
	}

	@Override
	public boolean updateProduct(Product p) {
		int n = jdbcTemplate.update(
				"update product set name = ?, qty = ?, price = ?, expdate = ?, cid = ? where id = ?",
				new Object[] { p.getName(), p.getQty(), p.getPrice(), p.getExpiryDate(), p.getCid(), p.getId() });
		return n > 0;
	}

	@Override
	public boolean deleteById(int id) {
		int n = jdbcTemplate.update("delete from product where id = ?", new Object[] { id });
		return n > 0;
	}

}
