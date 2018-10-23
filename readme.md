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
                                        
#### Un bref aperçu de tous les fichiers

*  TodoService : contient la logique métier.<br>
   TodoService : contient une méthode de service permettant de récupérer une liste de tâches.
*  LoginService : a une validation codée en dur simple pour l'ID utilisateur et le mot de passe.

*  login.jsp, welcome.jsp, list-todos.jsp : Les noms expliquent clairement le contenu de chacune de ces vues.

*  LoginController et TodoController : agissent en tant que contrôleurs dans le tableau de bord du MVC.<br>                                LoginController a un peu de flux.
   
   Si l'utilisateur entre une combinaison valide d'identifiant et de mot de passe, il sera redirigé vers la page d'accueil.<br>
   Sinon, la page de connexion sera affichée avec le message d'erreur.

*  pom.xml- Les dépendances importantes sont Spring Boot Starter Web et tomcat-embed-jasper.<br>
   Nous en reparlerons plus tard.

*  application.properties- Ceci est généralement utilisé pour configurer les infrastructures dans Spring Boot.<br>
   Dans cet exemple, nous allons configurer notre résolveur de vues dans application.properties.

#### Créer un projet de démarrage : 
<b>Spring Starter Project</b> :  spring-boot-first-web-application-1<br>
<b>groupe</b> :                  co.simplon.springboot<br>
<b>artifacts</b> :               student-services<br>

#### Choisissez les dépendances suivantes :
*  Web
*  Actuator
*  DevTools

### Dépendances du projet
Spring Boot Starter Web fournit toutes les dépendances et la configuration automatique nécessaire pour développer des applications Web. C'est la première dépendance que nous utiliserions.

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
</dependency>
Nous voulons utiliser JSP comme vue. Le conteneur de servlet intégré par défaut pour Spring Boot Starter Web est tomcat. Pour activer la prise en charge des JSP, nous devrions ajouter une dépendance à tomcat-embed-jasper.

<dependency>
    <groupId>org.apache.tomcat.embed</groupId>
    <artifactId>tomcat-embed-jasper</artifactId>
    <scope>provided</scope>
</dependency>

### Configuration d'un résolveur de vues
Nos fichiers jsp sont dans /WEB-INF/jsp <br>
Nous devons configurer le résolveur de vues avec le préfixe et le suffixe.<br><br>

#### dans application.properties
spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp

