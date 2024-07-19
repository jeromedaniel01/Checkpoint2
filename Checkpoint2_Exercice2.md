Exercice2 

#Q2.1

j'ai créé un partage de fichier pour pouvoir recuperer le dossier script present sur le serveur 

![partage fichier](https://github.com/user-attachments/assets/a816ada5-c206-4356-9a09-a7630f439674)

sur le pc client j'ai connecté le lecteur reseau que je viens de creer 

![connection lecteur reseau](https://github.com/user-attachments/assets/a88670d8-6d64-423a-ba96-2b0473fae725)

je recupere a present mes fichiers pour les copier dans un dossier "Scripts" sur le lecteur C

![copie fichiers](https://github.com/user-attachments/assets/3070c222-8bcb-4273-9094-529b1235969a)

#Q2.2

Modification du script principal 

le chemin pour les fichiers etait incorrect 

![modif chemin fichiers](https://github.com/user-attachments/assets/4695590d-2edb-4d85-b24a-44ce26ab46fb)

#Q2.3
L'option Verb -RunAs  sert a executer  un script via un executeur  ,ici  "powershell" comme indiqué en debut de script 

#Q2.4

L'option -Windowstyle ouvre une fenetre de l'execution du script  à sa taille maximal 

#Q2.5

Le premier utilisateur n'a pas été pris en compte car sur le script "AddLocalUsers.ps1 " car il etait demandé de ne commencé a partir de la ligne 3 
Premiere ligne les informations separées par ";"  ,la deuxieme ligne correspondait a l'utilisateur Anna Dumas 

J'ai simplemen demandé de n'ignorer que la premiere ligne du fichier .csv 

![ignorer1ereligne](https://github.com/user-attachments/assets/baccf020-a446-4678-a052-8b908ef48fee)

#Q2.6 
Ajout de la fonction "Description" 

pour integrer ces informations  j'ai corrigé le script en y integrant la recherche d'info sur le fichier .CSV 
une erreur dans l'ajout du groupe a integrer   ,il manquait un S a utilisateurS sinon le script ne peut ajouter les utilisateurs comme le groupe Utilisateur n'existe pas 


![ajout description](https://github.com/user-attachments/assets/819e6025-08ae-488b-9b53-f4b2a2c59fb0)









