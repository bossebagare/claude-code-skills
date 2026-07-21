# Nordic Precision — UI Design System

**Version:** 1.0
**Status:** Fastställd grundstandard
**Datum:** 2026-07-21
**Språk:** Svenska
**Källa:** Notion, "Nordic Precision — UI Design System", under WIKI — Strukturerad kunskap → Westila AI Hub. Denna fil är en spegling för lokal/portabel användning (git, andra AI-tjänster) — Notion-sidan är master.

> Gemensam UI-standard för alla appar och AI-tjänster. Läs hela dokumentet innan ett gränssnitt skapas eller ändras.

## 1. Syfte

Nordic Precision är den gemensamma UI-standarden för appar, webbverktyg, desktopprogram, dashboards och interna system i denna projektfamilj.

Standarden ska göra att produkter:
- känns sammanhängande även när de byggs med olika ramverk eller AI-tjänster;
- ser moderna, lugna och professionella ut;
- presenterar mycket information utan att kännas trånga;
- är tydliga, snabba och tillgängliga;
- kan ha olika färgidentitet utan att bli olika designsystem.

Detta dokument är normativt. Orden **ska**, **bör** och **får** används med följande betydelse:
- **Ska:** obligatorisk regel.
- **Bör:** rekommenderad regel; avvikelse kräver ett tydligt skäl.
- **Får:** tillåten möjlighet.

## 2. Beslutad designriktning

Nordic Precision kombinerar två egenskaper:
1. **Nordic Utility:** lugn, modern och skandinavisk tydlighet.
2. **Data Dense:** stram struktur, effektiv informationsvisning och tydliga arbetsflöden.

Resultatet ska kännas modernt och välgjort, men aldrig dekorativt för dekorationens skull. Gränssnittet ska vara mjukare än ett traditionellt industriellt administrationssystem men skarpare och mer informationseffektivt än ett typiskt konsumentgränssnitt.

### 2.1 Kärnegenskaper

- Neutral grund med sparsamt använd accentfärg.
- Något skarpa, lätt rundade hörn.
- Tunna avgränsare och få skuggor.
- Kompakt men inte trång layout.
- Tydlig hierarki mellan sida, sektion, kontroll och data.
- Tabeller och listor prioriteras framför onödiga kort.
- Färg används för handling, val och betydelse – inte som utfyllnad.
- Samma komponentstruktur används i alla färgprofiler.

## 3. Systemets tre lager

Nordic Precision består av tre separata lager. De får inte blandas ihop.

### 3.1 Lager 1: fast grund

Gemensamt för samtliga produkter: typografi, avståndsskala, hörnradier, komponentstruktur, navigationsmönster, ikonstil, semantiska statusfärger, interaktionsprinciper, tillgänglighetskrav.

### 3.2 Lager 2: accentprofil

Accentprofilen ger produkten identitet. Tillåtna profiler:
- **Nordic Blue** – standard;
- **Fjord Teal** – alternativ för teknik och produktivitet;
- **Warm Copper** – alternativ för privata, kreativa eller mänskligare produkter.

Accentprofilen får ändra primära handlingar, aktiv navigation, länkar, fokus och diskreta markerade ytor. Den får INTE ändra betydelsen av framgång, varning, fel eller risk.

### 3.3 Lager 3: visningsläge

Varje produkt ska stödja:
- **System** – standardval; följer operativsystemets inställning;
- **Ljust**;
- **Mörkt**.

Det mörka läget kallas visuellt **Midnight**, men är ett visningsläge och inte en fristående accentprofil.

### 3.4 Officiella temanamn

Temanamnen ska visas konsekvent i användargränssnitt, dokumentation och AI-instruktioner.

**Ljusa teman**

| Internt värde | Visningsnamn | Accentprofil | Visningsläge |
|---|---|---|---|
| `nordic-blue` | Nordic Blue | Nordic Blue | Ljust |
| `fjord-teal` | Fjord Teal | Fjord Teal | Ljust |
| `warm-copper` | Warm Copper | Warm Copper | Ljust |

**Mörka teman**

| Internt värde | Visningsnamn | Accentprofil | Visningsläge |
|---|---|---|---|
| `midnight-blue` | Midnight Blue | Nordic Blue | Mörkt |
| `midnight-teal` | Midnight Teal | Fjord Teal | Mörkt |
| `midnight-copper` | Midnight Copper | Warm Copper | Mörkt |

**Midnight** är samlingsnamnet för hela den mörka familjen. Om bara ett mörkt standardtema kan erbjudas ska **Midnight Teal** användas, eftersom cyan/teal ger god separation mot den mörka neutrala grunden.

**Rekommenderad presentation i inställningar:**
- **Färgprofil:** Nordic Blue / Fjord Teal / Warm Copper
- **Utseende:** System / Ljust / Mörkt

Det fullständiga temanamnet kan visas som förhandsvisning/sammanfattning, t.ex. **Midnight Teal**.

## 4. Val av profil per produkttyp

| Produkttyp | Rekommenderad profil | Alternativ | Motivering |
|---|---|---|---|
| Trading, ekonomi och analys | Nordic Blue | Fjord Teal | Stabilt, förtroendeingivande och tydligt |
| CAD, 3D, konvertering och ingenjörsverktyg | Fjord Teal | Nordic Blue | Tekniskt, modernt och distinkt |
| Filhantering och automatisering | Fjord Teal | Nordic Blue | Passar arbetsflöden och teknisk statusinformation |
| Företags- och administrationssystem | Nordic Blue | Fjord Teal | Universellt och professionellt |
| Generella webb- och desktopappar | Nordic Blue | Fjord Teal | Säker standard med lång livslängd |
| Privata projekt och personliga verktyg | Warm Copper | Nordic Blue | Varmare och mindre institutionellt |
| Kreativa verktyg och innehållsappar | Warm Copper | Fjord Teal | Mer mänsklig och uttrycksfull identitet |
| Utvecklarverktyg och kontrollpaneler | Fjord Teal + mörkt läge | Nordic Blue + mörkt läge | Bra läsbarhet under långa sessioner |
| Produkt med okänd eller blandad målgrupp | Nordic Blue | – | Standardprofilen ska användas när inget starkt skäl finns |

Profilen ska normalt väljas av produktägaren. Slutanvändaren får erbjudas accentval om produkten är personlig eller används ofta, men en rekommenderad standard ska alltid finnas.

## 5. Färgsystem

### 5.1 Grundprinciper

- Neutrala färger ska bära merparten av gränssnittet.
- Accentfärg ska användas sparsamt.
- Endast en primär accentprofil ska vara aktiv åt gången.
- Färg får aldrig vara den enda bäraren av betydelse; använd även text, ikon eller form.
- Text- och kontrollkontrast ska uppfylla WCAG 2.2 AA.
- Exakta färgvärden får finjusteras vid kontrasttestning, men deras semantiska roller ska bevaras.

### 5.2 Semantiska färgvariabler

Använd semantiska namn i kod. Komponenter får inte hårdkoda profilfärger direkt.

**Ljust läge**

| Token | Värde | Användning |
|---|---|---|
| `background` | `#F6F7F9` | Appens huvudsakliga bakgrund |
| `surface` | `#FFFFFF` | Paneler, verktygsfält och kontrollerade ytor |
| `sidebar` | `#EEF0F3` | Navigation och sekundära områden |
| `text-primary` | `#15181D` | Primär text |
| `text-secondary` | `#66707C` | Hjälptext och metadata |
| `border` | `#D8DDE4` | Avgränsare och komponentkanter |
| `success` | `#168267` | Klart, positivt och godkänt |
| `warning` | `#B56318` | Varning och pågående uppmärksamhet |
| `danger` | `#C2414B` | Fel, destruktiv handling och risk |

**Mörkt läge – Midnight**

| Token | Värde | Användning |
|---|---|---|
| `background` | `#10151B` | Appens huvudsakliga bakgrund |
| `surface` | `#171E26` | Paneler och verktygsfält |
| `sidebar` | `#131A21` | Navigation och sekundära områden |
| `text-primary` | `#EDF4F6` | Primär text |
| `text-secondary` | `#9DAAB4` | Hjälptext och metadata |
| `border` | `#2D3944` | Avgränsare och komponentkanter |
| `success` | `#42C59E` | Klart, positivt och godkänt |
| `warning` | `#E6A44C` | Varning och pågående uppmärksamhet |
| `danger` | `#ED6B76` | Fel, destruktiv handling och risk |

### 5.3 Accentprofiler

**Nordic Blue** — standard för generella, ekonomiska och administrativa produkter.

| Läge | accent | accent-foreground | accent-soft | accent-soft-foreground |
|---|---|---|---|---|
| Ljust | `#315BD6` | `#FFFFFF` | `#E7ECFB` | `#24459F` |
| Mörkt | `#5F83ED` | `#071016` | `#22345F` | `#B8C9FF` |

**Fjord Teal** — rekommenderas för CAD, teknik, produktivitet, filhantering och automatisering.

| Läge | accent | accent-foreground | accent-soft | accent-soft-foreground |
|---|---|---|---|---|
| Ljust | `#087F75` | `#FFFFFF` | `#DCEFEB` | `#08655E` |
| Mörkt | `#23B8C5` | `#071619` | `#173C42` | `#8BE0E5` |

**Warm Copper** — rekommenderas för privata, kreativa och mer mänskliga produkter.

| Läge | accent | accent-foreground | accent-soft | accent-soft-foreground |
|---|---|---|---|---|
| Ljust | `#A95027` | `#FFFFFF` | `#F4E3D7` | `#803D20` |
| Mörkt | `#E18455` | `#071016` | `#4A2D22` | `#FFC4A5` |

### 5.4 Tillåten användning av accent

**Ska användas för:** primär knapp, aktiv navigation, valt alternativ, länkar, fokusmarkering, progressindikator (när den inte uttrycker status), enstaka diskreta märkesdetaljer.

**Ska inte användas för:** stora dekorativa bakgrundsytor, all text eller alla ikoner, tabellrader utan vald status, framgång/varning/fel, flera konkurrerande primära handlingar på samma yta.

## 6. Form och geometri

### 6.1 Hörnradier

| Token | Värde | Användning |
|---|---|---|
| `radius-xs` | `2px` | Små indikatorer och mycket kompakta element |
| `radius-sm` | `3px` | Statusetiketter, tabellmarkeringar |
| `radius-md` | `4px` | Knappar, fält, selects och ikonytor |
| `radius-lg` | `5px` | Paneler, dialoger och större ytor |
| `radius-full` | `999px` | Endast cirklar, avatarer, reglage och verkliga pills |

Regler: inga stora bubbliga radier. Gör inte vanliga knappar pillformade. Nästlade ytor ska inte få successivt större rundning. Samma komponenttyp ska ha samma radie i alla produkter.

### 6.2 Kanter och skuggor

- Standardkant är `1px solid border`.
- Använd kanter före skuggor för att skapa struktur.
- Vanliga paneler ska normalt inte ha skugga.
- Menyer, popovers och modaler får ha en diskret skugga för lagerseparation.
- Undvik glow, kraftig blur och flera samtidiga skuggor.

## 7. Avstånd och densitet

4-pixels grundskala:

| Token | Värde |
|---|---|
| `space-1` | `4px` |
| `space-2` | `8px` |
| `space-3` | `12px` |
| `space-4` | `16px` |
| `space-5` | `20px` |
| `space-6` | `24px` |
| `space-8` | `32px` |

### 7.1 Densitetsregler

- Standardavstånd mellan närliggande kontroller: `8px`.
- Standardavstånd mellan relaterade grupper: `12px`.
- Standardinre avstånd i paneler: `12–16px`.
- Standardavstånd mellan större sektioner: `20–24px`.
- Tabeller får vara kompaktare än formulär.
- Touchbaserade produkter ska öka träffytan utan att visuellt förstora allt.
- Luft ska användas för hierarki, inte för att göra varje element till ett separat kort.

## 8. Typografi

### 8.1 Typsnitt

```css
font-family: Inter, "Segoe UI", system-ui, -apple-system, sans-serif;
```

Om Inter inte finns ska systemets gränssnittstypsnitt användas. Ett projekt får inte byta till ett dekorativt typsnitt utan särskilt beslut.

### 8.2 Vikter

- Brödtext: `400`.
- Knappar, etiketter och rubriker: `500`.
- Undvik `600–900` som standard; kraftig fetstil gör täta gränssnitt visuellt tunga.

### 8.3 Rekommenderad skala

| Roll | Storlek | Användning |
|---|---|---|
| `caption` | `12px` | Metadata och kompakta statusbeskrivningar |
| `body-sm` | `13px` | Täta tabeller och sekundär UI-text |
| `body` | `14px` | Standardtext och kontroller |
| `body-lg` | `16px` | Viktigare introduktioner |
| `heading-sm` | `18px` | Panel- eller sektionsrubrik |
| `heading-md` | `22px` | Sidrubrik |
| `metric` | `24–28px` | Viktiga numeriska värden |

Text under `12px` ska undvikas.

## 9. Ikoner

- Använd ett sammanhängande linjeikonbibliotek, i första hand **Lucide**.
- Standardstorlek är `16px`; större huvudikoner får vara `20–24px`.
- Ikoner ska normalt ha samma färg som intilliggande text.
- Ikoner får inte vara enda förklaringen till en viktig handling.
- Blanda inte fyllda, handritade och linjebaserade ikonstilar.
- Dekorativa ikoner ska döljas för skärmläsare.

## 10. Layout

### 10.1 Appskal

Desktop- och webbverktyg bör använda:
1. en kompakt toppbar med produktidentitet och globala handlingar;
2. en vänsterställd sidnavigation när produkten har flera huvudområden;
3. en tydlig sidrubrik med kontext och högst en primär sidhandling;
4. huvudinnehåll som prioriterar arbetsflödet;
5. en sekundär panel endast när inställningar eller resultat behöver vara synliga samtidigt.

### 10.2 Responsivitet

- Desktoplayout får inte bara krympas på mobil.
- Sidnavigation ska kollapsa eller bli horisontell på smala skärmar.
- Tvåkolumnslayout ska övergå till en kolumn när innehållet annars blir trångt.
- Tabeller får använda horisontell rullning när kolumner inte kan prioriteras bort.
- Viktiga handlingar ska förbli synliga och nåbara.

## 11. Komponentregler

### 11.1 Knappar

Tillåtna nivåer:
- **Primary:** sidans eller panelens viktigaste handling.
- **Secondary:** normal handling med neutral yta eller kant.
- **Ghost:** navigation, verktygsrad och lågprioriterade handlingar.
- **Destructive:** radering eller irreversibel handling; använd `danger`.

Regler: högst en primär knapp per handlingsgrupp normalt. Använd verb ("Spara kalkyl", "Konvertera filer", "Skapa mapp"). Ikonknappar utan text ska ha tillgängligt namn och tooltip. Inaktiverad knapp ska fortfarande vara läsbar.

### 11.2 Formulär

- Etikett ska visas ovanför fältet.
- Placeholder får inte ersätta etiketten.
- Hjälptext och feltext ska ligga nära fältet.
- Fel ska uttryckas med text och ikon, inte bara röd färg.
- Relaterade fält ska grupperas; undvik en panel per fält.
- Standardhöjd för vanliga desktopfält och knappar bör vara cirka `36px`.

### 11.3 Paneler och kort

- Använd panel för en verklig funktionell gruppering.
- Använd inte kort för varje informationsbit.
- Sammanfattande nyckeltal får visas som en enkel rad med diskreta avgränsare.
- Undvik nästlade kort.
- Paneler ska normalt ha neutral yta, tunn kant och ingen skugga.

### 11.4 Tabeller

- Tabeller är förstahandsvalet för jämförbara poster och filköer.
- Rubriker ska vara korta och vänsterställda; numeriska värden högerställs.
- Använd diskreta horisontella avgränsare, inte fullständiga cellrutnät.
- Status ska visas med text plus diskret indikator.
- Radhandlingar ska ligga sist och vara konsekventa.
- Viktigaste identifieraren (t.ex. filnamn) ska vara visuellt tydligast.

### 11.5 Status och återkoppling

| Status | Färg | Kompletterande uttryck |
|---|---|---|
| Klart / positivt | `success` | Checkikon eller texten "Klart" |
| Pågår | Accent eller `warning` beroende på betydelse | Spinner, progress eller texten "Pågår" |
| Väntar / neutral | `text-secondary` | Klocka, punkt eller texten "Väntar" |
| Varning | `warning` | Varningsikon och förklarande text |
| Fel / risk | `danger` | Felikon och konkret åtgärd |

Progressindikatorer ska visa verkligt förlopp när det är känt. Använd inte falska procentvärden.

### 11.6 Filuppladdning

- Dropzone ska vara tydlig men inte dominera hela sidan.
- Visa accepterade format och storleksgräns.
- Erbjud alltid en synlig knapp för filval.
- Efter uppladdning ska filerna övergå till en tabell eller strukturerad lista.
- Visa filnamn, konvertering, status, förlopp och relevant radhandling.

### 11.7 Dialoger och bekräftelser

- Dialoger används bara när användaren måste slutföra eller bekräfta ett avgränsat steg.
- Destruktiva beslut ska ange konsekvensen tydligt.
- Avbryt ska vara lätt att hitta.
- Undvik dialog ovanpå dialog.

## 12. Navigation

- Aktiv destination använder `accent-soft` och `accent-soft-foreground`.
- Navigation ska inte använda den starka accentfärgen på varje rad.
- Grupper får ha diskreta versala sektionsetiketter.
- Mappantal och metadata ska vara sekundära.
- Produktnamn och produktikon ska ligga konsekvent i toppbaren.

## 13. Ljust, mörkt och systemstyrt läge

- Standardinställningen ska vara **System**.
- Användaren får välja **Ljust** eller **Mörkt** och valet ska sparas.
- Temaväxling får inte ändra layout, komponentstorlek eller semantisk betydelse.
- Mörkt läge ska använda egna tokens; invertera inte färger automatiskt.
- Ljusa färger ska dämpas i mörkt läge så att gränssnittet inte bländar.
- Bilder, diagram, fokusmarkeringar och tomlägen ska testas i båda lägena.
- Det aktiva kombinerade temanamnet bör visas i inställningarna, t.ex. **Nordic Blue** eller **Midnight Copper**.

## 14. Tillgänglighet

Varje implementation ska: uppfylla WCAG 2.2 AA för kontrast och interaktion; vara fullt användbar med tangentbord; visa en tydlig fokusmarkering; ha synliga etiketter för formulär; ge ikoner och ikonknappar tillgängliga namn; använda semantisk HTML eller motsvarande plattformssemantik; stödja reducerad rörelse; inte förmedla betydelse enbart med färg; ha klick- och tryckytor som är rimliga för plattformen; visa felmeddelanden som beskriver vad som gick fel och hur det kan rättas.

## 15. Rörelse

- Rörelse ska förklara förändring, inte dekorera.
- Standardövergångar bör ligga kring `120–200ms`.
- Använd mjuk ease-out för öppning och tillståndsbyte.
- Undvik studs, looping och stora rörelser i arbetsverktyg.
- Progress får animeras, men ska respektera reducerad rörelse.

## 16. Innehåll och tonalitet

- Skriv kort, konkret och handlingsorienterat.
- Använd vanlig meningskapitalisering, inte Titel På Varje Ord.
- Knappar ska börja med ett verb när handlingen inte redan är självklar.
- Felmeddelanden ska vara sakliga och hjälpa användaren vidare.
- Undvik intern teknisk jargong om den inte behövs av målgruppen.
- Svenska gränssnitt ska använda svenska tal- och datumformat.

## 17. Implementation med design tokens

Plattformsneutral struktur — namnen får översättas till CSS-variabler, JSON, Flutter Theme, SwiftUI, Android Compose eller annan teknik, men den semantiska modellen ska bevaras.

```json
{
  "color": {
    "background": "semantic",
    "surface": "semantic",
    "sidebar": "semantic",
    "textPrimary": "semantic",
    "textSecondary": "semantic",
    "border": "semantic",
    "accent": "profile-dependent",
    "accentForeground": "profile-dependent",
    "accentSoft": "profile-dependent",
    "accentSoftForeground": "profile-dependent",
    "success": "semantic-fixed",
    "warning": "semantic-fixed",
    "danger": "semantic-fixed"
  },
  "radius": { "xs": 2, "sm": 3, "md": 4, "lg": 5, "full": 999 },
  "space": [4, 8, 12, 16, 20, 24, 32],
  "font": {
    "family": "Inter, Segoe UI, system-ui, sans-serif",
    "weightRegular": 400,
    "weightMedium": 500
  }
}
```

## 18. Ramverk och komponentbibliotek

Standarden är inte låst till ett visst ramverk.

Rekommenderad utgångspunkt för React och webb: shadcn/ui eller motsvarande ägda komponenter, Radix-primitiver för tillgängligt beteende, Lucide för ikoner, semantiska CSS-variabler eller design tokens.

För andra plattformar ska den inbyggda komponentmodellen användas när den ger bättre tillgänglighet eller plattformsbeteende. Komponenterna ska därefter tematiseras enligt Nordic Precision — inte återuppfinnas enbart för att efterlikna webb.

## 19. Regler för AI-genererade gränssnitt

När en AI-tjänst skapar eller ändrar ett gränssnitt ska den:
1. läsa hela detta dokument innan implementation;
2. identifiera produkttyp och välja rekommenderad accentprofil;
3. använda Nordic Blue om produkttypen är oklar;
4. stödja System, Ljust och Mörkt;
5. använda semantiska tokens i stället för hårdkodade färger i komponenter;
6. återanvända befintliga komponenter före nya varianter;
7. prioritera tabell eller lista för jämförbara dataposter;
8. undvika överdriven kortdesign, stora radier, gradients, glow och dekorativa skuggor;
9. behålla success, warning och danger oberoende av accentprofil;
10. kontrollera responsivitet, tangentbord, fokus, kontrast, tomläge, laddning och fel;
11. fråga innan den introducerar en ny profil, typografi, radieskala eller komponentfamilj;
12. dokumentera motiverade avvikelser.

## 20. Färdig instruktion att ge en AI-tjänst

```plain text
Bygg eller uppdatera gränssnittet enligt Nordic Precision Design System i det bifogade MD-dokumentet. Läs hela dokumentet innan du ändrar något.

Behåll den gemensamma komponentstrukturen, typografin, avståndsskalan, de lätt rundade men precisa hörnen och den neutrala informationshierarkin. Välj accentprofil utifrån produkttypen: Nordic Blue som standard, Fjord Teal för tekniska och produktivitetsinriktade verktyg eller Warm Copper för privata och kreativa produkter. Stöd System, Ljust och Mörkt läge. Använd de officiella temanamnen Nordic Blue, Fjord Teal, Warm Copper, Midnight Blue, Midnight Teal och Midnight Copper.

Använd semantiska design tokens. Accentfärgen får inte ersätta färger för success, warning eller danger. Undvik stora hörnradier, överdriven kortdesign, kraftiga skuggor, gradients, glow och dekorativa animationer. Prioritera tydliga arbetsflöden, tabeller, listor och tillgängliga kontroller.

Återanvänd befintliga komponenter. Kontrollera responsivitet, tangentbordsnavigation, fokusmarkering, WCAG 2.2 AA-kontrast, laddning, tomläge, fel och reducerad rörelse. Om en nödvändig lösning strider mot designstandarden, redovisa konflikten och fråga innan du skapar en ny visuell regel.
```

## 21. Checklista före leverans

**Visuell konsekvens**
- [ ] Rätt accentprofil är vald för produkttypen.
- [ ] Endast semantiska färgroller används i komponenterna.
- [ ] Hörnradier följer skalan 2–5 px, med full radie endast där formen kräver det.
- [ ] Paneler har tunna kanter och normalt ingen skugga.
- [ ] Gränssnittet använder inte onödigt många kort.
- [ ] Typografi och ikonstil är konsekventa.

**Funktion och tillstånd**
- [ ] Hover, fokus, aktivt, valt och inaktiverat tillstånd finns.
- [ ] Laddning, tomläge, framgång, varning och fel är utformade.
- [ ] Status förmedlas med text eller ikon utöver färg.
- [ ] Primär handling är tydlig och konkurrerar inte med flera andra primära knappar.

**Tema och responsivitet**
- [ ] System, Ljust och Mörkt fungerar.
- [ ] Användarens val sparas.
- [ ] Mobil och smal desktoplayout är kontrollerade.
- [ ] Tabeller och sidnavigation fungerar på små skärmar.

**Tillgänglighet**
- [ ] WCAG 2.2 AA-kontrast är verifierad.
- [ ] Alla funktioner kan nås med tangentbord.
- [ ] Fokusmarkering är tydlig.
- [ ] Formulär har etiketter och begripliga felmeddelanden.
- [ ] Ikonknappar har tillgängliga namn.
- [ ] Reducerad rörelse respekteras.

## 22. Ändringsstyrning

Nordic Precision ska utvecklas som ett gemensamt system, inte som separata regler per app.

En ny designregel ska endast införas när: samma behov förekommer i mer än ett arbetsflöde; en befintlig komponent inte kan lösa behovet utan att bli otydlig; tillgänglighet eller plattformskonvention kräver det; avvikelsen dokumenteras med syfte och exempel.

Nya accentprofiler ska vara ovanliga. En produktlogotyp eller marknadsföringssida är inte i sig tillräckligt skäl för att införa en ny profil i applikationsgränssnittet.

## 23. Fastställda beslut

- Designfamiljen heter **Nordic Precision**.
- Formspråket kombinerar Nordic Utility och Data Dense.
- Hörnen är lätt rundade och precisa, huvudsakligen `4–5px`.
- Nordic Blue är standardaccent.
- Fjord Teal och Warm Copper är godkända alternativa accenter.
- Mineral Violet ingår inte i systemet.
- Midnight är det mörka visningsläget, inte en separat accentprofil.
- De mörka kombinationerna heter Midnight Blue, Midnight Teal och Midnight Copper.
- Systemläge är standardval för utseende.
- Semantiska statusfärger ändras inte med accentprofilen.
- Inter, Segoe UI och system-ui är typografisk grund.
- Lucide är rekommenderad ikonfamilj.
- Systemet ska vara plattforms- och AI-oberoende.
