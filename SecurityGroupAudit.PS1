<#
###Created by Robbie Toumbs###
.SYNOPSIS
   <Pulling information for all Security Groups >
.DESCRIPTION
   <Creating a list of all Security Groups with Desription and Notes fields>
#>

Get-ADGroup -filter {GroupCategory -eq "Security"} -Properties Name, Description, info | select info, Name, Description | Export-Csv C:\SecurityGroupsAudit.csv 

Get-ADGroup -filter {GroupCategory -eq "Security"} | Export-Csv C:\SecurityGroupsAudit1.csv 
