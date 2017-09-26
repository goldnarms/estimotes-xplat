param([string]$version,
      [string]$buildConfig = "Debug", 
      [string]$output = "c:\Nuget")

If ($version -eq "") {
    Write-Error "Must supply a version, i.e. package1.ps1 -version 1.0.14"
    return
} 
nuget pack Estimotes.Xplat.nuspec -Build -Properties Configuration=$buildConfig -OutputDirectory $output -symbols -Version $version