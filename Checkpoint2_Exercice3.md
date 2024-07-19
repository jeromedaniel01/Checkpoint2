#Q3.1

le materiel A est un switch 
c'est une multiprise de RJ45  pour alimenter les ordinateurs qui lui sont reliés 
il relais les informations provenant du materiel B qui est un routeur  qui lui distribue les adresses IP 

#Q3.2

Le materiel B est un routeur qui distribue  les adresses ip ,il peut faire egalement office de DHCP pour donner des adresses automatiquement aux differents equipements qui lui sont connectés

son role est de distribuer les adresses qui vont de 10.10.0.1/16 jusqu'a l'adresse 10.10.255.254  ,il a toutefois l'adresse 10.10.255.254 qui est lui est reservé pour le port f0/0 

#Q3.3

f0/0 est le port fastethernet 0/0 du routeur B et G1/0 est le port gigaethernet de ce meme routeur

#Q3.4

le /16 de l'adresse IP du pc2 represente le masque sous reseau , il equivaut à 16bits est peut s'ecrire ainsi  255.255.0.0

#Q3.5

l'adresse 10.10.255.254 represente l'adresse de passerelle pour trouver des informations sur son reseau ,qui est l'adresse de "sortie" du routeur situé au dessus du switch A

#Q3.6

adresse de reseau  
PC1= 10.10.0.0 /16
PC2= 10.11.0.0/16
PC5= 10.10.0.0/15

Premiere adresse disponible 
PC1= 10.10.0.1 255.255.0.0
PC2= 10.11.0.1 255.255.0.0
PC5= 10.10.0.1 255.254.0.0

Derniere adresse disponible
PC1= 10.10.255.254
PC2= 10.11.255.254
PC5= 10.11.255.254

Adresse de diffusion

PC1= 10.10.255.255
PC2= 10.11.255.255
PC5= 10.11.255.255

#Q3.7

le pc 1 peut communiquer avec PC3 PC4 et PC5
le pc2 peut communiquer avec le PC5
le pc3 peut communiquer avec le PC1 le PC4 et le PC5
le pc4 peut communiquer avec le PC1 le PC3 et le PC5 
le pc5 peut communiquer avec le PC2

#Q3.8

Le pc2 ne pourra pas atteindre  le reseau 172.16.5.0/16 car il n'a pas d'adresse de passerelle valide , il ne pourra pas aller plus haut que le port f0/0 du routeur  . il n'est pas precisé si le switch est manageable ,si il l'est  le pc2 peut aller jusqu'au reseau 172.16.05.0/24



#Q3.9

Aucune incidence si le switch n'est pas manageable , si il l'est une reconfiguration du switch sera necessaire 

#Q3.10

Les pc1 pc3 pc4 et pc5 pourront etre en dynamique mais le pc 2 non sauf si le switch est manageable  ou il faudra ne plus etre en masque sous reseau 255.255.0.0 si l'on veut que tous les pcs beneficient de l'adressage dynamique 

#Q3.11

l'adresse mac est 00:50:79:66:68:00  c'est une carte reseau 

#Q3.12

la communication a ete positive  entre le materiel 00:50:79:66:68:00 et le materiel 00:50:79:66:68:03

#Q3.13

le materiel qui fait la demandest ,le request, est le 00:50:79:66:68:00 avec l'adresse IP 10.10.4.1/16 qui est le PC1
et le materiel qui fait la reponse ,le reply, est le 00:50:79:68:03 avec l'adresse IP 10.10.4.2/16 qui est le pc4



#Q3.14

le protocol est ARP 
il convertit l'adresse IP de la couche reseau a l'adresse MAC sur la couche de liaison de données 

#Q3.15

le Materiel A a fait la  liaison entre le pc1 et le pc4 par l'intermediaire du routeur B
le materiel B a redistribué la requete en indiquant quelle adresse MAC avait l'IP 10.10.4.2/16

#Q3.16

Dans cette trame c'est le pc3 qui initialise la communication 
Adresse IP : 10.10.80.3 /16

#Q3.17

Le protocol est l'ICMP  il permet de faire des requetes de ping entre deux materiels

#Q3.18

Cette communication a echoué 
le materiel qui recoit la demande ICMP n'est pas sur le reseau 

#Q3.19

La ligne numero 2 correspond a la reponse de la passerelle du pc3 (passerelle qui est aussi l'adresse IP du port F0/0 du routeur )
la destination n'a pas ete trouvé par la passerelle (hote introuvable)

#Q3.20

Le materiel A a fait la liaison jusqu'a la passerelle qui est l'adresse IP du port f0/0 du routeur B 
le materiel B n'a pas trouvé qui avait l'adresse IP 10.11.80.2  et a indiqué hote injoignable en reponse de la requete du pc3

#Q3.21

l'adresse IP source est  10.10.4.2/16  qui correspond au PC4
l'adresse IP de destination est 172.16.5.253 qui correspond a un materiel sur le reseau externe (dans le nuage)

#Q3.22

adresse mac source  ca:01:da:d2:00:1c
adresse mac de destination  ca:03:9e:ef:00:38

j'en deduis que le pc4 a acces au reseau exterieur 

#Q3.23

cette communication a ete enregistré a partir du pc4


##Merci ,tres agreable a faire ce checkpoint 







