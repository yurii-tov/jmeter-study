param(
    [Parameter(Mandatory = $true)]
    [ValidateScript({Test-Path $_})]
    $TestPlan,
        
    [Parameter(Mandatory = $true)]
    [ValidateScript({Test-Path $_})]
\    $ConfigFile
)


${env:HEAP} = '-Xms64m -Xmx64m -XX:MaxMetaspaceSize=256m'

$ConfigFile = Get-Item $ConfigFile

$report_dir = $ConfigFile.Directory
$samples = (Join-Path $report_dir 'samples.jtl')
$html_report_dir = (Join-Path $report_dir 'report')
$jmeter_log = (Join-Path $report_dir 'jmeter.log')

jmeter -n -t $TestPlan -q $ConfigFile -l $samples -j $jmeter_log -e -o $html_report_dir -f
