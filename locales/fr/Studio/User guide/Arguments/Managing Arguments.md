# Managing Arguments

Les arguments sont utilisés pour transmettre des données d’un projet à un autre. D’un point de vue global, ils ressemblent à des variables, car ils stockent des données de façon dynamique et les transmettent ensuite. Les variables transmettent des données entre activités, tandis que les arguments transmettent des données entre automatisations. Par conséquent, ils permettent de réutiliser certains projets à plusieurs reprises.

Studio prend en charge un grand nombre de types d’arguments, qui coïncident avec les types de variables. Vous pouvez donc créer des arguments de type Generic Value, String, Boolean, Object, Array ou DataTable, et vous pouvez également parcourir les types .Net, comme pour les variables. De plus, les arguments ont des directions spécifiques (In, Out, In/Out, Property) qui indiquent à l’application où l’information stockée doit être transmise.

S’il existe à la fois une variable et un argument portant le même nom, la variable est toujours prioritaire et utilisée à l’exécution. Passer des arguments In complexes (par exemple, de type System.Data.DataTable) à une activité Invoke Workflow File non isolée agit comme si une référence était passée, ce qui signifie que toute modification de l’objet dans le workflow invoqué modifie également l’objet dans le workflow principal. Les types d’arguments intégrés (par exemple, Boolean) sont toujours passés comme valeurs.

Veuillez noter que si vous créez un argument In/Out avec une valeur In lors de l’utilisation dans l’activité Invoke Workflow, puis modifiez la valeur en Out, une erreur peut se produire lors de l’exécution du projet. Cela est dû au fait que l’activité Invoke Workflow n’a pas renvoyé les valeurs par référence. Utilisez un Global Handler dans votre projet pour accéder aux valeurs exactes que les arguments avaient dans le workflow invoqué.

Enfin, ces arguments peuvent être utilisés pour s’intégrer à d’autres outils de votre entreprise, car ils sont également exposés dans Orchestrator. Cela signifie que tout processus que vous créez peut désormais recevoir des paramètres d’entrée via l’API ou l’interface Orchestrator, ainsi que retourner une sortie à tous les éléments mentionnés ci-dessus. Plus d’informations sont disponibles ici.

## Creating Arguments

Les noms d’arguments doivent être en Upper CamelCase avec un préfixe indiquant la direction de l’argument, par exemple in_DefaultTimeout, in_FileName, out_TextResult, io_RetryNumber. Vous pouvez consulter nos recommandations de conventions de nommage pour la conception des workflows pour plus de détails.

# From the Data Manager

1. Ouvrez le Data Manager, puis sélectionnez New > New Argument.
2. Un nouvel élément avec le nom par défaut argument est ajouté sous Arguments.
3. Configurez l’argument créé : cliquez sur le nom de l’argument pour le modifier. Développez l’argument à l’aide de la flèche à sa gauche et définissez la Direction, le Data Type, s’il est Required, et éventuellement, la Default Value.

Depuis le Data Manager, vous pouvez également créer des arguments en masse en faisant un clic droit sur le nœud Arguments puis en sélectionnant Bulk Create Arguments. Une nouvelle fenêtre s’affiche où vous pouvez ajouter et configurer plusieurs arguments.

# From the Body of an Activity

![a559352-set_argument=GUID-C7B72192-7A8E-434B-B2DF-3532CA84FBE1=1=en=Default](/images/a559352-set_argument=GUID-C7B72192-7A8E-434B-B2DF-3532CA84FBE1=1=en=Default.png)

1. Depuis le panneau Activities, faites glisser une activité vers le panneau Designer. Faites un clic droit sur un champ et sélectionnez Create In Argument ou Create Out Argument dans le menu contextuel. Vous pouvez aussi utiliser Ctrl+M ou Ctrl+Shift+M. Le champ Set Arg s’affiche.
2. Remplissez le nom et appuyez sur Entrée. L’argument est créé et visible dans le champ. Vérifiez sa direction et son type dans le panneau Arguments.

# From Expressions

Vous pouvez aussi créer des arguments depuis des expressions, directement dans un champ de saisie d’activité ou dans l’éditeur d’expressions :

1. Sélectionnez une partie de l’expression et appuyez sur Ctrl+M ou Ctrl+Shift+M. Le champ Set Arg s’affiche.
2. Saisissez le nom et appuyez sur Entrée. L’argument est créé. Vérifiez son type et sa direction dans le panneau Arguments.

Les arguments créés de cette manière reçoivent automatiquement le type correspondant à l’activité. Par exemple, si vous créez un argument dans le champ Data Table d’une activité Write Range, le type de l’argument sera DataTable. Si vous créez un argument dans le champ Text d’une activité Write Line, son type sera String.

# From the Properties Panel

![7fad7b9-properties_createarg=GUID-AC692F94-DBEF-4078-88AF-4CC0DCE8FA0D=1=en=Default](/images/7fad7b9-properties_createarg=GUID-AC692F94-DBEF-4078-88AF-4CC0DCE8FA0D=1=en=Default.png)

1. Dans le panneau Properties de n’importe quelle activité, faites un clic droit sur un champ modifiable et sélectionnez Create In Argument ou Create Out Argument dans le menu contextuel. Vous pouvez aussi utiliser Ctrl+M ou Ctrl+Shift+M. Le champ Set Arg s’affiche.
2. Saisissez le nom et appuyez sur Entrée. L’argument est créé et visible dans le champ. Vérifiez sa direction et son type dans le panneau Arguments.

Le type d’argument est automatiquement généré selon la propriété sélectionnée.

# From the Arguments Panel

![c8472c1-create_arg=GUID-F709CB22-030E-4923-AAC5-449FE318E970=1=en=Default](/images/c8472c1-create_arg=GUID-F709CB22-030E-4923-AAC5-449FE318E970=1=en=Default.png)

1. Dans le panneau Designer, cliquez sur Arguments. Le panneau Arguments s’affiche.
2. Cliquez sur la ligne Create Argument et saisissez le nom. Un nouvel argument est créé. Par défaut, tous les arguments sont de type String et ont la direction In.

## Removing Arguments

Vous pouvez supprimer des variables depuis le Data Manager ou depuis le panneau Variables.

# From the Data Manager

1. Ouvrez le Data Manager et développez le nœud *Variables.
2. Faites un clic droit sur un argument, puis sélectionnez Delete. Vous pouvez aussi le sélectionner et appuyer sur la touche Supprimer.

# From the Arguments Panel

1. Ouvrez le panneau Arguments.
2. Faites un clic droit sur un argument, puis sélectionnez Delete. Vous pouvez aussi le sélectionner et appuyer sur la touche Supprimer.

# Removing All Unused Arguments

Pour supprimer tous les arguments non utilisés dans le fichier courant, sélectionnez Remove Unused > Arguments dans le ruban Studio, puis cliquez sur Yes lorsque la confirmation est demandée.

## Configuring Argument Properties

La fenêtre Argument Properties centralise les arguments utilisés dans votre projet ainsi que leurs propriétés. Après publication du projet, ces informations sont visibles dans Orchestrator, Assistant et Automation Ops - Pipelines.

Pour configurer les propriétés des arguments, ouvrez le panneau Project, faites un clic droit sur un fichier XAML défini comme principal ou marqué comme point d’entrée du projet, puis sélectionnez l’option Argument Properties. Vous pouvez réorganiser la liste des arguments dans la fenêtre en les faisant glisser dans le menu de gauche.

Sélectionnez un argument dans le menu de gauche et saisissez les informations suivantes :

* Display name – L’étiquette affichée pour l’argument.
* Tooltip – L’infobulle affichée au survol de l’argument.
* Required – Indique si l’argument est obligatoire.

![ArgumentPropertiesWindow=GUID-6708CAC7-8DB3-4C90-893D-D5C913654EDF=1=en=Default](/images/ArgumentPropertiesWindow=GUID-6708CAC7-8DB3-4C90-893D-D5C913654EDF=1=en=Default.png)
