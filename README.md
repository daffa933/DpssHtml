<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Kirim Pesan</title>
  <style>
    body {
      font-family: sans-serif;
      max-width: 600px;
      margin: 50px auto;
      text-align: center;
    }
    textarea {
      width: 100%;
      height: 100px;
      margin-bottom: 20px;
    }
    #linkContainer {
      margin-top: 20px;
    }
    .pesan {
      font-size: 1.2em;
      color: #444;
      border: 1px solid #ccc;
      padding: 20px;
      background: #f9f9f9;
      border-radius: 10px;
    }
  </style>
</head>
<body>
  <h1>Kirim Pesan ke Teman</h1>

  <div id="formSection">
    <textarea id="pesanInput" placeholder="Tulis pesanmu di sini..."></textarea><br>
    <button onclick="buatLink()">Buat Link</button>
    <div id="linkContainer"></div>
  </div>

  <div id="tampilanPesan" style="display:none;">
    <h2>Pesan untukmu:</h2>
    <div class="pesan" id="isiPesan"></div>
  </div>

  <script>
    // Cek apakah ada pesan di URL
    const params = new URLSearchParams(window.location.search);
    const pesan = params.get("pesan");

    if (pesan) {
      document.getElementById("formSection").style.display = "none";
      document.getElementById("tampilanPesan").style.display = "block";
      document.getElementById("isiPesan").textContent = decodeURIComponent(pesan);
    }

    function buatLink() {
      const teks = document.getElementById("pesanInput").value;
      if (!teks) {
        alert("Tolong tulis pesannya dulu!");
        return;
      }
      const encodedPesan = encodeURIComponent(teks);
      const link = `${window.location.origin}${window.location.pathname}?pesan=${encodedPesan}`;
      document.getElementById("linkContainer").innerHTML = `
        <p>Bagikan link ini:</p>
        <input type="text" value="${link}" readonly style="width:100%; padding:10px;" onclick="this.select()">
      `;
    }
  </script>
</body>
</html
