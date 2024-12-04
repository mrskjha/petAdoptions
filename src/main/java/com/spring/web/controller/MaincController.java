package com.spring.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.web.dao.PetDAO;
import com.spring.web.model.Pet;

@Controller
public class MaincController {
	
	 PetDAO petDAO = new PetDAO();

	    @GetMapping("/listOfPets")
	    public String listPets(Model model) {
	        List<Pet> pets = petDAO.getAllPets();
	        model.addAttribute("pets", pets);
	        return "listOfPets";
	    }
    
    // Home page route
    @RequestMapping("/")
    public String home() {
        System.out.println("This is home");
        return "home";  // This should return home.jsp or home.html
    }

    // Contact page route
    @RequestMapping("/contact")
    public String contact() {
        return "contact";  // This should return contact.jsp or contact.html
    }

    // Login page route
    @RequestMapping("/login")
    public String login() {
        return "login";  // This should return login.jsp or login.html
    }
    
    
    @RequestMapping("/listOfPets")
    public String listOfPets() {
        return "listOfPets";  // This should return login.jsp or login.html
    }
    

    // Signup page route
    @RequestMapping("/signup")
    public String signup() {
        return "signup";  // This should return signup.jsp or signup.html
    }

    // Handle POST request for login form submission
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUser(@RequestParam String email, @RequestParam String password) {
        
        // Simulating login validation (replace with actual login logic, like checking against a database)
        if ("user@example.com".equals(email) && "password123".equals(password)) {
            System.out.println("Login successful");
            return "redirect:/";  // Redirecting to home page after successful login
        } else {
            System.out.println("Invalid credentials");
            return "login";  // Return to login page if login fails (you can display an error message here)
        }
    }
}
