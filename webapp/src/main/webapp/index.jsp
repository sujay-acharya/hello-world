<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Animated Login Page</title>
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #667eea, #764ba2);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      animation: fadeIn 2s ease-in;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .login-container {
      background: #fff;
      padding: 40px;
      border-radius: 16px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
      width: 320px;
      animation: slideUp 1.2s ease-out;
    }

    @keyframes slideUp {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .login-container h2 {
      text-align: center;
      color: #333;
      margin-bottom: 24px;
    }

    .login-container input[type="text"],
    .login-container input[type="password"] {
      width: 100%;
      padding: 12px;
      margin-bottom: 18px;
      border: 1px solid #ccc;
      border-radius: 8px;
      transition: border 0.3s ease;
    }

    .login-container input[type="text"]:focus,
    .login-container input[type="password"]:focus {
      border-color: #667eea;
      outline: none;
    }

    .login-container .forgot {
      text-align: right;
      font-size: 12px;
      margin-bottom: 12px;
    }

    .login-container .forgot a {
      color: #667eea;
      text-decoration: none;
      transition: color 0.3s ease;
    }

    .login-container .forgot a:hover {
      color: #764ba2;
    }

    .login-container input[type="submit"] {
      width: 100%;
      padding: 12px;
      background: linear-gradient(to right, #667eea, #764ba2);
      border: none;
      color: white;
      font-size: 16px;
      border-radius: 8px;
      cursor: pointer;
      transition: background 0.3s ease, transform 0.2s;
    }

    .login-container input[type="submit"]:hover {
      background: linear-gradient(to right, #5a67d8, #6b46c1);
      transform: scale(1.03);
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>Welcome Back all</h2>
    <form action="/login" method="POST">
      <input type="text" placeholder="Username" name="username" required>
      <input type="password" placeholder="Password" name="password" required>
      <div class="forgot">
        <a href="#">Forgot password?</a>
      </div>
      <input type="submit" value="Login">
    </form>
  </div>
</body>
</html>
