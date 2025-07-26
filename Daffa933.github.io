<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>dpsssWebHtml</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f0f8f5;
      color: #2c3e50;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 40px 20px;
      text-align: center;
    }

    h1 {
      font-size: 2em;
      margin-bottom: 10px;
    }

    img {
      max-width: 100%;
      height: auto;
      border-radius: 10px;
      margin: 30px 0 20px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }

    .question {
      margin-top: 20px;
      font-size: 18px;
    }

    .options {
      margin-top: 20px;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .options button {
      background-color: #4caf50;
      color: white;
      border: none;
      padding: 12px 20px;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .options button:hover {
      background-color: #388e3c;
    }

    .response {
      margin-top: 30px;
      font-size: 18px;
      color: #1a237e;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <h1>Halo! Selamat datang di dpsssWebHtml</h1>

  <!-- Gambar disematkan dalam bentuk Base64 -->
  <img src="https://i.postimg.cc/T1K1TkpF/foto.jpg=" alt="Foto matcha rasa rumput">

  <!-- Pertanyaan -->
  <div class="question">
    <p><strong>Berdasarkan foto diatas, benarkah yang ia katakan?</strong></p>
    <div class="options">
      <button onclick="showResponse('A')">A. salah</button>
      <button onclick="showResponse('B')">B. benar</button>
      <button onclick="showResponse('C')">C. mana saya tau</button>
      <button onclick="showResponse('D')">D. kesukaan aing tuh</button>
    </div>
    <div class="response" id="responseText"></div>
  </div>

  <!-- Script untuk menampilkan respons -->
  <script>
    function showResponse(pilihan) {
      const response = document.getElementById("responseText");
      switch (pilihan) {
        case 'A':
          response.textContent = "wahh, kamu penyuka matcha??";
          break;
        case 'B':
          response.textContent = "kamu tidak suka dengan matcha?, Saya juga, tapi itu tidak rispek banget wok";
          break;
        case 'C':
          response.textContent = "dijawab cik, jangan gatau aja kamu";
          break;
        case 'D':
          response.textContent = "masa sih?, Kerenn, sebenernya kalo saya, sukanya coklat sih🗿";
          break;
      }
    }
  </script>

</body>
</html
