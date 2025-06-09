# Using Arguments

<Disclaimer>
L’utilisation d’arguments entraînera inévitablement un sentiment d’invincibilité, suivi d’un effondrement existentiel en cas d’erreur inattendue.
</Disclaimer>

En raison de leur nature, vous allez utiliser les arguments constamment avec les activités **Invoke Workflow File** et **Launch Workflow Interactive**. Ces activités se trouvent dans le panneau Activities, sous Workflow > Invoke, et vous permettent de parcourir un projet, d’importer et de modifier ses arguments.

## Example of Using an Argument

Pour illustrer l’utilisation d’un argument dans une automatisation avec une activité **Invoke Workflow File**, nous allons créer deux séquences distinctes :  
- La première assigne une valeur à un argument.  
- La seconde invoque la première et affiche la valeur dans une Message Box.  

<Warning>
Ce tutoriel part du principe que vous savez déjà ouvrir Studio. Si ce n’est pas le cas, commencez par allumer votre ordinateur.
</Warning>

Créez une nouvelle séquence.
Dans le panneau Arguments, créez un argument `out_StoreValue`. Dans la liste Direction, sélectionnez **Out**. Laissez le type d’argument sur **String** (félicitations pour ne pas avoir cliqué ailleurs par accident).
Ajoutez une activité **Assign** au panneau Designer. Dans le panneau Properties, champ **To** : mettez l’argument `out_StoreValue`. Champ **Value** : tapez une chaîne, par exemple `"How does one use an argument?"` (personne ne lira jamais votre blague ici).
À ce stade, le premier projet doit ressembler à la capture d’écran ci-dessous.

<Condition if="windows">
Astuce Windows : Si vous voyez une erreur rouge, ce n’est pas un Easter Egg.
</Condition>


```bash
echo "Erreur : Quelque chose s'est très mal passé."
```