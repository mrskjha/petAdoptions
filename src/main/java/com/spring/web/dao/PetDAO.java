package com.spring.web.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.spring.web.model.Pet;

public class PetDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/pet_adoption";
    private static final String USER = "root";
    private static final String PASSWORD = "your_password";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public List<Pet> getAllPets() {
        List<Pet> pets = new ArrayList<>();
        String sql = "SELECT * FROM pets";
        
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            
            while (rs.next()) {
                pets.add(new Pet(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("type"),
                    rs.getInt("age"),
                    rs.getString("imageUrl")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pets;
    }

    public void addPet(Pet pet) {
        String sql = "INSERT INTO pets (name, type, age, imageUrl) VALUES (?, ?, ?, ?)";
        
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {
            
            ps.setString(1, pet.getName());
            ps.setString(2, pet.getType());
            ps.setInt(3, pet.getAge());
            ps.setString(4, pet.getImageUrl());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}