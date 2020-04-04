param(
    [Parameter(Mandatory = $true)]
    [ValidateScript({Test-Path $_})]
    $TestPlan,
        
    [Parameter(Mandatory = $true)]
    [ValidateScript({Test-Path $_})]
    $ConfigFile
)

$ConfigFile = Get-Item $ConfigFile
$report_dir = $ConfigFile.Directory
jmeter -n -t $TestPlan -p $ConfigFile -e -l (Join-Path $report_dir 'jmeter.log') -o (Join-Path $report_dir 'report')
