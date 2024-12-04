<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Adoption</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body>
    <nav class="bg-blue-500 p-4">
        <div class="container mx-auto flex justify-between items-center">
            <div class="text-white text-lg font-bold">
                PetAdoption
            </div>
            <ul class="flex space-x-4">
                <li>
                    <a href="/" class="text-white hover:text-gray-300">Home</a>
                </li>
                <li>
                    <a href="/about" class="text-white hover:text-gray-300">About</a>
                </li>
                <li>
                    <a href="/contact" class="text-white hover:text-gray-300">Contact</a>
                </li>
                <li>
                    <a href="/login" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 border border-blue-700 rounded">>Login</a>
                </li>
            </ul>
        </div>
    </nav>
	
	<jsp:include page="herosection.jsp" />
	
</body>

</html>
