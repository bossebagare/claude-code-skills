$ErrorActionPreference = "Stop"

$repoUrl = "https://github.com/bossebagare/claude-code-skills.git"
$target = Join-Path $HOME ".claude\skills"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "git hittades inte. Installera Git for Windows forst: https://git-scm.com/download/win"
    exit 1
}

if (Test-Path $target) {
    if (Test-Path (Join-Path $target ".git")) {
        Write-Host "Hittade befintligt git-repo i $target, hamtar senaste (git pull)..."
        Push-Location $target
        git pull origin master
        Pop-Location
        Write-Host "Klart. Skills-mappen ar uppdaterad."
        exit 0
    } else {
        $backup = "$target.bak.$(Get-Date -Format 'yyyyMMdd-HHmmss')"
        Write-Host "Mappen $target finns redan men ar inte ett git-repo. Flyttar den till $backup for sakerhets skull..."
        Move-Item $target $backup
    }
}

Write-Host "Klonar $repoUrl till $target..."
git clone $repoUrl $target
Write-Host "Klart. Skills installerade i $target"
