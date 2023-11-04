$rg = 'arm-storage-01'
New-AzResourceGroup -Name $rg -Location northeurope -Force

New-AzResourceGroupDeployment `
    -Name 'new-storage_deploy' `
    -ResourceGroup $rg `
    -TemplateFile '01-storage.json'