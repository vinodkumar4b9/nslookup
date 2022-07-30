$servers = get-content "/home/vinodkumar/hostname.csv"
foreach ($Server in $Servers)
{
    $addresses = $null
    try {
        $addresses = [System.Net.Dns]::GetHostAddresses("$Server").IPAddressToString
    }
    catch { 
        $Addresses = "Server IP cannot resolve."
    }
    foreach($Address in $addresses) {
        write-host $Server, $Address 
    }
}
