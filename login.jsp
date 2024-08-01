<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="css/Login.css">
</head>
<body style="background: url('image/2.png') no-repeat center center/cover;">
    <header>
        <h1>Register</h1>
        <nav>
            <a href="GhostView.jsp">View Mode (no need to sign in)</a>
            <a href="about.jsp">About Us</a>
        </nav>
    </header>
    <section class="auth-form">
        <h2>Register</h2>
        <form action="index.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="registerCheck" checked>
                <label class="form-check-label" for="registerCheck">
                    I have read and agree to the terms
                </label>
            </div>

            <button type="submit">Register</button>
        </form>
        <p class="login-message">To get all the benefits, please log in to the site.</p>
    </section>
    <div class="auth-buttons">
        <a href="login.jsp" class="button">Login</a>
    </div>
</body>
</html>
