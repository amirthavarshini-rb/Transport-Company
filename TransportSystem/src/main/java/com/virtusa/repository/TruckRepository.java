package com.virtusa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.virtusa.model.Trucks;

public interface TruckRepository extends JpaRepository<Trucks, Integer> {
	public Trucks findByTid(int id);
	public Trucks findByModel(String model);
	
	public List<Trucks> findAllByLocation(String location);
	
	boolean existsByModel(String model);

}
