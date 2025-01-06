package com.demo.SpringBootRestWebService.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.SpringBootRestWebService.beans.Product;

@Repository
public interface ProductDao extends JpaRepository<Product, Integer> {

}
