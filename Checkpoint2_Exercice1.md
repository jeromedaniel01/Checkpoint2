

#Exercice 1

###Q1.1 

Le ping ipv4 entre le serveur et le client ne fonctionne pas car ils ne sont pas dans le meme reseau 
serveur : 172.16.10.10/24 
client : 172.16.100.50/24
![ping serveur client check2](https://github.com/user-attachments/assets/519d61ca-4e3d-498a-8135-41ff4277a539)
![ping depart](https://github.com/user-attachments/assets/c4ff21d4-c416-4664-90f0-904bcdc4922a)


###Q1.2

Pour reussir un ping sur la machine client avec le serveur ,j'ai simplement changer l'adresse ipv4 de la machine client pour qu'elle soit dans le reseau 

![remplacement ipv4 client png](https://github.com/user-attachments/assets/976b6032-c537-4eae-86a5-99682497a5e7)
![ping reussi ipv4](https://github.com/user-attachments/assets/fd6fbeaa-1576-4aeb-9a18-7f1ea6f1affb)


###Q1.3

Pour desactiver l'ipv6 je decoche la  case protocol internet version6 des propriétés de ma carte reseau 

![desactivation ipv6](https://github.com/user-attachments/assets/8608c3bf-b462-4d13-bea6-b7c2f90c9f09)

Teste de ping du serveur vers la machine client ave le nom de la machine 

![ping nom de machine](https://github.com/user-attachments/assets/329a96bc-cd78-4f8b-b32d-c2c9ed9dae8e)

Nous voyons que le ping par nom de machine ne fonctionne pas en ipv6 mais fonctionne en ipv4 
Comme j'ai desactivé le protocol ipv6 il ne peut trouver aucun peripgeriques en ipv6 
apres reactivation  le ping est operationnel 

![reactiv ipv6](https://github.com/user-attachments/assets/928995fb-91ad-48b8-892f-1d694bbc81df)

!![ping apresreacv6](https://github.com/user-attachments/assets/27376467-b96b-4c83-88a2-aafce03cd8ca)

###Q1.4

J'active le dhcp  grace au parametre de ma carte reseau en cochant "obtenir une adresse IP automatiquement" dans les parametres IPV4

![activationdhcp](https://github.com/user-attachments/assets/6cb110d6-d53d-4c82-bab4-8042ab7fabd4)

###Q1.5

Je vois que dans la configuration DHCP le debut d'adressage est 172.16.10.1 et la fin 172.16.10.1 
mais il y a deux plages d'exclusions dans cet adressage qui sont 
debut 172.16.10.1 jusqu'a 172.16.10.19 et 172.16.10.241 jusqu'a 172.16.10.254

![DHCP](https://github.com/user-attachments/assets/0d22e21c-2387-4c7f-ba23-d3c71d91b989)

Le client ne peut recevoir la premiere adresse car elle fait partie d'une plage d'exclusion 
ce qui explique qu'il recoive la 172.16.10.20

![ipconfigdhcp](https://github.com/user-attachments/assets/9538c4bf-c45f-4c15-9c26-5fdf687ef9f0)

###Q1.6

Pour adresser une adresse particuliere il faut faire une reservation avec l'adresse MAC de la carte reseau 
indiquez l'adresse souhaitée (tant qu'elle est dans le reseau bien entendu et si aucune autre reservation est deja en place pour cette adresse)

![reservationetipconfig](https://github.com/user-attachments/assets/26d90e21-6fe9-41a4-8733-d3f0b5e7803f)

sur cette photo a gauche il y a la reservation et a droite un ipconfig du client qui a bien reçu l'adresse reservé dans le dhcp 

###Q1.7

L'interet de passer en IPV6 est le nombre d'adresse disponible ,pour un reseau particulier il est rare d'avoir besoin de beaucoup d'adresses IP mais pour une entreprise le besoin d'adresses est beaucoup plus important et arrive assez vite a saturation
il faut creer des sous reseaux et cela accentue les problemes et necessite plus de peripheriques comme les routeurs 
Le nombre d'adresse IPV6 est considerablement plus important 

###Q1.8

Le dhcp n'est pas obsolete car il permet d'eviter les conflits d'adresses IP entre deux ou plusieurs peripheriques et à l'avantage d'etre automatisé et n'adressé que des adresses disponible 
Pour qu'il soit actif le DHCP IPV6 il faut creer une zone d'adressage dans le role DHCP 























