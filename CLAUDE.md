# Richard Hauers hemsida – projektöversikt

Senast uppdaterad: 2026-08-24

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
| `macken/kanallista.html` | Teknikunderlag (26 kanaler in, 13 returer, öppna frågor) för Macken 40 år. Olänkad + `noindex` – URL skickas direkt till ljudteknikern. Samma print-stil som vikingline-sidan. **Ligger medvetet under `macken/`** så att en bakåtnavigering från kanallistan landar på showsidan. |

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
- Notläsningssidan: nya låtar = lägg .musicxml i `notlasning/songs/` + rad i `songs.json`
- Richard vill ha enkelt och konkret – ändra direkt i filerna, synka med .command-scriptet
