<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pregunta Especial</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #fce4ec;
            font-family: Arial, sans-serif;
            text-align: center;
         
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        .buttons {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 100px;
        }
        .btn {
            width: 80px;  /* Establecemos un tamaño fijo */
            height: 50px;  /* Establecemos un tamaño fijo */
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .yes {
            background-color: #4caf50;
            color: white;
        }
        .no {
            background-color: #f44336;
            color: white;
            position: absolute;
        }
        .invisible-btn {
            width: 80px;  /* Mismo tamaño que el botón "No" */
            height: 50px;  /* Mismo tamaño que el botón "No" */
            
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Me gustas, ¿Aceptas una cita conmigo?</h1>
        <div class="buttons">
            <button class="btn yes" onclick="alert('¡Sabía que dirías que sí! 💖')">Sí</button>
            <button class="invisible-btn" id="invisibleBtn"></button> <!-- Botón invisible -->
            <button class="btn no" id="noBtn" aria-label="No" title="No me aceptes 😅">No</button>
        </div>
    </div>
    <script>
        const noBtn = document.getElementById("noBtn");

        noBtn.addEventListener("mouseover", function() {
            const x = Math.random() * (window.innerWidth - noBtn.offsetWidth);
            const y = Math.random() * (window.innerHeight - noBtn.offsetHeight);
            noBtn.style.left = `${x}px`;
            noBtn.style.top = `${y}px`;
        });
    </script>
</body>
</html>
