### Création d'une application Web avec Spring Boot avec JSP

#### Nous allons développer une application simple avec une fonctionnalité de connexion 
#### ainsi que la fonctionnalité permettant d'afficher une liste de tâches.
#### Nous suivrons le modèle MVC en utilisant JSP comme vue.

#### Nous avons mis en application :
- [x] amorcer un projet simple avec Spring Initializer
- [x] initialiser une application Web de base pour Spring Boot
- [x] ajouter une application JSP pour Web
- [x] construire une fonctionnalité de connexion de base
- [x] ajouter des fonctionnalités pour afficher une liste de tâches
- [x] connecter automatiquement des composants à l'aide de Spring Framework

### Les outils que nous avons utilisés
- [x] Maven 3.0+ est votre outil de construction
- [x] Votre IDE préféré. Nous utilisons Eclipse.
- [x] JDK 1.8+

### Vue d'ensemble de l'application Web
#### Nous allons construire une liste de tâches (non formatée) avec la fonctionnalité de connexion de base.

                                           1     2     3
                                        |-----|-----|-----|
                                     A  |  x  |     |     |
                                        |-----|-----|-----|
                                     B  |     |  x  |     |
                                        |-----|-----|-----|
                                     C  |     |     |  x  |
                                        |-----|-----|-----|
                                        
                                        
 #### Un bref aperçu de tous les fichiers

*  TodoService : Contient la logique métier. 
*  LoginService a une validation codée en dur simple pour l'ID utilisateur et le mot de passe. 
*  TodoService contient une méthode de service permettant de récupérer une liste de tâches.

*  login.jsp, welcome.jsp, list-todos.jsp : Les noms expliquent clairement le contenu de chacune de ces vues.

*  LoginController, TodoController : Agissent en tant que contrôleurs dans le tableau de bord du MVC.
   LoginController a un peu de flux.
   Si l'utilisateur entre une combinaison valide d'identifiant et de mot de passe, il sera redirigé vers la page d'accueil.
   Sinon, la page de connexion sera affichée avec le message d'erreur.

*  pom.xml- Les dépendances importantes sont Spring Boot Starter Web et tomcat-embed-jasper.
   Nous en reparlerons plus tard.

*  application.properties- Ceci est généralement utilisé pour configurer les infrastructures dans Spring Boot.
   Dans cet exemple, nous allons configurer notre résolveur de vues dans application.properties.
