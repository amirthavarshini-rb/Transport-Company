package com.virtusa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="trucks")
public class Trucks {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int tid;
	private String model;
	private String location;
	private boolean status;
	
	public int getTid() {
		return tid;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Trucks [tid=" + tid + ", model=" + model + ", location=" + location + ", status=" + status + "]";
	}
	
	

}
