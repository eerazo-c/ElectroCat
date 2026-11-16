<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="ca">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>ElectroCat | Punts de recàrrega</title>
        <style>
          * { box-sizing: border-box; } body { margin:0; color:#102a43; font:16px/1.5 system-ui, sans-serif; background:#f4f9fb; }
          header { display:flex; align-items:center; justify-content:space-between; gap:2rem; padding:14px 5%; background:#fff; border-bottom:1px solid #d5e2ea; }
          .brand { font-size:1.25rem; font-weight:800; } .brand small { display:block; color:#5d7285; font-weight:400; font-size:.78rem; }
          nav { display:flex; flex-wrap:wrap; gap:.3rem; } nav a { color:#102a43; text-decoration:none; padding:.5rem .75rem; border-radius:99px; font-weight:700; } nav a:hover,nav a.active { color:#fff; background:#1261a6; }
          main { max-width:1500px; margin:auto; padding:4rem 5%; } h1 { font-size:clamp(2rem,5vw,3.5rem); letter-spacing:-.04em; margin:.2rem 0 .5rem; } .eyebrow { color:#008863; font-size:.78rem; font-weight:800; letter-spacing:.12em; text-transform:uppercase; }
          .table-wrap { overflow-x:auto; background:#fff; border:1px solid #d5e2ea; border-radius:.7rem; } table { width:100%; border-collapse:collapse; min-width:1000px; } th,td { padding:.85rem 1rem; text-align:left; border-bottom:1px solid #d5e2ea; } th { background:#102a43; color:#fff; } tr.destacat { background:#e5faf3; } tr.destacat td:first-child { border-left:5px solid #00a878; } .back { display:inline-block; margin-top:1.5rem; color:#fff; background:#1261a6; border-radius:.4rem; padding:.65rem .9rem; font-weight:700; text-decoration:none; }
          footer { padding:2rem 5%; text-align:center; background:#102a43; color:#dbe8f0; font-size:.88rem; } @media(max-width:700px) { header { align-items:flex-start; flex-direction:column; gap:.7rem; } main { padding-top:2.5rem; } }
        </style>
      </head>
      <body>
        <header><div class="brand">ElectroCat <small>Xarxa de Recàrrega</small></div><nav><a href="index.html">Portada</a><a class="active" href="electracat_erazo.xml">Punts de recàrrega XSL</a><a href="fitxes.html">Fitxes</a></nav></header>
        <main><p class="eyebrow">Consulta operativa</p><h1>Punts de recàrrega</h1><p>Informació actualitzada de la xarxa ElectraCat.</p><div class="table-wrap"><table><thead><tr><th>ID</th><th>Responsable</th><th>Codi operador</th><th>Tipus</th><th>Nom</th><th>Ubicació</th><th>Data</th><th>Places</th><th>Disponibles</th><th>Destacat</th></tr></thead><tbody><xsl:for-each select="puntsRecarrega/puntRecarrega"><tr><xsl:if test="@DESTACAT = 'sí'"><xsl:attribute name="class">destacat</xsl:attribute></xsl:if><td><xsl:value-of select="@id"/></td><td><xsl:value-of select="RESPONSABLE"/></td><td><xsl:value-of select="CODI_OPERADOR"/></td><td><xsl:value-of select="TIPUS"/></td><td><xsl:value-of select="NOM"/></td><td><xsl:value-of select="UBICACIO"/></td><td><xsl:value-of select="DATA"/></td><td><xsl:value-of select="PLACES"/></td><td><xsl:value-of select="DISPONIBLES"/></td><td><xsl:value-of select="@DESTACAT"/></td></tr></xsl:for-each></tbody></table></div><a class="back" href="index.html">← Tornar a la portada</a></main>
        <footer>Elizabeth Erazo · CFGS Desenvolupament d'Aplicacions Web · M0373 Llenguatge de marques i sistemes de gestió d'informació</footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
