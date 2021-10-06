package com.virtusa.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.virtusa.model.AuthRequest;
import com.virtusa.model.Trucks;
import com.virtusa.model.User;
import com.virtusa.repository.TruckRepository;
import com.virtusa.repository.UserRepository;
import com.virtusa.util.JwtUtil;

@Controller
public class HomeController {

    @Autowired
    private JwtUtil jwtUtil;
    @Autowired
    private AuthenticationManager authenticationManager;
    
    @Autowired
    UserRepository userRepo;
    
    @Autowired
    TruckRepository truckRepo;
    
    
    
    @RequestMapping("/index")
	public String home() {

		return "index.html";
	}
    

    @PostMapping("/signUp")
    @ResponseBody
	public String Signup( User user) {
    
		if(userRepo.existsByUserName(user.getEmail())||userRepo.existsByUserName(user.getUserName())) 
			{return("User Name or Email already in use");}
		userRepo.save(user);
		return("User Registered Successfully");
	}
    
   



    @PostMapping("/authenticate")
    
    public String generateToken(HttpServletRequest request,AuthRequest authRequest) throws Exception {
    	
        try {
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(authRequest.getUserName(), authRequest.getPassword())
            );
        } catch (Exception ex) {
            throw new Exception("index.html");
        }
        
        request.getSession().setAttribute("token",jwtUtil.generateToken(authRequest.getUserName()));
        return "welcome.jsp" ;
    }
    
    @PostMapping("/searchManager")
    @ResponseBody
    public User searchManager(@RequestParam("token") String token,@RequestParam("userName") String userName) {
    	User user = userRepo.findByUserName(jwtUtil.extractUsername(token));
    	if(user.getRole().equals("ADMIN")) {
    	System.out.println(userName);
		return (userRepo.findByUserNameAndRole(userName,"MANAGER"));}
    	else {user.setUserName("Access denied"); 
    	return(user); }
	}
    
    @RequestMapping("/updateManager")
    @ResponseBody
	public User updateManager(@RequestParam("token") String token,@RequestParam("userName") String userName, User user) {
    	int updateFlag=0;
    	User currentUser = userRepo.findByUserName(jwtUtil.extractUsername(token));
    	if(currentUser.getRole().equals("ADMIN")) {
		if (userRepo.existsByUserNameAndRole(userName,"MANAGER")) {
			userRepo.save(user);
			updateFlag=1;
		}
		System.out.println(user);
		if(updateFlag==1) {return (userRepo.findByUserNameAndRole(userName,"MANAGER"));}
		else {user.setUserName("not found");
		return(user);}
		}
    	else{user.setUserName("Access denied");
    	return(user);}
    	}
    
    @RequestMapping("/deleteManager")
    @ResponseBody
	public User deleteManager(@RequestParam("token") String token,@RequestParam("userName") String userName, User user) {
    	int updateFlag=0;
    	User currentUser = userRepo.findByUserName(jwtUtil.extractUsername(token));
    	if(currentUser.getRole().equals("ADMIN")) {
		if (userRepo.existsByUserNameAndRole(userName,"MANAGER")) {
			userRepo.delete(user);
			updateFlag=1;
		}
		if(updateFlag==1) {user.setUserName("deleted seccessfully");
		return(user);
		}
		else {user.setUserName("not found");
		return(user);}

	}
    	else{user.setUserName("Access denied");
    	return(user);}
    	}
    	
    @RequestMapping("/createManager")
    @ResponseBody
	public User createManager(@RequestParam("token") String token,User user) {
    	User currentUser = userRepo.findByUserName(jwtUtil.extractUsername(token));
    	if(currentUser.getRole().equals("ADMIN")) {
    	if(user.getRole().equals("MANAGER")) {
    	userRepo.save(user);
		System.out.println(user);
		return (userRepo.findByUserNameAndRole(user.getUserName(),"MANAGER"));}
    	else {user.setUserName("Access denied");
    	return(user);}
    	
	}
    else {user.setUserName("Access denied");
	return(user);}
    	}
    
    /*-----------------TRUCKS----------------*/
    
    @RequestMapping("/addTruck")
    @ResponseBody
	public Trucks addTrucks(@RequestParam("token") String token,Trucks truck) {
    	User user = userRepo.findByUserName(jwtUtil.extractUsername(token));
    	if(user.getRole().equals("MANAGER")||user.getRole().equals("ADMIN")) {
    	truckRepo.save(truck);
		return truckRepo.findByTruckNum(truck.getTruckNum());}
    	else {truck.setTruckNum("Access denied");
    	return(truck);}
	}
    
    @RequestMapping("/updateTruck")
    @ResponseBody
	public Trucks updateTruck(@RequestParam("token") String token,@RequestParam("truckNum") String truckNum,Trucks truck) {
    	int updateFlag=0;
    	User user = userRepo.findByUserName(jwtUtil.extractUsername(token));
    	if(user.getRole().equals("MANAGER")||user.getRole().equals("ADMIN")) {
		if (truckRepo.existsByTruckNum(truckNum)) {
			//truckRepo.deleteById(truckRepo.findByModel(model).getTid());
			truck.setStatus(true);
			truck.setLocation(truck.getLocation());
			truck.setModel(truck.getModel());
			truckRepo.save(truck);
			updateFlag=1;
		}
		//System.out.println(truck);
		if(updateFlag==1) {
			return truckRepo.findByTruckNum(truckNum);
		}
		else {
			truck.setTruckNum("No truck found");
			return(truck);
			}
		}
    	else {truck.setTruckNum("Access Denied");
		return(truck);}
    	}
    
    @RequestMapping("/allTrucks")
	public List<Trucks> getTrucks(@RequestParam("token") String token,@RequestParam("location") String location) {
    	User user = userRepo.findByUserName(jwtUtil.extractUsername(token));
    	if(user.getRole().equals("MANAGER")||user.getRole().equals("ADMIN")) {
		return truckRepo.findAllByLocation(location);}
    	else { ArrayList<Trucks> list=new ArrayList<Trucks>();
    	Trucks truck=new Trucks();
    	truck.setModel("Access Denied");
    	list.add(truck);
    	return(list);}
	}
    
  
    @PostMapping("/findTruck")
    @ResponseBody
    public Trucks findTruck(@RequestParam("token") String token,@RequestParam("truckNum") String truckNum) {
    	User user = userRepo.findByUserName(jwtUtil.extractUsername(token));
    	if(user.getRole().equals("MANAGER")||user.getRole().equals("ADMIN")) {
    	System.out.println(truckNum);
		return (truckRepo.findByTruckNum(truckNum));
	}
    	else {Trucks truck=new Trucks();
    	truck.setTruckNum("Access Denied");
    	return(truck);}
}
    

    
    
}