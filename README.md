Tema - Arhitectura Sistemelor de Calcul

Seriile 13, 14, 15 Noiembrie 2023

Cuprins

[1 Detalii administrative](#_page1_x81.64_y106.36) 2

1. [Deadline ](#_page1_x81.64_y126.19). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
1. [Reamintirea punctajului pe tema . ](#_page1_x81.64_y174.76). . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
1. [Transmitere .](#_page1_x81.64_y232.63) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
1. [Ce se va transmite ](#_page1_x81.64_y430.34). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
1. [Cum se va face evaluarea ](#_page1_x81.64_y522.50). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2
1. [Alte observatii ](#_page2_x81.64_y106.36). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3

[2 Formularea temei](#_page3_x81.64_y106.36) 4

[3 Cerinte](#_page6_x81.64_y106.36) 7

1. [Cerinta 0x00 - 5p .](#_page6_x81.64_y297.47) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 7
1. [Cerinta 0x01 - 2.5p .](#_page7_x81.64_y150.19) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8
1. [Cerinta 0x02 - 2.5p .](#_page8_x81.64_y192.53) . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9

[4 Inputuri concrete](#_page9_x81.64_y106.36) 10

1. [Cerinta 0x00 ](#_page9_x81.64_y165.19). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10
1. [Cerinta 0x01 ](#_page9_x81.64_y417.43). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10
1. [Cerinta 0x02 ](#_page10_x81.64_y350.53). . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11
1  Detalii<a name="_page1_x81.64_y106.36"></a> administrative
1. Deadline

<a name="_page1_x81.64_y126.19"></a>Putet, i trimite solutiile cel tarziu pe 8 Ianuarie 2024, ora 23:59.

2. Reamintirea<a name="_page1_x81.64_y174.76"></a> punctajului pe tema

Tema valoreaza 40% din nota la acest laborator (conform Cursului 0x00), si este necesara obtinerea notei 5 pentru promovare.

3. Transmitere

<a name="_page1_x81.64_y232.63"></a>Veti trimite solutiile in urmatoarele formulare, in functie de serie:

- seria 13 (grupele 131 si 132): <https://forms.gle/koq26driB5ggJA1f8>
- seria 13 (grupele 133 si 134): <https://forms.gle/ymFukZ4LRikBnhaw8>
- seria 14: <https://forms.gle/NxV4cDubT5eksWPR9>
- seria 15: <https://forms.gle/koq26driB5ggJA1f8>
- optional matematica-informatica: <https://forms.gle/cnLay24h5ULxXPJPA>
- restantieri: <https://forms.gle/HXXz5PR1GLCp5dMi9>

Link-urile catre formulare vor fi completate in perioada imediat urmatoare. Va rugam sa reveniti in zilele urmatoare asupra acestui document.

4. Ce<a name="_page1_x81.64_y430.34"></a> se va transmite

Se vor incarca in formular trei surse (cate una pentru fiecare cerinta) cu denumirile grupa~~ - nume~~ prenume~~ 0.s, grupa~~ nume~~ prenume~~ 1.s, respectiv grupa~~ nume~~ prenume~~ 2.s. Daca aveti mai multe nume / prenume, veti incarca surse denumite, de exemplu, 172~~ GeorgescuXu- lescu~~ IonVasile~~ 0.s. Este important sa incarcati surse cu denumirea corecta, deoarece testarea

va fi automata.

5. Cum<a name="_page1_x81.64_y522.50"></a> se va face evaluarea

Exista doi pasi pentru obt, inerea notei:

- se verifica toate sursele sa nu fie cazuri de plagiat. In cazul in care se detecteaza plagiat, se face automat sesizare catre Comisia de Etica a Universitatii din Bucuresti ;
- sursele care au trecut de verificarea anti-plagiat, vor fi testate automat.

Important! Studentii care au alte configurari fata de cele pe care lucram la laborator, trebuie sa precizeze acest lucru in formularul in care transmit tema, pentru a putea efectua evaluarea si pentru a nu primi 0 implicit.

6. Alte<a name="_page2_x81.64_y106.36"></a> observatii
1. Nu va interzicem sa discutati idei intre voi, dar aveti grija, deoarece este o diferenta importanta intre a da o idee si a da codul direct.
1. Nu folositi convertoare automate din C/C++/alte limbaje in x86, le-am folosit si noi si recu- noastem fara dificultate un cod care nu este scris de voi.
2  Formularea<a name="_page3_x81.64_y106.36"></a> temei

Conway’s Game of Life este un zero-player game bidimensional, inventat de matematicianul John Horton Conway in anul 1970. Scopul acestui joc este de a observa evolutia unui sistem de celule, pornind de la o configuratie initiala, introducand reguli referitoare la moartea, respectiv crearea unei noi celule in sistem. Acest sistem evolutiv este Turing-complete.

Starea unui sistem este descrisa de starea cumulata a celulelor componente, iar pentru acestea avem urmatoarele reguli:

1. Subpopulare. Fiecare celula (care este in viata in generatia curenta) cu mai putin de doi vecini in viata, moare in generatia urmatoare.
1. Continuitate celule vii. Fiecare celula (care este in viata in generatia curenta), cu doi sau trei vecini in viata, va exista si in generatia urmatoare.
1. Ultrapopulare. Fiecare celula (care este in viata in generatia curenta), care are mai mult de trei vecini in viata, moare in generatia urmatoare.
1. Creare. O celula moarta care are exact trei vecini in viata, va fi creata in generatia urmatoare.
1. Continuitate celule moarte. Orice alta celula moarta, care nu se incadreaza in regula de creare, ramane o celula moarta.

Vecinii unei celule se considera urmatorii 8, intr-o matrice bidimensionala:



|<p>a</p><p>00</p>|<p>a</p><p>01</p>|<p>a</p><p>02</p>|
| - | - | - |
|<p>a</p><p>10</p>|celula curenta|<p>a</p><p>12</p>|
|<p>a</p><p>20</p>|<p>a</p><p>21</p>|<p>a</p><p>22</p>|

Definim starea unui sistem la generatia n ca fiind o matrice Sn ∈ Mm×n({0,1}) (m- numarul de linii, respectiv n - numarul de coloane), unde elementul 0 reprezinta o celula moarta, respectiv 1 reprezinta o celula in viata (in generatia curenta).

Definim o k-evolutie (k ≥ 0) a sistemului o iteratie S0 → S1 → ··· → Sk, unde fiecare Si+1 se obtine din Si, aplicand cele cinci reguli enuntate mai sus.

Observatie. Pentru celulele aflate pe prima linie, prima coloana, ultima linie, respectiv ultima coloana, se considera extinderea la 8 vecini, prin considerarea celor care nu se afla in matrice ca fiind celule moarte.

Exemplificare. Fie urmatoarea configuratie initiala S0:



|0|1|1|0|
| - | - | - | - |
|1|0|0|0|
|0|0|1|1|

In primul rand, vom considera extinderea acestei matrice S0 de dimensiuni 3 × 4 intr-o matrice extinsa![](Aspose.Words.bd96b0c6-ee91-4f98-a1e3-5ca7050bd223.001.png) S0 de dimensiuni 5 × 6, astfel:



|0|0|0|0|0|0|
| - | - | - | - | - | - |
|0|0|1|1|0|0|
|0|1|0|0|0|0|
|0|0|0|1|1|0|
|0|0|0|0|0|0|

In cele ce urmeaza, vom lucra doar in interiorul matricei principale, dar considerand extinderea
pentru procesarea corecta a vecinilor. Vom parcurge fiecare element, si vom vedea ce regula evolutiva
putem aplica. De exemplu, pentru elementul de pe pozitia (0,0) in matricea initiala, vom aplica regula de continuitate a celulelor moarte, deoarece este o celula moarta si nu are exact trei vecini in

viata.

Urmatoarea celula este in viata, si are exact doi vecini in viata, astfel ca se aplica regula conti- nuitatii celulelor in viata.

Pentru celula de pe pozitia (0,2) in S0, observam ca are un singur vecin, astfel ca se aplica regula de subpopulare - celula va muri in generatia urmatoare.

Urmand acelasi rationament pentru toate celulele, configuratia sistemului intr-o iteratie (in S1) ![](Aspose.Words.bd96b0c6-ee91-4f98-a1e3-5ca7050bd223.002.png)va fi:



|0|0|0|0|0|0|
| - | - | - | - | - | - |
|0|0|1|0|0|0|
|0|0|0|0|1|0|
|0|0|0|0|0|0|
|0|0|0|0|0|0|

Schema de criptare simetrica. Definim o cheie de criptare (pornind de la o configuratie initiala S0 si o k-evolutie) ca fiind operatia < S0,k >, care reprezinta tabloul unidimensional de date (inteles ca sir de biti) obtinut in urma concatenarii liniilor din matrice din matricea extinsa obtinuta,![](Aspose.Words.bd96b0c6-ee91-4f98-a1e3-5ca7050bd223.003.png) Sk.

De exemplu, pornind de la configuratia anterioara S0, si aplicand doar o 1-evolutie, se obtine matricea extinsa S1 descrisa anterior, care va avea ca efect al aplicarii operatiei < S0,1 > obtinerea urmatorului tablou unidimensional (inteles ca sir de biti):

0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0

Consideram m un mesaj in clar (un sir de caractere fara spatii). Criptarea {m}<S0,k> va insemna XOR-area mesajului in clar m cu rezultatul dat de < S0,k >. Sunt urmatoarele cazuri:

- daca mesajul si cheia au aceeasi lungime, se XOR-eaza element cu element, pana se obtine rezultatul;
- daca mesajul este mai scurt decat cheia, se foloseste doar prima parte din cheie, corespunza- toare lungimii mesajului;
- daca mesajul este mai lung decat cheia, se considera replicarea cheii de oricate ori este nevoie pentru a cripta intreg mesajul.

Consideram ca m = parola, si utilizam drept cheie < S0,1 >, unde S0 este configuratia initiala descrisa anterior. Am vazut ca rezultatul obtinut este sirul de biti:

0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 pe care il vom considera fara spatii:

000000001000000010000000000000

Pentru a efectua criptarea, trebuie sa analizam sirul de criptat, si anume parola. Vom vedea care este codificarea ASCII (binara) a fiecarui caracter din acest sir:



|p|01110000|
| - | - |
|a|01100001|
|r|01110010|
|o|01101111|
|l|01101100|
|a|01100001|

Sirul parola va fi, astfel, sirul binar

011100000110000101110010011011110110110001100001

Observam, in acest caz, ca sirul de criptat este mai lung decat cheia de criptare, astfel ca daca incercam acum o XOR-are, am avea urmatoarea situatie:

mesaj = 011100000110000101110010011011110110110001100001 cheie = 000000001000000010000000000000

Vom considera, in acest caz, ca vom concatena iar cheia la cheia initiala:

mesaj = 011100000110000101110010011011110110110001100001

cheie = 000000001000000010000000000000000000001000000010000000000000

Iar apoi vom pastra din noua cheie doar cat ne este suficient pentru a cripta mesajul:

mesaj = 011100000110000101110010011011110110110001100001 cheie = 000000001000000010000000000000000000001000000010

Mesajul criptat se va obtine prin XOR-are element cu element, stiind ca 0 XOR 0 = 1 XOR 1 = 0, respectiv 0 XOR 1 = 1 XOR 0 = 1. In acest caz,

mesaj = 011100000110000101110010011011110110110001100001 cheie = 000000001000000010000000000000000000001000000010 cript = 011100001110000111110010011011110110111001100011

Mesajul criptat afisat va fi in hexadecimal (pentru a nu fi probleme de afisare a caracterelor), iar in acest caz vom avea:

cript = 0111 0000 1110 0001 1111 0010 0110 1111 0110 1110 0110 0011

- 7 0 E 1 F 2 6 F 6 E 6 3
- 0x70E1F26F6E63

Pentru decriptare se aplica acelasi mecanism, mesajul decriptat se va XOR-a cu cheia calculata, si vom avea in final m XOR k XOR k = m. (k XOR k = 0, iar m XOR 0 = m, din asociativitatea lui XOR, respectiv din regulile de calcul). La decriptare, mesajul nu va fi afisat in hexadecimal, ci in clar.

3  Cerinte

<a name="_page6_x81.64_y106.36"></a>In cadrul acestei teme aveti trei cerinte - o cerinta pentru 5p, una pentru 2.5p, respectiv o cerinta pentru alte 2.5p.

Important! NU dati inputul manual la fiecare retestare a programului! Sunt inputuri lungi, care va vor costa timp. Creati-va un fisier, de exemplu input.txt, in care scrieti inputul dorit, iar dupa ce aveti un executabil, de exemplu task00, pe care in mod normal l-ati fi rulat cu ./task00, rulati comanda ./task00 < input.txt. Astfel, continutul din fisier va fi redirectat la STDIN, exact ca atunci cand ati fi introdus manual valorile. Folositi aceasta informatie si pentru a va testa mai multe inputuri, creandu-va fisiere input0.txt, input1.txt etc., si testandu-le cu ./task00 < input0.txt, ./task00 < input1.txt etc.

Important! Toate sirurile de caractere (utilizate pentru afisare) pe care le definiti in sectiunea .data vor avea, la final, caracterul \n!

Important! Cerintele 0x01, respectiv 0x02 NU sunt cascadate, astfel ca ele pot fi rezolvate independent.

1. Cerinta<a name="_page6_x81.64_y297.47"></a> 0x00 - 5p

Se citesc de la tastatura (STDIN) numarul de linii m, numarul de coloane n, numarul de celule vii

p, pozitiile celulelor vii din matrice, respectiv un numar intreg k. Atentie! In citirea inputului se considera matricea initiala, neextinsa: se citeste configuratia initiala S0, si NU S0! De exemplu, pentru![](Aspose.Words.bd96b0c6-ee91-4f98-a1e3-5ca7050bd223.004.png) matricea din prezentarea cerintei, inputul ar fi urmatorul:

3 // m - numarul de linii

4 // n - numarul de coloane

5 // p - numarul celulelor vii

0

1 // prima celula vie este in (0,1)

0

2 // a doua celula vie este in (0,2)

1

0 // a treia celula vie este in (1,0) 2

2 // a patra celula vie este in (2,2) 2

3 // a cincea celula vie este in (2,3) 5 // numarul intreg k

Se cere, la acest pas, afisarea la STDOUT a configuratiei sistemului dupa o k-evolutie. Atentie! Se va afisa starea sistemului Sk si NU matricea extinsa Sk!![](Aspose.Words.bd96b0c6-ee91-4f98-a1e3-5ca7050bd223.005.png)

Matricea va fi afisata uzual, iar in acest caz, rezultatul este:

0 0 0 0 0 0 0 0 0 0 0 0

(toate celulele mor dupa cea de-a doua iteratie).

Observatie: Elementele de pe linie vor fi afisate cu un spatiu intre ele, iar la finalul fiecarei linii, veti afisa un caracter \n. Si dupa ultima linie veti afisa acel caracter \n!

Se garanteaza urmatoarele:

- 1 ≤ m≤ 18 • p ≤ n ·m
- 1 ≤ n ≤ 18 • k ≤ 15
2. Cerinta<a name="_page7_x81.64_y150.19"></a> 0x01 - 2.5p

Se citesc de la tastatura (STDIN) numarul de linii m, numarul de coloane n, numarul de celule vii

p, pozitiile celulelor vii din matrice, un numar intreg k, un intreg o care poate fi 0 sau 1 (0 pentru criptare, 1 pentru decriptare), respectiv un mesaj mcare poate fi in clar, pentru criptare (un sir de forma 0x..., pentru decriptare). Se cere criptarea/decriptarea mesajului primit, conform cheii care trebuie calculate, conform specificatiilor din formularea temei.

Un input ar putea fi urmatorul:

3 // m - numarul de linii

4 // n - numarul de coloane 5 // p - numarul celulelor vii 0

1 // prima celula vie este in (0,1)

0

2 // a doua celula vie este in (0,2)

1

0 // a treia celula vie este in (1,0) 2

2 // a patra celula vie este in (2,2) 2

3 // a cincea celula vie este in (2,3) 1 // numarul intreg k

0 // se va efectua CRIPTARE

parola // mesajul in clar de criptat

In acest caz, rezultatul este 0x70E1F26F6E63. Pentru inputul:

3 // m - numarul de linii

4 // n - numarul de coloane

5 // p - numarul celulelor vii

0

1 // prima celula vie este in (0,1)

0

2 // a doua celula vie este in (0,2)

1

0 // a treia celula vie este in (1,0) 2

2 // a patra celula vie este in (2,2) 2

3 // a cincea celula vie este in (2,3) 1 // numarul intreg k

1 // se va efectua DECRIPTARE 0x70E1F26F6E63 // sirul hexa de decriptat

rezultatul este parola.

Observatie. Se garanteaza aceleasi conditii ca in cazul primei cerinte, respectiv se garanteaza corectitudinea datelor de intrare, mesajele de criptat vor fi mesaje fara spatii, formate din caractere alpha-numerice (cifre, litere mici, litere mari), iar mesajele de decriptat vor fi siruri hexadecimale care vor incepe cu 0x si vor contine simboluri din multimea {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F}. Mesajele (considerate in clar) vor avea maxim 10 caractere!

3. Cerinta<a name="_page8_x81.64_y192.53"></a> 0x02 - 2.5p

Sa se refaca, intr-un fisier sursa separat (denumit conform sectiunii 1.4.), cerinta 0x00, astfel incat inputul sa fie citit dintr-un fisier in.txt, iar outputul sa fie scris intr-un fisier out.txt, utilizand functii din limbajul C.

4  Inputuri<a name="_page9_x81.64_y106.36"></a> concrete

In aceasta sectiune, vom rescrie inputurile fara comentariile asociate, pentru a fi clara forma in care le veti primi.

1. Cerinta<a name="_page9_x81.64_y165.19"></a> 0x00



|Input|Output|
| - | - |
|<p>3 4 5 0 1 0 2 1 0</p><p>2 2 2 3 5</p>|<p>0 0 0 0 0 0 0 0</p><p>0 0 0 0</p>|

Tabela 1: Input Cerinta 0x00

2. Cerinta<a name="_page9_x81.64_y417.43"></a> 0x01



|Input|Output|
| - | - |
|<p>3 4</p><p>5 0</p><p>1 0</p><p>2 1</p><p>0 2</p><p>2 2</p><p>3 1</p><p>0 parola</p>|0x70E1F26F6E63|

Tabela 2: Input Cerinta 0x01 - criptare



|Input|Output|
| - | - |
|<p>3</p><p>4</p><p>5</p><p>0</p><p>1</p><p>0</p><p>2</p><p>1</p><p>0</p><p>2</p><p>2</p><p>2</p><p>3</p><p>1</p><p>1 0x70E1F26F6E63</p>|parola|

Tabela 3: Input Cerinta 0x01 - decriptare

3. Cerinta<a name="_page10_x81.64_y350.53"></a> 0x02

Sunt aceleasi inputuri ca la Cerinta 0x00, doar ca vor fi citite de program din fisierul in.txt si apoi afisate in out.txt, utilizand functii din limbajul C.
11
