# Program:
-	Animation og interaktivitet
-	Basic operators and conditionals
-	If/else statements
-	Datatypen boolean
-	while og for loops
-	Arrays
-	Indbyggede funktioner

## Animation og interaktivitet
Sidste gang introducerede vi funktionerne setup og draw og der blev vist et eksempel på hvordan draw funktionen kan gøre et program interaktivt ved at tilknytte variabler, som brugeren har mulighed for at have indflydelse på (f.eks. `mouseX` og `mouseY`) til objekter der tegnes i programmet.

Vi skal senere se andre metoder hvorpå brugeren kan interagere med programmet (se indbyggede funktioner nedenfor).

For at animere noget i programmet er variabler nødvendige (Se ”Variabler” under ”Processing101”). Dvs. hvor programmet udfører handlinger ”af sig selv”. Vi skal bruge `draw` til at variere variabler for hvert frame, så det ligner bevægelse. Det gøres ved at variablen tildeles en ny værdi. Denne værdi kan gøres som værdien selv tilføjet lidt mere eller mindre. F.eks. kan en af følgende skrives i draw efter man har erklæret variablen `x`:
```processing
x=x+1;
// kan også skrives som
x+=1;
//kan også skrives som
x++;
```
Dette betyder at der bliver lagt 1 til variablen `x` for hver iteration af loopet.

## Operatorer og Conditionals
For at kunne begrænse vores variable kan vi bruge de operatorer vi kender fra matematikken:
```processing
//lig med
==
//større end
>
//større end eller lig med
>=
//mindre end
<
//mindre end eller lig emd
<=
//Ikke lig med
!=
```
For at tilføje flere begrænsninger for den samme del af koden kan vi bruge conditionals:
```processing
//og
&&
//eller
||
```
Dermed kan man begrænse en variabel f.eks. således:
```processing
//x større end 0 OG mindre end eller lig width ELLER y er lig med x
x>0 && x<=width || y==x
```

## If/else sætninger
For at definere hvad der skal ske når en variabel er begrænset af operatorer kan vi bruge såkaldte if-sætninger. Det gøres for at angive, at *hvis* dette gælder for min variabel, så gør følgende. Det skrives således i processing:
```processing
if(x>0 && x<=width || y==x) {
x=x+1;
}
```
Så vil der blive lagt 1 til x så længe at begrænsningerne inden for parenteserne gælder.

Ofte vil man også gerne angive hvad der sker, hvis begrænsningerne inden for parenteserne ikke gælder, så kan man tilføje `else` til if-sætningen.
```processing
if(__) {
//…
} else {
//…
}
```
Så vil alt koden mellem klammerne, `{ }`,  efter `if` blive udført *hvis* det begrænsningen inden for parenteserne gælder, *ellers* vil al koden inden for klammerne `{ }` efter `else` blive udført.

Hvis der er mange forskellige begrænsninger der skal gælde og der skal ske noget forskelligt i programmet for hver af dem, kan disse skrives i forlængelse efter hinanden således.:
```processing
if(__) {
//…
} else if (__) {
//…
} else {
//…
}
```

*Eksempel på brug af if-sætninger: sketch kaldet ["IfElse.pde"](https://github.com/DDlabAU/introToProgramming/blob/master/Programming102/IfElse.pde)*

**_Quick task: Få ellipsen i eksempel IfElse til at ”bounce” mod alle siderne_**

## Datatypen Boolean
De begrænsninger der blev beskrevet tidligere kan alle evalueres til enten at være *sandt* eller *falskt*. Udtryk der på den måde kan evalueres til enten sandt eller falskt kaldes `boolean`. `boolean` er en *datatype* (ligesom `int`), der kan gemmes i en variabel og defineres i processing til enten at være lig med `true` eller `false` og derved enten være sand eller falsk. En boolean kan derfor defineres således:
```processing
boolean on = true;
```
Herefter kan vi bruge denne variabel ligesom vi kunne bruge vores begrænsninger tidligere, f.eks. i en if-sætning:
```processing
if(on=true) {
//…
}
//kan også skrives således
If(on) {
//…
}
//hvor det er underforstået at det betyder hvis on=true
//ligeledes hvis on=false kan det skrives således
If(!on) {
//…
}
```
En simpel måde at angive at en boolean skal ændres til det modsatte af hvad den er angivet til er:
```processing
on=!on;
```
Hvis `on` var `true`, så er den nu ændret til `false`, og omvendt hvis den allerede var `false` er den nu ændret til `true`.

*Eksempel på brug af if-sætninger og boolean: sketch kaldet ["ifElseAndBoolean.pde"](https://github.com/DDlabAU/introToProgramming/blob/master/Programming102/IfElseAndBoolean.pde)*

## While loop
Nogle gange får vi brug for mindre loops, ud over `draw`, som vi bedre kan kontrollere. Et eksempel herpå er et while-loop. Et while loop tager ligesom en if-sætning nogle begrænsninger eller en boolean som parameter. Det bruges til at angive at en del af koden skal udføres så længe parameteret evaluerer til sandt/`true`.
```processing
while(x<20) {
//…
}
```
I ovenstående eksempel udføres koden inden for klammerne, `{ }`, så længe x er mindre end 20.

NB! Pas på at jeres while loops ikke bliver uendelige!

Når man koder et while loop er det vigtigt at der er en mulighed for at while loopet evaluerer til false, så programmet kan komme ud af loopet. F.eks. i ovenstående eksempel, er det vigtigt at øge værdien af x et eller andet sted i programmet, ellers stopper loopet aldrig.

**_Quick task: Lav din egen boolean variabel i programmet fra sidste øvelse, der ændrer noget i programmet når variablen er lig true (med et while loop eller med en if-sætning)._**

## For-loop
Et for-loop er en anden form for loop, men som gør lidt mere automatisk for programmøren end while loopet gør. Mere præcist er det et slags while loop, hvortil der tilhører et parameter, der hele tiden ændres med det samme for hver iteration af loopet. Et for-loop er godt til at undgå at skulle skrive det samme kode flere gange. Et for loop er som regel på formen:
```processing
for(int i = 0; i < 10; i++) {
//…
}
```
Det betyder at der først erklæres en variabel `i` til at være lig 0. Herefter tjekkes der om `i < 10`. Hvis dette er sandt, så udføres koden der står mellem klammerne, `{ }`. Når koden mellem klammerne er udført tillægges 1 til i, hvorefter der igen tjekkes om `i < 10`. Så udføres koden mellem klammerne igen, og sådan fortsætter det indtil `i` bliver større eller lig 10.

Eksempelvis kan et while loop der ser således ud:
```processing
int i=0;
while(i < 10) {
int x = 20 + i * 50;
ellipse (x, height/2, 20, 20);
i++;
}
```
Skrives således med et for-loop:
```processing
for(int i = 0; i < 10;  i++) {
int x = 20 + i * 50;
ellipse(x, height/2, 20, 20);
} 
```
Hvor begge vil resultere i disse cirkler:
![alt text](https://github.com/DDlabAU/introToProgramming/blob/master/Programming102/for-loop.png "Cirkler lavet m. for-loop")

*Eksempel på brug af for og while loop: sketch kaldet ForAndWhile.pde*

## Arrays
Et array er en liste med elementer af den samme datatype, som har en defineret størrelse. Elementerne kan enten defineres med det samme man laver liste, eller efterhånden som man finder ud af hvad der skal være i listen.

Array kendetegnes af de kantede klammer, `[ ]`. Når en array skal erklæres angives først datatypen af de elementer der skal være i listen, efterfulgt af de kantede klammer og et navn man vælger at give listen. Herefter defineres der med nøgleordet `new` at der skal reserveres plads til en ny array der indeholder et bestemt antal elementer af en bestemt type:
```processing
//en array der kan indeholder 5 heltal. (SKAL defineres inden for setup eller draw)
int [ ] myArray = new int [5];
```
Herefter kan der tilføjes elementer individuelt til listen. Elementerne vil blive tilføjet i en bestemt orden, hvilket er den vi vil tilgå elementerne igennem. Når et element tilføjes til arrayet, så får det et såkaldt *index* dvs. hvilket nummer det er i listen. Det første element i listen har index = 0, det næste index=1, osv.. Elementer kan derfor tilføjes til arrayet således:
```processing
myArray[0] = 10;
myArray[1] = 80;
myArray[2] = 50;
myArray[3] = 40;
myArray[4] = 20;
```
Herefter kan man altid finde et element i listen hvis man kender dets index:
```processing
int val = myArray[1];	//nu er val = 80
```
Hvis man kender alle elementerne man ønsker skal være i listen, kan både erklæring og udfyldning af arrayet gøres meget lettere således:
```processing
int [ ] myArray = {10, 80, 50, 40, 20};
```
Dvs. ud for erklæringen inden for klammer `{ }`, adskilt af komma `,`.
En meget brugbar funktion når man arbejder med arrays er funktionen `length`, som returnerer antallet af elementer i listen. Dvs.
```processing
int sizeOfArray = myArray.length;	//nu er sizeOfArray=5
```

### Arrays og For loops
Ofte når man vil gå igennem alle elementer i et array og gøre det samme for hvert element er det rigtig godt at kombinere det med et for loop, fordi man derved kan opstille en generel brug af elementerne uden for meget kodeduplikering. F.eks.:
```processing
for (int i = 0; i < myArray.length; i++) {
int x=50+i*100;
ellipse(x, height/2, myArray[i], myArray[i]);
}
```
Hvilket giver resultatet:
![alt text](https://github.com/DDlabAU/introToProgramming/blob/master/Programming102/forWArray.PNG "Cirkler lavet m. array")

*Eksempel på brug af for loop og array i kombination: sketch kaldet ArrayFor.pde*
**_Qucik task: Lav et nyt program med et for loop der er begrænset af længden af et array._**

## Indbyggede funktioner
Processing har nogle indbyggede funktioner, som der kan bruges til at registrere brugerinteraktion, f.eks. fra musen eller tastaturet.

Der kan f.eks. tilføjes interaktion med musen med funktionen `mousePressed()`, der ser således ud:
```processing
void mousePressed() {
//…
}
```
Alt der skrives inden for klammerne, `{ }`, vil blive udført når musen trykkes.

Ligeledes kan tilføje interaktion til tastaturet med funktionen `keyPressed()`, der ser således ud:
```processing
void keyPressed() {
//…
}
```
Alt der skrives inden for klammerne, `{ }`, vil blive udført når en vilkårlig tast på tastaturet trykkes.

For at specificere nærmere hvilken tast der skal ske hvilken interaktion ved kan man bruge if-sætninger i kombination med enten `key` variablen eller `keyCode` variablen indeholder hhv. karakteren eller karakterkoden for den trykkede tast. Hvis man vil registrere en karaktertast, f.eks. bogstaver, skal man bruge `key`. Hvis man vil registrere en funktionstast, f.eks. piletaster, skal man bruge `keyCode`.
```processing
void keyPressed() {
if(key == ‘a’) {
//alt her indenfor vil blive udført når a-tasten er trykket ned
} 
If(keyCode == UP) {
// alt her indenfor vil blive udført når piletasten op bliver trykket ned
}
}
```
Andre `keyCode` variabler er f.eks. `ENTER`, `DOWN`, `RIGHT`, `LEFT` og `DELETE`. (Se flere i referencen: https://processing.org/reference/keyCode.html )

Der findes andre funktioner til at lave interaktion med mus og tastatur, f.eks. `mouseClicked`, `mouseDragged` og `keyTyped`, som alle kan slås op i referencen: https://processing.org/reference/ 

*Eksempel på brug af `mousePressed` og `keyPressed`: sketch kaldet KeyAndMouse.pde*
