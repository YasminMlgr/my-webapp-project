<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World Refined</title>
    <style>
        /* This centers everything on the screen */
        body {
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: white;
        }
        .main-content {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        footer {
            text-align: center;
            padding: 10px;
            background: rgba(0, 0, 0, 0.2);
            color: white;
        }
        h2 {
            font-size: 4rem;
            text-shadow: 2px 4px 10px rgba(0, 0, 0, 0.3);
            animation: fadeIn 2s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }

mvn            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="main-content">
        <h2>Hello World!</h2>

        <% String status = request.getParameter("status");
           if ("success".equals(status)) { %>
            <p style="color: lightgreen;">Thank you for your message! We will get back to you soon.</p>
        <% } %>

        <div style="background: rgba(255, 255, 255, 0.1); padding: 20px; border-radius: 10px; box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);">
            <h3>Contact Us</h3>
            <form action="ContactServlet" method="post">
                <label for="name">Name:</label><br>
                <input type="text" id="name" name="name" required><br><br>
                <label for="email">Email:</label><br>
                <input type="email" id="email" name="email" required><br><br>
                <label for="message">Message:</label><br>
                <textarea id="message" name="message" required></textarea><br><br>
                <input type="submit" value="Submit">
            </form>
        </div>
    </div>
    <footer>
        © 2026 My Web App Project. All rights reserved.
    </footer>
</body>
</html>