# ElectroCat — EAC2

Entrega de l'EAC2 del mòdul M0373.

## Veure la web

Des d'aquesta carpeta, iniciar un servidor local:

```bash
python3 -m http.server 8000
```

Obrir `http://localhost:8000/index.html` al navegador.

## Transformació XSLT

La pàgina de punts es troba a `electracat_erazo.xml`. Cal obrir-la mitjançant
un servidor local; els navegadors poden bloquejar la transformació XSLT si
s'obre directament com a fitxer.

## Activitat 4: JSON Server i Postman

Iniciar el servidor amb:

```bash
npx json-server@0.17.4 --watch db.json
```

Després, importar `conversioJson.json` a Postman amb **Import → File**.
Executar les vuit peticions en ordre i guardar les captures per a
`respostes.pdf`.

## Activitat 6: data i hora al terminal

En bash, el comandament és `date`. `Get-Date` només existeix a PowerShell.

```bash
date '+%d/%m/%Y %H:%M:%S'
```

Executar-lo abans de cada consulta `jq` perquè la captura demostri el moment
en què s'ha realitzat la consulta.

## Abans de lliurar

- Afegir `respostes.pdf` amb les evidències de les activitats 4, 5 i 6.
- Posar tots els fitxers dins `ADD_M0373_EAC2_Erazo_Chacon`.
- Comprimir la carpeta des de fora: `ADD_M0373_EAC2_Erazo_Chacon.zip`.
