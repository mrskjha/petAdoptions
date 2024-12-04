<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adopt a Pet</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100 font-[sans-serif]">
    <div class="min-h-screen py-8 px-4">
        <h1 class="text-center text-3xl font-bold text-gray-800 mb-6">Adopt a Pet</h1>
        <div class="max-w-5xl mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <% 
                // List of dummy pets
                class Pet {
                    String name, type, imageUrl;
                    int age;

                    Pet(String name, String type, int age, String imageUrl) {
                        this.name = name;
                        this.type = type;
                        this.age = age;
                        this.imageUrl = imageUrl;
                    }
                }

                Pet[] pets = {
                    new Pet("Buddy", "Dog", 2, "https://via.placeholder.com/150/FF5733/FFFFFF?text=Buddy"),
                    new Pet("Mittens", "Cat", 1, "https://via.placeholder.com/150/FFC300/FFFFFF?text=Mittens"),
                    new Pet("Charlie", "Rabbit", 3, "https://via.placeholder.com/150/DAF7A6/FFFFFF?text=Charlie"),
                    new Pet("Max", "Dog", 4, "https://via.placeholder.com/150/581845/FFFFFF?text=Max"),
                    new Pet("Luna", "Cat", 2, "https://via.placeholder.com/150/C70039/FFFFFF?text=Luna"),
                    new Pet("Daisy", "Hamster", 1, "https://via.placeholder.com/150/900C3F/FFFFFF?text=Daisy")
                };

                for (Pet pet : pets) {
            %>
            <div class="p-4 bg-white rounded-lg shadow">
                <!-- Pet Image -->
                <img src="<%= pet.imageUrl %>" alt="<%= pet.name %>" class="w-full h-48 object-cover rounded-lg mb-4">
                <!-- Pet Info -->
                <h2 class="text-lg font-bold text-gray-800"><%= pet.name %></h2>
                <p class="text-gray-700">Type: <%= pet.type %></p>
                <p class="text-gray-700">Age: <%= pet.age %> year(s) old</p>
                <!-- Adopt Button -->
                <form action="/adopt" method="POST" class="mt-4">
                    <input type="hidden" name="petName" value="<%= pet.name %>">
                    <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                        Adopt <%= pet.name %>
                    </button>
                </form>
            </div>
            <% } %>
        </div>
    </div>
</body>

</html>
