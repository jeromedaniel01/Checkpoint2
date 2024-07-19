Write-Host "--- Début du script ---"

# Fonction pour générer un mot de passe aléatoire
Function Random-Password {
	# changement du nombre de caracteres du mot de passe par 12 au lieu de 6
    param ($length = 12)
    
    $punc = 46..46
    $digits = 48..57
    $letters = 65..90 + 97..122

    $password = Get-Random -Count $length -InputObject ($punc + $digits + $letters) | `
        ForEach -begin { $aa = $null } -process {$aa += [char]$_} -end {$aa} 
    return $password
}

# Fonction pour gérer les accents et les majuscules

Function ManageAccentsAndCapitalLetters {
    param ([String]$String)
    
    $StringWithoutAccent = $String -replace '[éèêë]', 'e' -replace '[àâä]', 'a' -replace '[îï]', 'i' -replace '[ôö]', 'o' -replace '[ùûü]', 'u'
    $StringWithoutAccentAndCapitalLetters = $StringWithoutAccent.ToLower()
    return $StringWithoutAccentAndCapitalLetters
}

# Fonction pour journaliser les activités
#Ajout de la fonction de creation d'un fichier Log avec ajout de variable 
Function Log-Activity {
    param ([string]$LogFilePath, [string]$Content)
    
    # Vérifie si le fichier existe, sinon le crée
    If (-not (Test-Path -Path $LogFilePath)) { 
        New-Item -ItemType File -Path $LogFilePath | Out-Null
    }
    
    # Construit la ligne de journal
    $Date = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    $User = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $LogLine = "$Date; $User; $Content"
    
    # Ajoute la ligne de journal au fichier
    Add-Content -Path $LogFilePath -Value $LogLine
}
			#modification du chemin pour trouver le fichier .CSV
$Path = "C:\Scripts\Users.csv"
$CsvFile = $Path
$LogFile = "C:\Scripts\Log.log"

# Importer les utilisateurs depuis le fichier CSV

#modification de la ligne de depart pour extraire les utilisateurs ainsi que les informations non necessaire pour la création des utilisateurs

$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","fonction","description","scriptPath" -Encoding UTF8 | Select-Object -Skip 1

foreach ($User in $Users) {
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Nom = ManageAccentsAndCapitalLetters -String $User.nom
	#Ajout d'une variable $Name
    $Name = "$Prenom.$Nom"
   
    If (-not (Get-LocalUser -Name $Name -ErrorAction SilentlyContinue)) {
        $Pass = Random-Password
        $Password = ConvertTo-SecureString $Pass -AsPlainText -Force
        $Description = "$($User.description) - $($User.fonction)"
        
        $UserInfo = @{
            Name                 = $Name
            FullName             = $Name
            Password             = $Password
            AccountNeverExpires  = $true
			#remplacement de false par true pour l'expiration du mot de passe 
            PasswordNeverExpires = $true 
        }

        New-LocalUser @UserInfo
		#Ajout d'un S au groupe a  integrer 
        Add-LocalGroupMember -Group "Utilisateurs" -Member $Name
        Write-Host "L'utilisateur $Name a été créé"
		# affichage du mot de passe avec la couleur verte
        Write-Host "Le mot de passe est $Pass " -ForegroundColor Green
        Log-Activity -LogFilePath $LogFile -Content "Utilisateur $Name créé avec le mot de passe $Pass"
    } else {
		#Verification de l'existence du compte utilisateur ainsi que l'affichage de la reponse en rouge si c'est le cas 
        Write-Host "L'utilisateur $Name existe déjà"  -Foregroundcolor red 
        Log-Activity -LogFilePath $LogFile -Content "Tentative de création de l'utilisateur $Name mais il existe déjà"
    }
}

Write-Host "--- Fin du script ---"
#remplacement de la ligne pour sortir du script en appuyant sur la touche "entrée"
Read-Host -Prompt "Appuyez sur Entrée pour quitter"
