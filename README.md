# puissance4
Il s'agit d'un puissance 4 lumineux connecté et interractif par le chat Twitch

# Description

Ce projet a pour but de réaliser un écran LED basé sur des WS2812B (led addressable individuellement), piloté par un raspberry pi
afin d'ouvrir une surface de jeu pour le puissance 4. Le jeu sera connecté et intéractif avec le chat Twitch pour permettre
aux viewers et participants de chat de jouer leur partie.

Dans ce projet, l'arborescence est la suivante:
- `hardware` : L'ensemble des documents permettant la réalisation des cartes électroniques du projet
    - `panneau_led`: Contient le design de la carte électronique des dalles de LEDs.
- `software` : Bientôt.

# Logiciels

Les logiciels utilisées sont les suivants:
- hardware : [Kicad](https://kicad.org/download/)


# Electronique

## Panneau led

Les panneaux LEDs sont des panneaux de 90x90mm qui accueille chacun 9 LEDs de type WS2812B.
Elles sont tous chaînés de la manière suivante:

```
1 -> 2 -> 3
 <--------|
4 -> 5 -> 6
 <--------|
7 -> 8 -> 9
```

# Licence

Le projet est open-source. Tout le monde peut l'utiliser en laissant la référence à son auteur.