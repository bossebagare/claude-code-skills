---
name: kravstallning
description: Trigga när Fredrik ber om att bygga, skapa, koda, utveckla eller lägga till NY funktionalitet i ett kodprojekt (nytt program, nytt skript, ny modul, ny feature) och det INTE redan finns ett godkänt spec-dokument för just den funktionaliteten i den här konversationen. Använd INTE denna skill: för att skapa eller ändra en Claude Code-skill (använd skill-creator för det), för buggfixar eller mindre justeringar av befintlig kod, eller när Fredrik uttryckligen skriver att planering ska hoppas över (t.ex. "skippa planering", "bara kör", "no planning").
---

# Syfte

Tvinga fram kravspecifikation INNAN kodning börjar. Fredrik är nybörjare på kod och kodar uteslutande med AI-stöd — utan en forcerande mekanism glider sessioner rakt in i implementation på lösa antaganden, vilket ger halvfärdiga sidoprojekt och kod byggd på fel förutsättningar.

# Steg 1 — Stoppa

Inga filändringar, inga build-/scaffold-/installationskommandon, inga kodsnuttar som om implementationen redan börjat. Säg rakt ut, en rad, ingen dramatik: det här ser ut som en ny build, en snabb kravrunda kommer först.

# Steg 2 — Ställ strukturerade frågor

Ställ frågorna i **ett enda grupperat meddelande** — inte en fråga i taget. Använd dessa fyra kategorier som utgångspunkt (inte ett rigitt skript, plocka relevanta underfrågor):

- **Syfte** — Vad ska det göra? Vilket problem löser det? Vem använder det (bara du / kollegor / kunder)? Validerar behovet sig självt om det inte byggs?
- **Plattform** — Var körs det (webb, CLI, Windows-app, mobil, ett skript i Claude Code)? Ska det integrera med något befintligt (filer, CATIA/Inventor-export, en databas, en annan tjänst)?
- **Input/Output** — Vad matas in och i vilket format? Vad kommer ut och i vilket format? Vem/vad konsumerar outputen?
- **Begränsningar** — Tidsram? Ska Fredrik kunna underhålla det själv (komplexitet är en kostnad för en nybörjare)? Något som INTE får ändras/påverkas? Prestanda/säkerhet/känslig data?

Om Fredrik svarar "vet inte" eller hoppar över en kategori: det är giltigt, men skriv det då som en explicit rad under "Öppna frågor / antaganden" i spec:en — aldrig ett tyst antagande.

# Steg 3 — Producera spec-dokument

Fyll i mallen från `spec-mall.md` (samma mapp). Skriv/uppdatera filen `SPEC.md` i projektets rotmapp, och visa innehållet i chatten också. Håll det kort — det här är ett verktyg för en solo-nybörjare, inte ett enterprise-PRD.

# Steg 4 — Vänta på godkännande

Gå inte vidare till något implementationssteg förrän Fredrik svarar med en tydlig godkännande-fras kopplad till spec:en: "godkänt", "kör", "sätt igång", "go", "ja bygg det" (eller motsvarande). Ett "ja" som svar på en delfråga under steg 2 räknas INTE som godkännande.

- Vill Fredrik ändra något → uppdatera `SPEC.md` och visa den igen (tillbaka till steg 3), anta inte godkännande.
- Oklart svar → fråga rakt ut: "Är det här ett godkännande av hela spec:en, eller vill du ändra något först?"

# Relation till Plan Mode

Claude Code har en separat, inbyggd Plan Mode (Shift+Tab två gånger, eller `/plan`) som denna skill inte kan aktivera programmatiskt. Är native Plan Mode redan aktiv när den här skillen triggar: hoppa över "Stoppa"-framingen i steg 1 (redan garanterat av harnesset) men kör kvar steg 2–4, och använd den kommande plan-presentationen (ExitPlanMode) som bärare av spec-innehållet istället för ett separat chattmeddelande.

# Undantag / gränsfall

- Triviala fixar, refactorer, "hur funkar X"-frågor, eller redan fullt specificerade ändringar ("byt returtypen på den här funktionen till string") → ingen ceremoni, gör det direkt.
- Tumregel: öppen begäran ("bygg ett skript som...", "gör en app för...") → trigga. Fullt specificerad ändring (exakt fil, exakt beteende redan angivet) → trigga inte.
- Explicit skip-fras ("skippa planering", "bara kör") → hoppa över steg 1–4, men säg ändå en rad om vad som är på väg att byggas — transparens utan att blockera.
- Uppföljningar inom en redan godkänd, pågående build → trigga inte om igen, bara för genuint nya features.
- Upptäcker du under bygget att spec:en var fel eller ofullständig → stoppa och flagga det för Fredrik, improvisera inte tyst. Samma "inga antaganden"-princip gäller mitt i flödet, inte bara i början.

# Exempel

**Fredrik:** "kan du bygga ett skript som laddar ner mina fakturor från Fortnox och sorterar dem per kund?"

**Claude:** "Det här är en ny build, så en snabb kravrunda först:
- **Syfte** — Ska det här bara köras manuellt av dig, eller ska det schemaläggas? Vilket problem löser det just nu (letar du efter dem manuellt idag)?
- **Plattform** — Ska det köras som ett lokalt skript, eller något annat? Har du redan API-åtkomst till Fortnox?
- **Input/Output** — Sorterat per kund — som mappar med PDF:er, eller en lista/rapport? Något specifikt filnamnsformat?
- **Begränsningar** — Någon tidsram? Ska du kunna underhålla scriptet själv, eller är det en engångsgrej?"

*(Fredrik svarar)*

**Claude:** presenterar ifylld `SPEC.md` med checkboxar, väntar.

**Fredrik:** "godkänt"

**Claude:** börjar bygga.
