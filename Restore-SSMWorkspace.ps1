param([Parameter(Mandatory=$true)][string]$ParentDirectory)
$ErrorActionPreference = 'Stop'
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { throw 'Install Git and sign into GitHub first.' }
$parent = [IO.Path]::GetFullPath($ParentDirectory)
[IO.Directory]::CreateDirectory($parent) | Out-Null
$repositories = @(
    @{ Name='SSM-new'; Url='https://github.com/narendok/SSM-new.git' },
    @{ Name='SSM-new-web'; Url='https://github.com/narendok/ssm-new-web.git' },
    @{ Name='SSM-new-app'; Url='https://github.com/narendok/SSM-new-app.git' }
)
foreach ($repository in $repositories) {
    $target = Join-Path $parent $repository.Name
    if (Test-Path -LiteralPath $target) {
        if (-not (Test-Path -LiteralPath (Join-Path $target '.git'))) { throw "Existing non-Git directory: $target. Nothing overwritten." }
        $origin = git -C $target remote get-url origin
        if ($LASTEXITCODE -ne 0 -or $origin.TrimEnd('/') -ine $repository.Url.TrimEnd('/')) { throw "Unexpected origin at $target. Nothing overwritten." }
        $dirty = @(git -C $target status --porcelain)
        if ($LASTEXITCODE -ne 0 -or $dirty.Count -gt 0) { throw "Existing changes at $target. Review manually; nothing reset or overwritten." }
        Write-Output "Keeping existing checkout: $target (not pulling automatically)."
    } else {
        git clone -- $repository.Url $target
        if ($LASTEXITCODE -ne 0) { throw "Clone failed: $($repository.Name)" }
    }
    git -C $target log -1 --format='%h %s'
    if ($LASTEXITCODE -ne 0) { throw 'Cannot verify checkout.' }
}
Write-Output "Clones ready in $parent. Read SSM-new\Implementation Plan.md: Laptop migration and continuation checkpoint."
Write-Output 'Restore the private transfer files separately. This script does not restore credentials, install dependencies, migrate databases or overwrite existing files.'
