# Oversigt

- [Program](#program)
- [The Basics](#the-basics)
  - [Kreativ kode](#kreativ-kode)
  - [Koordinatsystemet på computeren](#koordinatsystemet-p%C3%A5-computeren)
  - [Processing](#processing)
- [Programmering](#programmering)
  - [Generel syntax](#generel-syntax)
    - [Kodeudførsel](#kodeudf%C3%B8rsel)
    - [Reference](#reference)
    - [Variabler](#variabler)
    - [Funktioner](#funktioner)
    - [Gode links](#gode-links)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Program
-	Kreativ kode
-	Processing user interface
-	Basis programmering: Shapes, funktioner og variabler

# The Basics
## Kreativ kode
Frem for at programmere noget funktionelt programmerer vi for at udtrykke noget.
-	Programmering som et redskab til kreativitet og som en udtryksform.

## Koordinatsystemet på computeren
For at programmere noget visuelt, der kan ses på ens skærm, bliver man nødt til at fortælle computeren præcis hvor man vil placere elementer. Dette fortæller man med koordinater, der svarer til pixels på skærmen.
Fra matematikken kender vi koordinatsystemer, hvor punktet (0,0) enten ligger nederst i venstre hjørne(positive tal) eller midt på koordinatsystemet (både positive og negative tal.
På computeren ligger punktet (0,0) øverst i venstre hjørne.

![alt text](https://github.com/DDlabAU/introToProgramming/blob/master/Programming101/coordinate.jpg "Programming coordinate system")

Source: http://py.processing.org/tutorials/drawing/

## Processing
Processing er et programmeringssprog baseret på java med et integreret udviklingsmiljø.
-	Download her: https://processing.org/download/
-	En nem og god måde at blive introduceret til kode, hvor produktet kan ses med det samme.

Processing cheat sheet: https://www.cs.bham.ac.uk/~cxp291/ri/processing_cheat_sheet_english.pdf

En reference med beskrivelser af alle funktioner i processing: https://processing.org/reference/

**User interface**
- Det er i området kaldet *Text editor* at koden skal skrives.
- Fejlbeskeder fra compileren vil blive skrevet i det der kaldes *Message area*.
- I consollen skrives der de fejl der findes under programmets udførsel, samt hvad man selv vælger at skrive til consollen (med funktionen `println()`, se nedenfor under "Andre funktioner").
- For at køre sin kode trykkes der på run symbolet(trekanten/pilen) oppe i venstre hjørne. Vinduet der dukker op ved at trykke på run kalder vi kanvas.

![alt text](https://github.com/DDlabAU/introToProgramming/blob/master/Programming101/proces.gif "Processing vinduet")

Source: https://processing.org/tutorials/gettingstarted/

# Programmering
## Generel syntax
### Kodeudførsel
Kode udføres oppefra og ned, derfor er det vigtigt at være opmærksom på rækkefølgen man skriver sin kode i. Når der placeres noget på kanvas, vil det, der er skrevet øverst, derfor blive tegnet først, og alt herefter vil blive tegnet ovenpå.
Alle erklæringer og funktioner skal ende med et semikolon, `;`, for at markere at funktionen afsluttes.

### Reference

**Kanvas**

Kanvas er som sagt det vindue, hvori koden udføres.

---

```processing
size(x, y);
```
Definerer størrelsen på kanvas eller vinduet, hvori vores kode udføres. Det første parameter, `x`, er bredden på vinduet i pixels, det andet, `y`, er højden på vinduet i pixels.

---


```processing
background(x);
//ELLER
background(r,g,b);
```
En funktion der definerer baggrundsfarven på kanvas. Hvis funktionen kun har 1 parameter, (`background(x)`) så angiver `x` en gråtoneskalaværdi, jf. beskrivelsen nedenfor under afsnittet ’Colors’. Ligeledes hvis funktionen har 3 parametre(`background(r,g,b)`), så angiver `r`, `g`, `b` farverne som RGB farver, jf. beskrivelsen nedenfor under afsnittet ’Colors’.

---

**Colors**

Hvis en farveangivelse gives 1 parameter, f.eks. `fill(x)`, så står `x` for en gråtoneskalaværdi. Gråtoneskalaværdier angives som tal mellem 0-255, hvor 0 = sort og 255 = hvid.

Hvis en farveangivelse gives 3 parametre, f.eks. `fill(r, g, b)`, så står `r`, `g` og `b` for RGB-farveværdier. RGB(Rød, Grøn, Blå) farver, angives hver som tal mellem 0-255, hvor f.eks. r = 0 er ingen rød farve og r = 255 er så meget rød som muligt.

Farveangivelser kan også godtage HEX farver, dvs. f.eks. fill(#ffffff);.

Eftersom koden udføres oppefra og ned, er det vigtigt at angive farven på den form man vil tegne på kanvas **før** man kalder funktionen på sin form.

---

```processing
fill(x);
//ELLER
fill(r, g, b);
```
Angiver udfyldningsfarven på en form.

---

```processing
stroke(x);
//ELLER
stroke(r, g, b);
```
Angiver farven på linjer eller kanterne af en form.

---

```processing
noFill();
```
Angiver at den pågældende form ikke skal have nogen farve, altså være transparent.

---

```processing
noStroke();
```
Angiver at den pågældende forms kanter eller en linje ikke skal have nogen farve, altså være transparent.

---

**Shapes**

Processing indeholder mange forskellige pre-definerede funktioner, der tegner former på kanvas.

---


```processing
line(x1, y1, x2, y2);
```
Tegner en linje, hvor parametrene (`x1`, `y1`) og (`x2`,`y2`) angiver koordinaterne på de to punkter der skal tegnes en linje mellem.

---

```processing
rect(x, y, w, h);
```
Tegner et rektangel, hvor det øverste venstre hjørne af rektanglet er placeret i koordinaterne (`x`, `y`). Parameteren `w` angiver bredden af rektanglet i pixels og `h` angiver højden.

---

```processing
ellipse(x, y, w, h);
```
Tegner en ellipse, hvor parametrene (`x`, `y`) angiver koordinaterne for placeringen af ellipsens centrum. `w` angiver bredden af ellipsen i pixels og `h` angiver højden.

---

```processing
triangle(x1,y1,x2,y2,x3,y3);
```
Tegner en trekant, hvor parameter parrene (`x1`, `y1`), (`x2`, `y2`) og (`x3`, `y3`) angiver de tre koordinater der skal forbindes for at skabe en trekant.

---

```processing
beginShape();
vertex(x1, y1);
vertex(x2, y2);
…
vertex(xn,yn);
endShape(CLOSE);
```
Definerer din egen form. Mellem de to funktioner `beginShape()` og `endShape(CLOSE)` angives alle koordinater for de punkter der skal forbindes for at skabe din form. Hvert koordinat indsættes i hver sin `vertex(_,_)` funktion. Du kan tilføje lige så mange vertexes/punkter du har lyst til at forbinde. `CLOSE` i `endShape()` betyder at det sidste definererede punkt skal forbindes til det første definerede punkt.

---


**Andre funktioner**
```processing
random(h)
//ELLER
random(l, h);
```
Genererer et ”tilfældigt” decimaltal. Hvis funktionen kun gives 1 parameter(`random(h)`), så genereres der et tilfældigt tal mellem 0 og det angivne parameter. Hvis funktionen gives 2 parametre (`random(l,h)`) så genereres der et tilfældigt tal mellem det første og det sidste parameter.

NB! For at kunne benytte sig af den returnerede værdi af denne funktion skal den gemmes i en variabel (se beskrivelsen nedenfor).

NBB! Hvis du vil give random funktionen en variabel som parameter skal den være defineret som datatypen `float` IKKE `int`! (Se under "Variabler" nedenfor.)

---


```processing
println(x);
```
Skriver den angivne parameter i konsollen.

---

```processing
//Kommentar
```
De to skråstreger, `//`, Gør det muligt at skrive kommentarer i sin kode, som ikke bliver eksekveret når koden køres.

---
Se flere funktioner i processing referencen: https://processing.org/reference/

*Eksempel på brug af funktioner: sketch kaldet ["Shapes.pde”](https://github.com/DDlabAU/introToProgramming/blob/master/Programming101/Shapes.pde)*

**_Quick task: Tegn et hus i processing!_**

### Variabler
En variabel er en slags kasse man kan gemme ting i. Når der er nogle værdier, man ikke ønsker skal være statiske, og altså skal ændres i løbet af ens program, så bør disse gemmes i variabler.

Derudover, hvis der er nogle værdier, der bruges meget, så er det en god ide at gemme dem som variabler, for så er det kun ét sted, der skal rettes, hvis man ønsker at ændre værdien.

Der er 3 steps i at lave en variabel:

1. Erklæring
2. Initialisering
3. Brug

---

**Erklæring**

For at erklære en variabel skal man fortælle computeren hvilken **datatype** variablen har, dvs. om det er et heltal, decimaltal, tekst el.lign.


`int` er en datatype i processing, som angiver **integers**, dvs. **heltal**. En variabel der indeholder et heltal defineres derfor således:
```processing
int a;
```
dvs. først skrives datatypen og derefter et valgfrit navn man ønsker at kalde variablen. Det er god programmeringsstil at placere alle sine erklæringer af variabler øverst i programmet så man altid kan finde dem.

---

**Initialisering**

Herefter skal variablen initialiseres, dvs. gives en startværdi:
```processing
a = 22;
```

---
**Brug**

Herefter kan man bruge `a` alle de steder i programmet hvor tallet 22 skal bruges.

---

Definitionen og initialiseringen af variablen kan også gøres på én linje:
```processing
int a = 22;
```

Der findes også en datatype kaldet `float`, hvilket står for **floating-point**, dvs. **decimaltal**. En `float`-variabel defineres og initaliseres på samme måde som en `int` variabel.

---

#### Indbyggede variabler

Processing har nogle indbyggede variabler i sproget, som altid indeholder information om det pågældende program.

---

```processing
width
```
Angiver bredden på vinduet, dvs. det første parameter(`x`) brugt til at angive funktionen `size(x, y)`.

---

```processing
height
```
Angiver højden på vinduet, dvs. det andet parameter(`y`) brugt til at angive funktionen `size(x, y)`.

---

```processing
mouseX
```
Indeholder altid x-koordinatet for musen indenfor programvinduet/kanvas.

---

```processing
mouseY
```
Indeholder altid y-koordinatet for musen inden for programvinduet/kanvas.

---

Se flere indbyggede variabler i processing referencen: https://processing.org/reference/

**_Quick task: Erstat værdier med variabler i jeres processing sketch af et hus!_**

### Funktioner
For at gøre programmer animerede og/eller interaktive bliver vi nødt til at kunne lave variationer i løbet af at programmet kører. Dette gøres ved at introducere loops til programmet. Et loop er en kodestump, der udføres om og om igen. Ved at ændre dele af programmet en smule for hvert loop kan vi gøre det animeret og/eller interaktivt frem for statisk.
I processing er der 2 funktioner, der skrives således:
```processing
void setup() {

}
void draw() {

}
```
Alt kode der skrives mellem det to klammer (`{ }`) efter `setup()` udføres kun én gang, hvilket er når programmet startes.

Alt kode der skrives mellem det to klammer (`{ }`) efter `draw()` udføres om og om igen indtil programmet lukkes. `draw()` udføres 60 gange i sekundet.

*Eksempel på brug af setup og draw: sketch kaldet [”SetupAndDraw.pde”](https://github.com/DDlabAU/introToProgramming/blob/master/Programming101/SetupAndDraw.pde)*

### Gode links

https://www.youtube.com/user/shiffman/featured

https://github.com/shiffman/LearningProcessing

https://processing.org/reference/


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*
