# Personliga Claude Code Skills

Denna mapp innehåller personliga skills som är tillgängliga i **alla** projekt när du kör Claude Code på den här datorn (System 2 enligt Notion-sidan "Skills — Komplett Guide & Strategi").

## Struktur

Varje skill är en egen undermapp med en `SKILL.md`-fil:

```
~/.claude/skills/
  mitt-skill-namn/
    SKILL.md
    (valfria hjälpfiler: scripts, referenser, mallar)
```

Se `_template/SKILL.md` för en startmall.

## Viktigt att komma ihåg

- Detta system syncar **inte** automatiskt mellan datorer. Se sync-strategi-avsnittet i Notion-sidan "Skills — Komplett Guide & Strategi" (rekommendation: privat Git-repo).
- Det här är separat från claude.ai-kontots Skills (System 1, `.skill`-filer, syncar via kontot). De två systemen pratar inte med varandra.
- Namn + beskrivning i frontmatter avgör om Claude känner igen och triggar skillen — håll beskrivningar unika för att undvika krockar med andra skills.

## Installera på en ny dator

Kör `install.ps1` (Windows/PowerShell) eller `install.sh` (Mac/Linux) — de klonar detta repo till `~/.claude/skills/`, eller kör `git pull` om det redan finns där. Om mappen redan finns med annat innehåll flyttas den till en `.bak.<tidsstämpel>`-mapp innan kloningen, inget skrivs över. Fullständiga instruktioner (inkl. copy-paste-kommandon) finns i Notion-sidan "Skills — Komplett Guide & Strategi".

## Källa till sanning

- **Notion**: "Skills — Komplett Guide & Strategi" (under Westila AI Hub) — strategi, aktiv-lista, roadmap.
- **Denna mapp**: den faktiska koden/instruktionerna Claude Code läser.
