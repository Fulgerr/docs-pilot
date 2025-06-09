# The Arguments Panel

Le panneau Arguments permet de créer des arguments et de les modifier. Renommer un argument dans ce panneau met automatiquement à jour toutes ses occurrences dans le fichier en cours. L’URL de base de l’API est : <Variable name="API_BASE_URL" />.

Le tableau suivant décrit les propriétés disponibles pour les arguments.

| Propriété        | Description |
|------------------|-------------|
| Name             | Obligatoire. Le nom de votre argument. Si vous n’ajoutez pas de nom à un argument, un nom est généré automatiquement. Pour plus d’informations sur la façon de nommer vos arguments, voir Naming Best Practices. |
| Direction        | Obligatoire. Sélectionnez une direction pour votre argument. Les options suivantes sont disponibles :<br>**In** – l’argument ne peut être utilisé que dans le projet en question.<br>**Out** – l’argument peut être utilisé pour transmettre des données à l’extérieur du projet.<br>**In/Out** – l’argument peut être utilisé à la fois à l’intérieur et à l’extérieur du projet.<br>**Property** – actuellement non utilisé. |
| Argument Type    | Obligatoire. Choisissez le type de valeur que vous souhaitez que votre argument stocke. Les options suivantes sont disponibles :<br>Boolean<br>Int32<br>String<br>Object<br>System.Data.DataTable<br>Array of [T]<br>Browse for Types<br>Si vous sélectionnez un type .Net dans la fenêtre Browse and Select a .Net Type, il est ajouté à la liste déroulante Argument Type. |
| Default Value    | Optionnel. La valeur par défaut de l’argument. Si ce champ est vide, la variable n’a pas de valeur par défaut. |
| IsRequired       | Si sélectionné, marque l’argument comme obligatoire. Cette propriété est disponible dans le panneau Properties. [Consultez le guide d'installation](./installation.md)|

# The Context Menu for Arguments

![92928ef-args_panel_menu=GUID-E61C6D20-A410-4BE9-A68D-0555EB26D9A8=1=en=Default](/images/92928ef-args_panel_menu=GUID-E61C6D20-A410-4BE9-A68D-0555EB26D9A8=1=en=Default.png)

Faites un clic droit sur un argument dans le panneau Arguments pour ouvrir le menu contextuel.

Option | Description  
--- | ---  
Convert to Variable | Convertit l’argument en une variable du même type, avec la portée de niveau supérieur. La sélection multiple est possible. Si une variable du même nom existe, un message d’erreur s’affiche dans le panneau Output et la variable n’est pas créée.  
Copy | Copie un ou plusieurs arguments, leurs noms, types et valeurs par défaut, vers un autre workflow. Si un argument du même nom existe, un message d’erreur s’affiche dans le panneau Output.  
Paste | Colle un ou plusieurs arguments, leurs noms, types et valeurs par défaut, vers un autre workflow. La portée de l’argument doit être réassignée. Si le type de l’argument n’est pas trouvé dans le workflow, l’option est désactivée.  
Delete | Supprime l’argument du panneau, mais pas du workflow.  
Design Properties | Ouvre la fenêtre Design Properties, où vous pouvez ajouter, modifier ou supprimer une infobulle contenant des commentaires sur un argument.  
Add Watch | Ajoute l’argument actuel au panneau Watch. Disponible uniquement en mode débogage.  
Find References | Trouve toutes les références à l’argument dans le projet. Les résultats sont affichés dans le panneau Find References.
