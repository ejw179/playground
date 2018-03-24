<#
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           Get-JiraServerInfo                                 2.5.7      JiraPS
Function        Add-JiraGroupMember                                2.5.7      JiraPS
Function        Add-JiraIssueAttachment                            2.5.7      JiraPS
Function        Add-JiraIssueComment                               2.5.7      JiraPS
Function        Add-JiraIssueLink                                  2.5.7      JiraPS
Function        Add-JiraIssueWatcher                               2.5.7      JiraPS
Function        Add-JiraIssueWorklog                               2.5.7      JiraPS
Function        Format-Jira                                        2.5.7      JiraPS
Function        Get-JiraComponent                                  2.5.7      JiraPS
Function        Get-JiraConfigServer                               2.5.7      JiraPS
Function        Get-JiraField                                      2.5.7      JiraPS
Function        Get-JiraFilter                                     2.5.7      JiraPS
Function        Get-JiraGroup                                      2.5.7      JiraPS
Function        Get-JiraGroupMember                                2.5.7      JiraPS
Function        Get-JiraIssue                                      2.5.7      JiraPS
Function        Get-JiraIssueAttachment                            2.5.7      JiraPS
Function        Get-JiraIssueComment                               2.5.7      JiraPS
Function        Get-JiraIssueCreateMetadata                        2.5.7      JiraPS
Function        Get-JiraIssueEditMetadata                          2.5.7      JiraPS
Function        Get-JiraIssueLink                                  2.5.7      JiraPS
Function        Get-JiraIssueLinkType                              2.5.7      JiraPS
Function        Get-JiraIssueType                                  2.5.7      JiraPS
Function        Get-JiraIssueWatcher                               2.5.7      JiraPS
Function        Get-JiraPriority                                   2.5.7      JiraPS
Function        Get-JiraProject                                    2.5.7      JiraPS
Function        Get-JiraRemoteLink                                 2.5.7      JiraPS
Function        Get-JiraServerInformation                          2.5.7      JiraPS
Function        Get-JiraSession                                    2.5.7      JiraPS
Function        Get-JiraUser                                       2.5.7      JiraPS
Function        Get-JiraVersion                                    2.5.7      JiraPS
Function        Invoke-JiraIssueTransition                         2.5.7      JiraPS
Function        New-JiraGroup                                      2.5.7      JiraPS
Function        New-JiraIssue                                      2.5.7      JiraPS
Function        New-JiraSession                                    2.5.7      JiraPS
Function        New-JiraUser                                       2.5.7      JiraPS
Function        New-JiraVersion                                    2.5.7      JiraPS
Function        Remove-JiraGroup                                   2.5.7      JiraPS
Function        Remove-JiraGroupMember                             2.5.7      JiraPS
Function        Remove-JiraIssueAttachment                         2.5.7      JiraPS
Function        Remove-JiraIssueLink                               2.5.7      JiraPS
Function        Remove-JiraIssueWatcher                            2.5.7      JiraPS
Function        Remove-JiraRemoteLink                              2.5.7      JiraPS
Function        Remove-JiraSession                                 2.5.7      JiraPS
Function        Remove-JiraUser                                    2.5.7      JiraPS
Function        Remove-JiraVersion                                 2.5.7      JiraPS
Function        Set-JiraConfigServer                               2.5.7      JiraPS
Function        Set-JiraIssue                                      2.5.7      JiraPS
Function        Set-JiraIssueLabel                                 2.5.7      JiraPS
Function        Set-JiraUser                                       2.5.7      JiraPS
Function        Set-JiraVersion                                    2.5.7      JiraPS
#>
Install-Module JiraPS
Update-Module JiraPS
Import-Module JiraPS
Set-JiraConfigServer 'https://jirastaging.benco.com'
New-JiraSession -Credential $credY

# Review the help at any time!
Get-Help about_JiraPS
Get-Command -Module JiraPS
Get-Help Get-JiraIssue -Full   # or any other command

[array]$Key = $null
$Output = $null
$summary = @"
line 1
line 2
line 3
"@
# Resolve-JiraError : Jira encountered an error: [summary] - The summary is invalid because it contains newline characters
$Output = New-JiraIssue -Project NOCONOFF -IssueType "NOC - Test Issue Type" -Priority "1" -Summary "Summary Final?" -Description "Test from ps1" -Reporter "eward"
$Output.GetTypeCode()
$Key = $Output -split " " -replace '\[|\]'
$Key[0]
Get-JiraIssue -Key $Key[0]
Add-JiraIssueAttachment -Issue $Key[0] -FilePath C:\Users\sm\Pictures\abstract.jpg
Add-JiraIssueComment -Issue $Key[0] -Comment "Updated with ps1" 
