# Richard Hauers hemsida – projektöversikt

Senast uppdaterad: 2026-09-14

## Vad detta är
Personlig hemsida för Richard Hauer, gitarrist & gitarrlärare. Statisk sajt (ren HTML/CSS/JS, inget byggsystem) som ligger på GitHub Pages.

- **Domän:** richardhauer.com (via CNAME-filen)
- **Repo:** https://github.com/Plisken78/plisken78.github.io (branch `main`)
- **Publicering:** Dubbelklicka `synka-till-github.command` – den committar allt med tidsstämpel och pushar. Push = sajten uppdateras automatiskt.
- Mappen ligger i iCloud (CLAUDE/Hemsida) och är samtidigt git-repot.

## Sidor
| Fil | Innehåll |
|---|---|
| `index.html` | Startsida: hero, om mig, musiker/lärare, grupper, bildgalleri, musik, kontakt |
| `ballader.html` | Ballader i Bohuslän |
| `duo2much.html` | Duo 2Much |
| `jardvall.html` | Alexandra Jardvall & The SWE Street Band |
| `waltz-for-debbie.html` | Waltz for Debbie – A tribute to Monica Z |
| `forelasning/musikeryrket.html` | Föreläsning "Att jobba som musiker" (slides-liknande) |
| `notlasning/notlasning.html` | Notläsningsövning – spelar upp MusicXML-låtar listade i `notlasning/songs.json` |
| `teknik/vikingline-2026.html` | Teknikunderlag (kanallista, stageplot, returer) för Greetings From Sweden, Viking Line 3–4 sep 2026. Olänkad + `noindex` – URL skickas direkt till ljudteknikern. Har ljus print-stil. |
| `macken/index.html` | Macken 40 år – showsida (premiär 26/9 2026, 14 föreställningar, Kajskjul 8). **Står `noindex` tills Richard godkänt texten**; ta bort raden för att publicera. Ännu inte länkad från startsidans Macken-kort, som pekar på Kajskjul 8:s biljettsida. |
| `macken/kanallista.html` | Teknikunderlag, **rev 2 sedan 10 sep 2026** (28 kanaler in, 11 returer, lurar + trådlöst per position, öppna frågor) för Macken 40 år. Ny revision = uppdatera "Version"-faktan och listan "Ändrat sedan rev N" överst. Olänkad + `noindex` – URL skickas direkt till ljudteknikern. Samma print-stil som vikingline-sidan. **Ligger medvetet under `macken/`** så att en bakåtnavigering från kanallistan landar på showsidan. |
| `macken/cuekort.html` | Cuekort för kapellmästare/gitarr (Macken 40 år) – kortlista per akt med cue-repliker, attacca, omtag, rigg/preset och "att lösa". Olänkad + `noindex` – URL skickas direkt till bandet och regissören. Egen ljus print-stil (A4), innehållet ligger i `SHOW`-arrayen längst ner i filen – ändra bara där. **Redigeras direkt i `macken/cuekort.html`** – originalet i `INBOX/` är bara leveransen, död efter första publiceringen 9 sep 2026. Konventioner: se "Cuekortet" nedan. |

## Bilder
- `img/bildspel/` – ca 65 bilder till galleriet/bildspelet på startsidan
- `img/grafik-sidan/`, `img/waltz/`, `img/jardvall/` – grafik per sida

## Stil & ton
- Typsnitt: Cormorant Garamond (rubriker) + Inter (brödtext) via Google Fonts
- Svenska som språk på sajten
- Externa länkar: Spotify, YouTube (plisken1978), Instagram (@richardhauer, @tidlosatoner), jamladies.se, frettio.com
- Kontakt: richardhauer@me.com, 070-878 11 16

## Att tänka på
- `INBOX/` är Richards arbetsmapp för underlag – **git-ignorerad**, publiceras aldrig
- `teknik/`-sidor är olänkade från menyn med `<meta name="robots" content="noindex">`; dela URL:en manuellt
- **Teknikunderlag som hör till en show läggs under showens egen mapp** (`macken/kanallista.html`), inte i `teknik/` — då landar man på showsidan när man backar i URL:en. `teknik/` är kvar för underlag utan egen showsida, som vikingline-2026.
- **Länka bara nedåt i mottagarkrets.** Underlagen under `macken/` har olika publik:
  kanallistan går till ljudteknikerna, cuekortet till bandet och regissören. Cuekortet
  länkar därför TILL kanallistan, men kanallistan länkar aldrig tillbaka — cuekortet bär
  ofärdiga omtag och en "att lösa"-lista som inte hör hemma hos en inhyrd tekniker.
  Samma resonemang gäller nästa show: fråga vem som får URL:en, inte vad som är praktiskt.
- 🔒 **Teknikunderlag: skriv ROLL, inte namn — och ÖNSKEMÅL, inte skäl (infört 6 sep 2026).**
  Kanalerna heter `Trummor`, `Keys`, `Elbas`, `Trumpet`, `Gitarr kör`, `Talkback` — inte
  musikernas förnamn. Richards eget namn står bara på kontaktkortet, där det behövs.
  **Skälet är konkret:** kanallistan bar raden *"kör inte in-ear, medicinska skäl"* med
  namn, på en URL som skulle skickas till hela bandet och två ljudtekniker. Ett
  teknikunderlag vidarebefordras i flera led och hamnar i mejlkorgar ingen överblickar.
  ⚠️ **Roller räcker inte ensamt — ta bort motiveringen också.** Även utan namn pekar
  "trummisen har medicinska skäl" ut en person för var och en som känner bandet.
  **Teknikern behöver kravet, aldrig orsaken:** skriv *"trumpositionen ska ha
  wedge-lyssning"* och sluta där. Richards egna ord 6/9: *"Vi behöver inte hänga ut något
  med sådant. Vi skriver bara vad vi önskar."*
- ⚠️ **Repot är PUBLIKT — en städad fil räcker inte.** Namnen och den medicinska raden låg
  kvar läsbara i git-historiken sedan tidigare commits även efter att sidan städats.
  Historiken skrevs om 6/9 (fyra commits → `8272929`) och force-pushades med
  `--force-with-lease`. **Tänk på det INNAN första committen**, inte efter: det som
  committas i det här repot är publicerat i samma sekund, även om filen ändras sedan.
  *(En force-push gör gamla commits onåbara, inte omedelbart raderade — GitHub behåller
  dem tills serverns städning kör.)*
- Allt är single-file-sidor: CSS/JS ligger inline i respektive HTML-fil

## Cuekortet (`macken/cuekort.html`) — konventioner (stor revision 14 sep 2026)
- **Arbetssätt som fungerade:** Richard dikterar en ändring per kort ("2:4 lägg till …"), Claude ändrar direkt i filen utan att committa, allt går ut i EN commit när han säger "kör ut". Repot är publikt — varje commit är publicerad, så vänta med den.
- **Kortnumret är `akt:löpnummer`** och räknas av renderingen, inte av fältet `card:` i arrayen (det står kvar som gamla siffror och betyder ingenting). Pauser räknas inte.
- **Showen är EN akt (Akt 2) med två aktpauser inuti** — ingen ny `{akt:…}`-markör efter pauserna, numreringen fortsätter 2:5, 2:6 … Richard 14/9: *"det är en akt, behåll upplägget"*.
- **`paus`-text som börjar med `AKTPAUS` ritas som svart balk** (regex `/^AKTPAUS/`) — behåll prefixet: `AKTPAUS 1 – …`, `AKTPAUS 2 – …`. Det FOH kör under pausen står i pausraden; kortet efter börjar med den cue som bryter pausen (`{kind:"cue", who:"FOH", text:"Radioprat Claes", sub:"Avbryter aktpaus 1 …"}`).
- **FOH kör alla ljud-cuer OCH tracks** (sedan 14/9). Inget ljud startas från scenen längre — skriv aldrig tillbaka SPD-SX/backtrack på en musiker.
- **Ordning på ett kort:** CUE IN → LÅT (Richard läser cuen och har låten under) → OMTAG. Efter en inräkning står låttiteln som egen `song`-rad.
- **`who` är valfritt på en cue** — utan namn ritas bara repliken (förut blev det "undefined:"). Fråga ändå vem som säger den.
- **Omtag- och ackordtext skrivs ORDAGRANT.** Richards notation: **komma = taktslut, mellanslag = två ackord i samma takt** — `F#m, Bm, E, A F#m, Bm E, A` är sex takter. "Rätta" aldrig ett saknat komma, och behåll `b` eller `♭` som han skrev det.
- **`todo` blir raden i "Att lösa före premiär".** Byts en `todo` mot ett `omtag` försvinner punkten ur listan — säg det när det händer.
- **Publicering:** Claude pushar själv över SSH (`git push origin main`), `synka-till-github.command` behövs inte. Sidan ligger på GitHub Pages (inte bakom Cloudflare Access) och **går** att verifiera med curl — ny version live efter ~60 s. URL:en är densamma, men utskrivna kort måste skrivas ut på nytt; säg det till bandet.
- Notläsningssidan: nya låtar = lägg .musicxml i `notlasning/songs/` + rad i `songs.json`
- Richard vill ha enkelt och konkret – ändra direkt i filerna, synka med .command-scriptet
