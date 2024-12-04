<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-50 font-[sans-serif]">
    <div class="min-h-screen flex flex-col items-center justify-center py-6 px-4">
        <div class="max-w-md w-full">
            <div class="p-8 rounded-2xl bg-white shadow">
                <h2 class="text-gray-800 text-center text-2xl font-bold">Sign Up</h2>
                <form class="mt-8 space-y-4" method="POST" action="/register">
                    
                    <!-- Full Name Input -->
                    <div>
                        <label class="text-gray-800 text-sm mb-2 block" for="name">Full Name</label>
                        <div class="relative flex items-center">
                            <input
                                name="name"
                                type="text"
                                id="name"
                                class="w-full text-gray-800 text-sm border px-4 py-3 rounded-md outline-none"
                                placeholder="Enter your full name"
                            />
                            <c:if test="${not empty param.nameError}">
                                <p class="text-red-500 text-sm mt-1">${param.nameError}</p>
                            </c:if>
                        </div>
                    </div>

                    <!-- Email Input -->
                    <div>
                        <label class="text-gray-800 text-sm mb-2 block" for="email">Email</label>
                        <div class="relative flex items-center">
                            <input
                                name="email"
                                type="email"
                                id="email"
                                class="w-full text-gray-800 text-sm border px-4 py-3 rounded-md outline-none"
                                placeholder="Enter your email"
                            />
                            <c:if test="${not empty param.emailError}">
                                <p class="text-red-500 text-sm mt-1">${param.emailError}</p>
                            </c:if>
                        </div>
                    </div>

                    <!-- Password Input -->
                    <div>
                        <label class="text-gray-800 text-sm mb-2 block" for="password">Password</label>
                        <div class="relative flex items-center">
                            <input
                                name="password"
                                type="password"
                                id="password"
                                class="w-full text-gray-800 text-sm border px-4 py-3 rounded-md outline-none"
                                placeholder="Enter your password"
                            />
                            <c:if test="${not empty param.passwordError}">
                                <p class="text-red-500 text-sm mt-1">${param.passwordError}</p>
                            </c:if>
                        </div>
                    </div>

                    <!-- Confirm Password Input -->
                    <div>
                        <label class="text-gray-800 text-sm mb-2 block" for="confirmPassword">Confirm Password</label>
                        <div class="relative flex items-center">
                            <input
                                name="confirmPassword"
                                type="password"
                                id="confirmPassword"
                                class="w-full text-gray-800 text-sm border px-4 py-3 rounded-md outline-none"
                                placeholder="Confirm your password"
                            />
                            <c:if test="${not empty param.confirmPasswordError}">
                                <p class="text-red-500 text-sm mt-1">${param.confirmPasswordError}</p>
                            </c:if>
                        </div>
                    </div>

                    <!-- Terms and Conditions -->
                    <div class="flex items-center">
                        <input
                            id="terms"
                            name="terms"
                            type="checkbox"
                            class="h-4 w-4 shrink-0 text-blue-600 focus:ring-blue-500 border-gray-300 rounded"
                        />
                        <label for="terms" class="ml-3 block text-sm text-gray-800">I agree to the <a href="javascript:void(0);" class="text-blue-600 hover:underline">Terms and Conditions</a></label>
                    </div>

                    <!-- Submit Button -->
                    <div class="!mt-8">
                        <button
                            type="submit"
                            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 border border-blue-700 rounded">Sign Up
                        </button>
                    </div>

                    <!-- Login Link -->
                    <p class="text-gray-800 text-sm !mt-8 text-center">
                        Already have an account? 
                        <a href="/login" class="text-blue-600 hover:underline ml-1 whitespace-nowrap font-semibold">Login here</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
