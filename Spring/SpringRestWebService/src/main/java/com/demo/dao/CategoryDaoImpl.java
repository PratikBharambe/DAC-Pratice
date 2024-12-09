package com.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.demo.beans.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public List<Category> findAllCategory() {
		return jdbcTemplate.query("select * from catagory", (rs, rownum) -> {
			Category c = new Category();
			c.setId(rs.getInt(1));
			c.setCname(rs.getString(2));
			c.setCdesc(rs.getString(3));
			return c;
		});
	}

	@Override
	public Category findByCid(int cid) {
		return jdbcTemplate.queryForObject("select * from catagory where id=?", new Object[] { cid },
				BeanPropertyRowMapper.newInstance(Category.class));
	}

	@Override
	public boolean addNewCategory(Category c) {
		int n = jdbcTemplate.update("insert into catagory values(?,?,?)",
				new Object[] { c.getId(), c.getCname(), c.getCdesc() });
		return n > 0;
	}

	@Override
	public boolean modifyCategory(Category c) {
		int n = jdbcTemplate.update("update catagory set cname=?,cdesc=? where id=?",
				new Object[] { c.getCname(), c.getCdesc(), c.getId() });
		return n > 0;
	}

	@Override
	public boolean removeByCid(int cid) {
		int n = jdbcTemplate.update("delete from catagory where id=?", new Object[] { cid });
		return n > 0;
	}

}
