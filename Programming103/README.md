# Program:
- Load og brug billeder
- Datatypen `String`
- Tastatur input m. `String`
- Definer din egen funktion
- Individuel selvstændig opgave

## Billeder

Ofte kan det være praktisk at kunne loade billeder ind i programmet. F.eks. hvis man vil lave noget grafisk til en prototype, så i stedet for at prøve at tegne det i processing, med shape funktionerne (`ellipse`, `rect`, osv.) kan man loade en png eller jpg fil ind i processing, og dermed bruge til det i sin interaktive prototype.

For at loade et billede ind i sin sketch skal man først lave en ny mappe inde i sin sketchmappe, kaldet ”data”. Heri gemmer man det billede man ønsker at loade ind i programmet. Dvs. der skal være en sti der hedder ”*MySketch*/data/img.jpg”

INDSÆT BILLEDE

For at loade billedet ind i processing skal der laves en variabel, hvori billedet kan gemmes. Denne variabel skal være af typen `PImage`:
```processing
PImage img;
```
I `setup` loades billedet herefter ind i variablen med funktionen `loadImage()`, der skal have filnavnet og filformatet som parameter med `” ”` rundt om:
```processing
img = loadImage(”img.jpg”);
```
Herefter kan vi vise og placere billedet på kanvas med funktionen `image()` der både kan være i `setup` eller `draw`, alt efter hvad man skal bruge billedet til. `image()` har 3 parametre, det første er navnet på variablen med billedet, de to sidste angiver positionen af billedets øverste venstre hjørne:
```processing
image(img, 0, 0);
```
Herefter kan vi også bestemme størrelsen på billedet med funktionen `resize()`. Denne funktion tager to parametre. Den ene er den ønskede bredde på billedet i pixels, den anden er den ønskede højde i pixels. Hvis man lade den ene af parametrene være lig 0, så ændres størrelsen så billedet ikke kommer ud af proportioner. For at bruge en funktion på et billede, bruge såkaldt *punkt-notation*, med punktum imellem variablen og funktionen:
```processing
img.resize(0,100);
```
*Eksempel på upload af billede til sketch: sketch kaldet ”LoadImage.pde” i mappen ”LoadImage”*

*Eksempel på billede brugt i forloop: sketch kaldet ” Images.pde” i mappen ” Images”*

_**Quick Task: Load et billede ind i en sketch**_

### Funktioner på billeder

Der findes forskellige funktioner der kan bruges på billeder. Et af disse er `filter()`, som lægger et filter på billedet. Efter man har brugt `image()` funktionen til at vise billedet kan man bruge `filter()` til at lægge et filter over billedet.
```processing
image(img, 0,0);
filter(INVERT);
```
Der findes mange forskellige filtre, f.eks. `BLUR` og `GREY`. Flere filtre kan findes i referencen: https://processing.org/reference/ 

Der kan også udvælges en bestemt pixel eller område af pixels man ønsker at bruge til noget med metoden`get()`.
```processing
//for at vælge et område (de øverste 20*20 pixels af billedet);
image(img,0,0);
PImage chosen = get(0, 0, 20, 20);
// for at vælge en pixel, dvs. en farve (farven på pixel med koordinatet(20,20)):
image(img,0,0);
color c = get(20, 20);
//for at kopiere hele billedet
image(img,0,0);
PImage chosen = get();
```
Andre funktioner der kan bruges på billeder kan findes I referencen: https://processing.org/reference/

*Eksempel på brug af funktioner på billede: sketch kaldet ”Drawing.pde” i mappen ”Drawing”*

## Interager med områder på kanvas

Der er ingen nem løsning på at kunne interagere med et billede, en form eller specificeret område på kanvas, man bliver nødt til at definere præcist hvor på kanvas og hvornår der skal ske noget.  Så f.eks. hvis man gerne vil definere om der bliver trykket på et rektangulært billede bliver man nødt til at sætte denne handling ind i en if-sætning med nogle begrænsninger der siger om musen ligger inden for rektanglets areal når der bliver trykket.
```processing
void mousePressed() {
	if(mouseX > rectXpos && mouseX < rectXpos+rectWidth && mouseY > rectYpos && mouseY < rectYpos+rectHeight) {
		//.. Hvad der skal ske når rektanglet bliver trykket
	}
}
```
Ligeledes, hvis det er et cirkulært område, der skal ændres når det trykkes på, bliver man nødt til at se om afstanden fra cirklens centrum ud til musen er mindre end cirklens radius. Dette kan udregnes med `dist()` funktionen. `dist()` tager 4 parametre, som er hhv. de to koordinater, man ønsker at kende afstanden mellem i pixels.
```processing
void mousePressed() {
	if(dist(mouseX, mouseY, ellipX, ellipY) < ellipSize) {
		//..Hvad der skal ske når cirklen bliver trykket
	}
} 
```

*Eksempel på brug af definerede områder: sketch kaldet ”DrawingWSize.pde” i mappen ”DrawingWSize”*

_**Quick Task: Definer et område på billedet fra den sidste øvelse, så det bliver interaktivt, så der sker noget, når det klikkes på det, eller musen holdes hen over det el.lign.**_

## Datatypen String

Vi har været omkring datatyperne `int` (Heltal), `float` (Decimaltal) og `boolean`(sandt/falsk). Den sidste type vi kommer ind på er `String`, som er datatypen for tekststrenge. Ud over at en `String` skal defineres i den rigtige datatype, skal man angive at det er en streng ved at sætte `” ”` rundt om teksten.
```processing
String myText;
myText = ”Hello World”;
```
En god egenskab ved tekststrenge er at de kan forlænges med hinanden med `+`-operatoren:
```processing
String one = ”Hello”;
String two = ”World”;
String myText = one + “ “ + two;	//Nu indeholder myText “Hello World” 
```
For at vise en tekststreng på kanvas skal man bruge funktionen `text()`.
```processing
text(myText, 50, 50);
//Eller
text(myText, 50, 50, 200, 200);
```
`text`-funktionen kan tage 3 eller 5 parametre. Det første parameter er altid den tekststreng man gerne vil vise på kanvas. Det andet og tredje parameter er hhv. x og y koordinatet for det øverste venstre hjørne af teksten (hvis dette er det aktuelle rectMode). Det fjerde og femte parameter er bredden på det område man ønsker at have tekst.

*Før* man viser sin kode på kanvas kan man angive størrelsen på teksten med funktionen `textSize()`
```processing
fill(0);
textSize(32);
text(myText, 50, 50);
```
`textSize` tager et parameter, som er størrelsen på teksten i pixels.  (tekst kan gives farve med `fill` funktionen).

Hvis man vil tjekke om to strenge er det samme, kan man *ikke* bruge `==`, i stedet skal man bruge `equals`-funktionen.
```processing
String text1 = ”Hello World”;
String text2 = “Hello World”;
if(text1.equals(text2)) {
	println(“They are the same!”);
}
```
`equals` evaluere så om den streng den bliver brugt på og den streng den er givet som parameter består af den same sammensætning af karakterer.

### Funktioner brugt på Strings

Med *punkt-notation* (omtalt under billeder) kan man også bruge forskellige metoder på tekststrenge.
```processing
String world = myText.substring(6);	//world indeholder nu ”World”
//Eller
String hello = myText.substring(0,5);	//hello inde holder nu ”Hello”
```
`substring` returnerer en String der er en del af en anden string. Funktionen kan både tage 1 eller 2 parametre. For at specificere hvilken del af tekststrengen man ønsker, skal man specificere strengens start- og slutindex, hvor index svarer til karakterer i en String. Det angivne startindex er inkluderet i strengen, og det angivne slutindex *ikke* er inkluderet i strengen. Dvs. index 0 i `myText` vil være `H`. Hvis der angives to parametre, så er det første startindex, og det andet er slutindex. Hvis der kun angives et index, er dette startindex, og slutindex angives automatisk som afslutningen på strengen.
```processing
int textLength = myText.length();	//nu indeholder textLength tallet 11)
```
`length` returnerer antallet af karakterer i tekststrengen.
```processing
String longText = ”	   	Hello! 	”;
String shortText = longText.trim();	//shortText indeholder nu “Hello!” uden de unødvendige mellemrum.
```
`trim` fjerner ”whitespace”-karakterer (mellemrum, tap,…) fra en tekststreng.

Andre funktioner tager strenge som parametre.
```processing
String aText = ”I like to code”;
String [] hasCode = match(aText, “code”);
if (hasCode != null) {
	println(“String contains the word: code!”);
}
```
`match` kan bruges til at tjekke om en tekststreng indeholder en anden tekststreng. Funktionen tager to parametre. Det første parameter er den streng man gerne vil tjekke om indeholder en anden streng, det andet parameter er den streng man ønsker at undersøger om er indeholdt i den første streng. Resultatet af denne skal gemmes i et array. Hvis arrayet efter at have udført `match` ikke indeholder nogen elementer, (hvis et array er tomt er det lig værdien `null`).

*Eksempel på brug af tekststrenge til at få tekstinput fra bruger: sketch kaldet ”KeyboardInput.pde”*

_**Quick Task: Få tekst til at vises på kanvas enten i en ny sketch, eller brug teksten i sketchen fra sidste øvelse.**_

## Definition af en funktion

Vi kender funktionerne `setup`, `draw`, `mousePressed` osv. Som alle er funktioner der allerede er defineret i processings klassebibliotek, men vi kan også selv definere funktioner der gør noget.

Dette er praktisk til at f.eks. placere ting som skal gentages mange gange, så man undgår kodeduplikering og så gør det generelt programmet mere overskueligt.
```processing
void myFunction() [
	//det du vil have til at ske når funktionen kaldes.
}
```
Funktionen defineres ved at skrive returtypen først, efterfulgt af et vilkårligt navn der beskriver det der sker i funktionen, herefter to parenteser, og til sidst to klammer, `{ }`, hvor imellem koden der skal udføres når man kalder funktionen skrives. Returtypen er en datatype, men hvis den angives som `void`, vil det sige at funktionen ikke skal returnere noget, så dette er nok den type I skal bruge. Hele funktionen skal placeres udenfor de andre funktioner.

Når man så skal bruge sin funktion, så kaldes funktionen når den skal bruges:
```processing
myFunction();
```
Man kan også give ens funktion parametre, hvis der ikke skal ske helt det samme hver gang funktionen kaldes:
```processing
void myFunction(int x, int y) {
	ellipse(x,y, 50,50);
}
```
Hvis den angives med parametre, skal disse angives når funktionen kaldes:
```processing
myFunction(width/2, height/2);
```
*Eksempel på brug af selvdefinerede funktioner frem for at skrive alt i draw: sketch kaldet ”DrawingWFunction.pde” i mappen ”DrawingWFunction.*

_**Quick Task: Arbejd videre på jeres sketch fra de sidste par øvelser og prøv at placere kodestumper i funktioner.**_


# Individuel selvstændig opgave
Lav et program der **skal** opfylde følgende krav:
- Mindst 2 måder at interagere med programmet på (mus, tastatur, ...)
- Mindst 1 funktion du selv definerer
- Mindst 1 loop ud over `draw` (`for` eller `while`)
- Mindst 1 `if`/`else` statement

Programmet skal være færdigt og afleveres inden **tirsdag d. 13. marts 2018 kl. 23.59**

**GEM DETTE PROGRAM! – I skal bruge det når vi skal i gang med at arbejde med Arduino.**

Programmet aflevers ved at uploade det som en **zipfil** på følgende drev: https://drive.google.com/drive/folders/1n7lUI7b3f25L2-24piBPrn5JZwwqZ88F?usp=sharing

Det vil både være os der arbejder i DD Lab og Christian Dindler, der vil se på jeres programmer.

**HUSK AT BRUGE REFERENCEN: https://processing.org/reference/**
