# Formular de login

In majoritatea aplicatiilor, inainte de a accesa continut/functionalitati, trebuie sa ne inregistram si autentificam cu serverul nostru. In viitoare cursuri, vom putea vedea cum sa facem acest lucru, dar pana atunci, haideti sa codam interfata a unei pagini de login si o pagina de inregistrare.

Pentru a incepe, haide-ti sa ne clonam proiectul. Selectati folderul cu proiectele voastre si deschideti cmd (puteti tasta cmd in bara de sus).

Odata in cmd, copiati si paste-uiti urmatoarea comanda:

```bash
git clone https://github.com/club-flutter-blaga/simple_login.git
```

La finalul executiei, in folderul cu proiecte ar trebui sa aveti un folder numit simple_login. Deschideti acel folder in visual studio code.

> 💡 Daca aveti erori, trebuie sa va rulati comanda `flutter pub get`, ca sa va instalati dependintele.

Odata ce aveti instalat totul, puteti sa rulati proiectul, ori din terminal cu `flutter run` ori din vs code din a patra iconiță din stanga.

## Pagina de login


Prima pagina pe care o vom realiza este pagina de login. Pagina se afla in fisierul `lib/pages/login_page.dart`.

Observăm ca in functia `build` intoarcem un `SafeArea()` care are ca si copil un `Scaffold()`. Ne amintim ca `Scaffold()` este widget-ul care ne simbolizează o pagină, si ca sa adaugam continut acestei pagini, trebuie sa ii specificam atributul `body`.

Daca ne uitam la poza, observam ca avem un text, dupa un text field, dupa un text, dupa un textfield si dupa un buton pe care scrie login. Acestea sunt dispuse pe verticala, deci trebuie sa folosim `Column()`. Pentru acestea, vom folosii repetat widget-urile prezentate in cursurile anterioare:

- `Text()`
- `TextField()`
- `ElevatedButton()`

Desigur, exista cateva spațieri intre aceste elemente. Pentru a insera spațiu gol, ne putem folosi de widget-ul `SizedBox()`.

> ❓ Ce atribut trebuie sa ii specificăm ca să spațiem elementele pe verticală?

Pe langa asta, vom observa ca exista si un padding intre marginea ecranului si elementele dinauntru. Acest lucru este realizat de un widget `Padding()` infașurat in jurul coloanei noastre.

> 💡 Ca să exersăm comenzile din Visual Studio Code, mergem si punem cursorul pe `Column()` si apasam ctrl+shift+R. La optiuni, ar trebui sa ne apara "Wrap with Padding".

## Pagina de Register


Pagina de register este foarte similara cu cea de login. Va descurca-ti aici si fara explicatii. Mi s-a facut lene de scris 😴
