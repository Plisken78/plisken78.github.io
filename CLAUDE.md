# Richard Hauers hemsida – projektöversikt

Senast uppdaterad: 2026-06-10 (synktest)

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

## Bilder
- `img/bildspel/` – ca 65 bilder till galleriet/bildspelet på startsidan
- `img/grafik-sidan/`, `img/waltz/`, `img/jardvall/` – grafik per sida

## Stil & ton
- Typsnitt: Cormorant Garamond (rubriker) + Inter (brödtext) via Google Fonts
- Svenska som språk på sajten
- Externa länkar: Spotify, YouTube (plisken1978), Instagram (@richardhauer, @tidlosatoner), jamladies.se, frettio.com
- Kontakt: richardhauer@me.com, 070-878 11 16

## Att tänka på
- Allt är single-file-sidor: CSS/JS ligger inline i respektive HTML-fil
- Notläsningssidan: nya låtar = lägg .musicxml i `notlasning/songs/` + rad i `songs.json`
- Richard vill ha enkelt och konkret – ändra direkt i filerna, synka med .command-scriptet
