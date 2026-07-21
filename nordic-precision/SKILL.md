---
name: nordic-precision
description: Trigga när ett användargränssnitt ska skapas eller ändras i något projekt (webbapp, desktopprogram, dashboard, verktyg) — oavsett ramverk. Läs alltid design-system.md i samma mapp INNAN något gränssnitt implementeras eller ändras. Använd INTE denna skill för ren backend-/logik-kod utan UI-komponent.
---

# Syfte

Nordic Precision är Fredriks fastställda, gemensamma UI-standard (v1.0, 2026-07-21, källa: Notion "Nordic Precision — UI Design System", under WIKI — Strukturerad kunskap). Den gör att alla hans produkter känns sammanhängande oavsett vilket verktyg eller AI-tjänst som byggde dem.

# Instruktioner

1. Läs hela [design-system.md](design-system.md) innan du skapar eller ändrar ett gränssnitt — inte bara skumma det.
2. Identifiera produkttyp och välj accentprofil enligt tabellen i avsnitt 4 (Nordic Blue som standard om oklart).
3. Stöd System/Ljust/Mörkt visningsläge när plattformen tillåter det.
4. Använd semantiska tokens (avsnitt 5–8) — hårdkoda inte egna färger, radier eller avstånd vid sidan av standarden.
5. Följ komponentreglerna i avsnitt 11–12 för knappar, formulär, tabeller, status, navigation.
6. Kör igenom checklistan i avsnitt 21 innan UI-arbetet räknas som klart.
7. Stöter du på ett behov standarden inte täcker, eller en konflikt mellan standarden och något Fredrik bett om: flagga det och fråga — inför inte en ny regel/profil/radieskala på egen hand (avsnitt 22).

# Relation till kravstallning-skillen

Har `kravstallning`-skillen redan triggat och du är i UI/Utseende-steget av en spec: referera Nordic Precision istället för att fråga om färger/layout från grunden. Fråga bara om det standarden lämnar öppet (t.ex. vilken accentprofil, om produkttypen är oklar enligt avsnitt 4).

# Kända avvikelser att bevaka

Verktyg byggda innan denna skill fanns (t.ex. risk-reward-kalkylator, byggd i "Modern mörk"-palett innan Nordic Precision fastställdes) följer INTE denna standard ännu — flagga det om det kommer upp, men ändra inte om utan att fråga först.
