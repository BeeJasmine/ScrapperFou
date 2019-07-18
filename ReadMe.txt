 
/!\ à moins que ça n'est changé et que je n'ai pas màj, je n'ai pas testé mes petits tests





**********************************   DarkTrader  *************************************************



J'ai extrait des données très intéressantes d'un site web : les cours des cryptomonnaies.


Mon programme présente le cours d'une monnaie à jour avec son nom, par le biais d'un hash :

 * J'ai d'abord collecté les noms des cryptomonnaies pour les placer dans un tableau.

 * J'ai ensuite collecté les cours des cryptomonnaies pour les placer egalement dans un tableau.



------> Pour collecter les differentes données, j'ai indiqué à mon programme où il devait les prendre : sur le site web à telle adresse, à tel emplacement sur cette même page. 
	L'outil Xpath m'a servi à désigner très simplement les emplacements où se situe les données convoitées.


-----> Pour obtenir le résultat que vous aurez sous les yeux, j'ai simplement rassembler ces données dans un tableau de hashage.




#cet exercice fut le plus simple des trois.




**********************************   MairieChristmas   ********************************** 


Ce programme liste toutes les mairies du Val d'Oise avec leurs adresses email de contact à jour.


------> Pour créer ce programme, j'ai d'abord collecté toutes les adresses html contenant les données désirées : 
le nom des mairies + l'email de contact se retrouve sur chacune des pages répertoriées dans le premier tableau créé.


{{{{APARTE}}}} j'ai trouvé que répertorier des adresses où extraire des données est très efficient



Ces données étant sur des pages différentes aux mêmes emplacements, j'ai procédé comme suis :

- j'ai créé une méthode permettant de récuperer un nom de mairie et un email sur une page ;

- j'ai ensuite demandé à mon programme de répéter ces deux opérations d'extraction sur l'ensemble des adresse html/URL contenues dans le premier tableau, 

  et de ranger toutes ces données dans un hash.



**********************************   CherDepute   ********************************** 


J'ai cherché un site et j'ai finalement choisi voxpublic.org
Il y a un annuaire de 58 pages recensant 6 députés par page, avec adresse email, login twitter, adresse postale, numéro de téléphone, circonscription et groupe politique.

J'ai répertorié toutes ces pages.

J'ai recensé l'emplacement (répété) dans la structure de la page, avec Chropath.




Il ne reste plus qu'à le coder vraiment donc mais j'ai ouvert l'ordi pour écrire ce ReadMe et go dodo, bisous à mes correcteurs, j'espère que votre nuit sera bonne et que j'aurais coder avant la correction ;)
































