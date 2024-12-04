<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="bg-gray-50 font-[sans-serif]">
    <div class="min-h-screen flex flex-col items-center justify-center py-6 px-4">
        <div class="max-w-md w-full">
            <div class="p-8 rounded-2xl bg-white shadow">
                <h2 class="text-gray-800 text-center text-2xl font-bold">Sign in</h2>
                <form class="mt-8 space-y-4" method="POST" action="/login">
                    
                    <!-- Email Input -->
                    <div>
                        <label class="text-gray-800 text-sm mb-2 block" for="email">Email</label>
                        <div class="relative flex items-center">
                            <input
                                name="email"
                                type="email"
                                id="email"
                                class="w-full text-gray-800 text-sm border px-4 py-3 rounded-md outline-none"
                                placeholder="Enter email"
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
                                placeholder="Enter password"
                            />
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                fill="#bbb"
                                stroke="#bbb"
                                class="w-4 h-4 absolute right-4 cursor-pointer"
                                viewBox="0 0 128 128"
                            >
                                <path d="M64 104C22.127 104 1.367 67.496.504 65.943a4 4 0 0 1 0-3.887C1.367 60.504 22.127 24 64 24s62.633 36.504 63.496 38.057a4 4 0 0 1 0 3.887C126.633 67.496 105.873 104 64 104zM8.707 63.994C13.465 71.205 32.146 96 64 96c31.955 0 50.553-24.775 55.293-31.994C114.535 56.795 95.854 32 64 32 32.045 32 13.447 56.775 8.707 63.994zM64 88c-13.234 0-24-10.766-24-24s10.766-24 24-24 24 10.766 24 24-10.766 24-24 24zm0-40c-8.822 0-16 7.178-16 16s7.178 16 16 16 16-7.178 16-16-7.178-16-16-16z" />
                            </svg>
                        </div>
                        <c:if test="${not empty param.passwordError}">
                            <p class="text-red-500 text-sm mt-1">${param.passwordError}</p>
                        </c:if>
                    </div>

                    <!-- Remember Me and Forgot Password -->
                    <div class="flex flex-wrap items-center justify-between gap-4">
                        <div class="flex items-center">
                            <input
                                id="remember-me"
                                name="remember-me"
                                type="checkbox"
                                class="h-4 w-4 shrink-0 text-blue-600 focus:ring-blue-500 border-gray-300 rounded"
                            />
                            <label for="remember-me" class="ml-3 block text-sm text-gray-800">Remember me</label>
                        </div>
                        <div class="text-sm">
                            <a href="javascript:void(0);" class="text-blue-600 hover:underline font-semibold">Forgot your password?</a>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <div class="!mt-8">
                        <button
                            type="submit"
                            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 border border-blue-700 rounded">
                            Sign in
                        </button>
                    </div>

                    <!-- Register Link -->
                    <p class="text-gray-800 text-sm !mt-8 text-center">
                        Don't have an account? 
                        <a href="/signup" class="text-blue-600 hover:underline ml-1 whitespace-nowrap font-semibold">Register here</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
