<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Adoption</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-100">
    <div class="py-20">
        <div class="container mx-auto flex flex-col md:flex-row items-center">
            <div class="flex flex-col w-full md:w-1/2 justify-center items-start text-center md:text-left">
                <h1 class="text-5xl font-bold leading-tight mb-4">Welcome to Pet Adoption</h1>
                <p class="text-xl mb-8">Find your perfect pet companion today!</p>
                <a href="#adopt" class="bg-blue-500 text-white py-2 px-4 rounded-full hover:bg-blue-700 transition duration-300">
                    Adopt Now
                </a>
            </div>
            <div class="w-screen h-98 bg-cover md:w-1/2 text-center">
                <img src="https://images.unsplash.com/photo-1514984879728-be0aff75a6e8?q=80&w=1984&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                    alt="Hero" class="w-full rounded-lg shadow-lg" />
            </div>
        </div>
    </div>
</body>

</html>
