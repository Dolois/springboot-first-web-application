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


```mermaid
%% Example with slection of syntaxes
        gantt
        dateFormat  YYYY-MM-DD
        title Adding GANTT diagram functionality to mermaid

        section A section
        Completed task            :done,    des1, 2014-01-06,2014-01-08
        Active task               :active,  des2, 2014-01-09, 3d
        Future task               :         des3, after des2, 5d
        Future task2               :         des4, after des3, 5d

        section Critical tasks
        Completed task in the critical line :crit, done, 2014-01-06,24h
        Implement parser and jison          :crit, done, after des1, 2d
        Create tests for parser             :crit, active, 3d
        Future task in critical line        :crit, 5d
        Create tests for renderer           :2d
        Add to mermaid                      :1d

        section Documentation
        Describe gantt syntax               :active, a1, after des1, 3d
        Add gantt diagram to demo page      :after a1  , 20h
        Add another diagram to demo page    :doc1, after a1  , 48h

        section Last section
        Describe gantt syntax               :after doc1, 3d
        Add gantt diagram to demo page      : 20h
        Add another diagram to demo page    : 48h
```
