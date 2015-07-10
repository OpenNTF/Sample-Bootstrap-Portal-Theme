Simple Modules Overview (English)
***********************

The 'modules' folder within WebDAV is a well defined folder by WebSphere Portal to provide
Simple Modules to the resource aggregator framework. It allows to define modules in a quick
fashion with a limited set of features. If you need all features of the framework you need
to define your modules through a plugin.xml or JSON file within the WebDAV/contributions
folder.

Each subdirectory within this 'modules' folder defines one module.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

In order to get started quickly there is one pre-defined module called 'getting_started_module'
that you can use to get your resources served up directly.
Simply add your Javascript, CSS or markup file inside one of the subfolders (config or head) and
your resources will be picked up by WebSphere Portal. Please note that you need to invalidate
the resource aggregator cache for WebSphere Portal to pick up the changes.
You can do this by going to Administration -> Theme Analyzer -> Utilities -> Control Center.
On the Control Center page click the link under 'Invalidate Cache'.

Once you start to create your own module, by creating new directory in the 'modules' directory,
you need to make sure that the module is picked up by WebSphere Portal. This is done by adding it
to the profile that is currently set on your page. Usually this will be the default profile.
You can verify the profile for any given page by using the Theme Analyzer's Page Explorer function.
The Page Explorer can be found by going to Administration -> Theme Analyzer -> Examine page profile information.

For further instructions on simple modules read the readme.txt file within the
'getting_started_module' folder.


مقدمة عن وحدات البرامج البسيطة (العربية)
******************************

تعد حافظة 'modules' التي توجد في WebDAV حافظة معرفة بواسطة WebSphere Portal لاتاحة وحدات برامج بسيطة  لاطار عمل أداة تجميع المصادر. حيث تسمح بتعريف وحدات برامج بطريقة سريعة مع مجموعة محددة من الخصائص. اذا كنت تريد كل خصائص اطار العمل، يجب أن تقوم بتعريف وحدات البرامج الخاصة بك من خلال ملف plugin.xml أو ملف JSON في الحافظة WebDAV/contributions.

يقوم كل دليل فرعي في حافظة 'modules' هذه بتعريف وحدة برامج واحدة.
الدليل الرئيسي WebDAV
+ وحدات البرامج
+-- وحدة البرامج A
+-- وحدة البرامج B
+-- ...
+-- وحدة البرامج Z

للبدء سريعا توجد وحدة برامج معرفة مسبقا بالاسم  'getting_started_module' يمكنك استخدامها للحصول على المصادر الخاصة بك مباشرة.
قم باضافة ملف علامات تكويد أو Javascript أو CSS داخل أحد الحافظات الفرعية (config أو head) وسيتم احضار المصادر الخاصة بك بواسطة WebSphere Portal. برجاء ملاحظة أنه يجب  أن تقوم بالغاء فاعلية الذاكرة الوسيطة لأداة تجميع المصادر الى WebSphere Portal لاحضار التغييرات.
يمكنك القيام بذلك من خلال الذهاب الى الادارة -> أداة تحليل النسق الرئيسي -> الوظائف -> مركز التحكم.
في صفحة مركز التحكم اضغط على الوصلة أسفل 'الغاء فعالية الذاكرة الوسيطة'.

بمجرد البدء بتكوين وحدة البرامج الخاصة بك، من خلال تكوين دليل جديد في دليل 'modules'، يجب أن تتأكد من احضاروحدة البرامج بواسطة WebSphere Portal. يتم اجراء هذا من خلال اضافتها الى ملف المواصفات الذي تم تحديده حاليا في الصفحة الخاصة بك. عادة ما يكون هذا ملف المواصفات المفترض.
يمكنك التحقق من ملف المواصفات لأي صفحة محددة من خلال استخدام وظيفة برنامج استعراض الصفحات لأداة تحليل النسق الرئيسي.
يمكن ايجاد برنامج استعراض الصفحات من خلال الذهاب الى الادارة  -> أداة تحليل النسق الرئيسي -> فحص معلومات ملف مواصفات الصفحة. 

لمزيد من التعليمات الخاصة بوحدات البرامج البسيطة، قم بقراءة الملف readme.txt في الحافظة'getting_started_module'. 


Visió general de mòduls simples (Anglès)
***********************

La carpeta 'modules' de WebDAV és una carpeta definida pel WebSphere Portal per proporcionar mòduls simples a l'estructura agregadora de recursos.
Permet definir mòduls d'una manera ràpida amb un conjunt limitat de funcions.
Si necessiteu totes les funcions de l'estructura, haureu de definir els mòduls a través d'un fitxer plugin.xml o JSON dins de la carpeta WebDAV/contributions.

Cada subdirectori de la carpeta 'modules' defineix un mòdul.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

Per tal de començar ràpidament, disposeu d'un mòdul predefinit anomenat 'getting_started_module' que podeu utilitzar per servir els recursos directament.
Només heu d'afegir el fitxer Javascript, CSS o d'etiquetatge dins d'una de les subcarpetes (config o head) i el WebSphere Portal agafarà els recursos. Tingueu en compte que és necessari invalidar la memòria cau de l'agregador de recursos del WebSphere Portal per obtenir els canvis.
Ho podeu fer a Administració -> Analitzador de temes -> Utilitats -> Centre de control.
A la pàgina Centre de control, feu clic a l'enllaç a sota de 'Invalida la memòria cau'.

Quan comenceu a crear el propi mòdul, creant el directori nou al directori 'modules', us heu d'assegurar que el WebSphere Portal reculli el mòdul. Això es pot fer afegint-lo al perfil establert actualment a la pàgina.
Normalment serà el perfil predeterminat.
Podeu verificar el perfil per a qualsevol pàgina proporcionada utilitzant la funció Explorador de pàgines de l'Analitzador de temes.
L'Explorador de pàgines es pot trobar a Administració -> Analitzador de temes -> Examina la informació de perfil de pàgina.

Per obtenir més instruccions sobre els mòduls simples, llegiu el fitxer readme.txt de la carpeta 'getting_started_module'.


Přehled jednoduchých modulů (anglicky)
***********************

Složka 'modules' ve WebDAV je dobře definovaná složka portálu WebSphere Portal, která poskytuje
jednoduché moduly rámci agregátoru prostředků. Umožňuje rychlé definování modulů s omezenou
sadou funkcí. Potřebujete-li všechny funkce rámce, musíte moduly definovat prostřednictvím
souboru plugin.xml nebo souboru JSON ve složce WebDAV/příspěvků.

Každý podadresář v této složce 'modules' definuje jeden modul.
Kořen WebDAV
+ modules
+-- modul A
+-- modul B
+-- ...
+-- modul Z

Aby bylo možné rychle zahájit práci, je k dispozici jeden předdefinovaný modul s názvem 'getting_started_module',
který můžete použít, pokud chcete, aby byly vaše prostředky poskytnuty přímo.
Jednoduše přidejte soubor skriptu Javascript, CSS nebo
soubor markupu do jedné z podsložek (config nebo head) a portál WebSphere Portal si tyto prostředky
vyzvedne. Mějte na zřeteli, že k vyzvednutí změn je třeba zrušit platnost mezipaměti agregátoru prostředků pro portál
WebSphere Portal.
To provedete tak, že přejdete na volbu Administrace -> Analyzátor motivů -> Pomůcky -> Řídicí centrum.
Na stránce Řídicí centrum klepněte na odkaz v sekci 'Zrušit platnost mezipaměti'.

Jakmile začnete vytvářet svůj vlastní modul vytvořením nového adresáře v adresáři 'modules',
musíte zajistit, aby byl modul zachycen portálem WebSphere Portal. To provedete jeho přidáním
do aktuálně nastaveného profilu na vaší stránce. Obvykle se bude jednat o výchozí profil.
Profil libovolné stránky můžete ověřit pomocí funkce Průzkumník stránek analyzátoru motivů.
Průzkumníka stránek naleznete tak, že přejdete na volbu Administrace -> Analyzátor motivů -> Prozkoumat informace o profilu stránky.

Další pokyny k jednoduchým modulům naleznete v souboru readme.txt ve složce
'getting_started_module'.


Oversigt over enkle moduler
***************************

Folderen 'modules' i WebDAV kendes fra WebSphere Portal og bruges til at levere enkle moduler
til strukturen i ressourceaggregatoren. Den gør det muligt at definere moduler på en hurtig
måde med et begrænset sæt funktioner. Hvis du skal bruge alle funktioner i strukturen, skal du
definere dine moduler gennem en plugin.xml eller JSON-fil i folderen WebDAV/contributions.

Hvert underbibliotek i folderen 'modules' definerer ét modul.
WebDAV Root
+ modules
+-- modul A
+-- modul B
+-- ...
+-- modul Z

For at komme hurtigt i gang er der ét foruddefineret modul, der hedder 'getting_started_module',
som du kan bruge til at få leveret dine ressourcer direkte.
Du skal blot tilføje din Javascript-, CSS- eller markup-fil i en af underfolderne (config eller
head). Så bliver dine ressourcer opsamlet af WebSphere Portal. Bemærk, at du skal ugyldiggøre
cachen til ressourceaggregatoren til WebSphere Portal for at hente ændringerne. Det kan du gøre
ved at gå til Administration -> Temaanalyse -> Hjælpeprogrammer -> Kontrolcenter.
Klik på linket under 'Ugyldiggør cache' på siden i Kontrolcenter.

Når du begynder at oprette dit eget modul ved at oprette et nyt bibliotek i biblioteket
'modules', skal du sørge for, at modulet samles op af WebSphere Portal. Det gør du ved at tilføje
det til den profil, der i øjeblikket er angivet på din side. Det er normalt standardprofilen.
Du kan kontrollere profilen for en bestemt side vha. funktionen Sidestifinder i Temaanalyse.
Du kan finde Sidestifinder ved at gå til Administration -> Temaanalyse -> Undersøg oplysninger om sideprofil.

Der er flere oplysninger om enkle moduler i filen readme.txt i folderen 'getting started module'.


Überblick über einfache Module (Deutsch)
***********************

Der Ordner "modules" in WebDAV ist ein von WebSphere Portal ordnungsgemäß definierter Ordner, der dem Ressourcenaggregatorframework einfache Module zur Verfügung stellt. Er ermöglicht die schnelle Definition von Modulen mit einem begrenzten Funktionssatz. Wenn Sie alle Funktionen des Frameworks benötigen, müssen Sie Ihre Module über die Datei plugin.xml oder über eine JSON-Datei im Ordner "WebDAV/contributions" definieren.

Jedes Unterverzeichnis innerhalb des Ordners "modules" definiert ein Modul.
WebDAV-Stammverzeichnis
+ modules
+-- Modul A
+-- Modul B
+-- ...
+-- Modul Z

Damit Sie schnell startbereit sind, steht ein vordefiniertes Modul mit dem Namen "getting_started_module" zur Verfügung. Dieses können Sie verwenden, um Ihre Ressourcen direkt bereitzustellen.
Fügen Sie einfach ihre Javascript-, CSS- oder Markup-Datei in einen der Unterordner ("config" oder "head") ein, damit Ihre Ressourcen von WebSphere Portal berücksichtigt werden. Beachten Sie, dass Sie den Cachespeicher des Ressourcenaggregators inaktivieren müssen, damit WebSphere Portal die Änderungen berücksichtigt.
Wählen Sie hierfür "Verwaltung -> Motivanalysefunktion -> Dienstprogramme -> Steuerzentrale" aus.
Klicken Sie auf der Seite "Steuerzentrale" auf den Link unter "Cachespeicher inaktivieren".

Sobald Sie mit dem Erstellen Ihres eigenen Moduls beginnen, indem Sie ein neues Verzeichnis im Verzeichnis "modules" erstellen, müssen Sie sicherstellen, dass das Modul von WebSphere Portal berücksichtigt wird. Fügen Sie es dafür dem Profil hinzu, das momentan auf Ihrer Seite festgelegt ist. In der Regel ist dies das Standardprofil.
Sie können das Profil mithilfe der Funktion "Seitenexplorer" in der Motivanalysefunktion für jede beliebige Seite überprüfen.
Den Seitenexplorer können Sie über "Verwaltung -> Motivanalysefunktion -> Seitenprofilinformationen prüfen" aufrufen.

Weitere Anweisungen zu einfachen Modulen finden Sie in der Datei readme.txt im Ordner "getting_started_module".


Συνοπτική παρουσίαση απλών λειτουργικών μονάδων (Ελληνικά)
***********************************************

Ο φάκελος 'modules' στο WebDAV είναι ένας φάκελος που ορίζεται από το WebSphere Portal για την παροχή
απλών λειτουργικών μονάδων στο πλαίσιο συγκρότησης πόρων (resource aggregator framework). Επιτρέπει τον
γρήγορο ορισμό λειτουργικών μονάδων, αλλά με περιορισμένο σύνολο λειτουργιών. Αν χρειάζεστε όλες τις
λειτουργίες του πλαισίου θα πρέπει να ορίσετε τις λειτουργικές μονάδες σας μέσω ενός αρχείου plugin.xml ή
JSON στο φάκελο WebDAV/contributions.

Κάθε υποκατάλογος σε αυτόν το φάκελο 'modules' ορίζει μία λειτουργική μονάδα.
Κεντρικός κατάλογος WebDAV
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

Για να ξεκινήσετε γρήγορα, υπάρχει μια προκαθορισμένη λειτουργική μονάδα που ονομάζεται 'getting_started_module',
την οποία μπορείτε να χρησιμοποιήσετε για την απευθείας χρήση των πόρων σας. Απλά προσθέστε
το αρχείο Javascript, CSS ή κώδικα μορφοποίησης που επιθυμείτε σε έναν από τους υποφακέλους (config ή head)
και οι πόροι σας θα ανακτηθούν και θα χρησιμοποιηθούν από το WebSphere Portal. Θα πρέπει να ακυρώσετε τη
λανθάνουσα μνήμη της λειτουργίας συγκρότησης πόρων προκειμένου το WebSphere Portal να εφαρμόσει
τις αλλαγές. Για το σκοπό αυτό, επιλέξτε Διαχείριση -> Λειτουργία ανάλυσης θεμάτων -> Βοηθήματα -> Κέντρο ελέγχου.
Στη σελίδα Κέντρο ελέγχου, πατήστε στη διασύνδεση στην ενότητα 'Ακύρωση λανθάνουσας μνήμης'.

Όταν δημιουργήσετε τη δική σας λειτουργική μονάδα, δημιουργώντας ένα νέο κατάλογο στον κατάλογο 'modules',
θα πρέπει να βεβαιωθείτε ότι η λειτουργική μονάδα θα είναι διαθέσιμη για χρήση από το WebSphere Portal. Αυτό
εξασφαλίζεται με την προσθήκη της στο προφίλ που έχει οριστεί για τη σελίδα σας. Συνήθως, αυτό είναι το
προεπιλεγμένο προφίλ. Μπορείτε να επαληθεύσετε ποιο προφίλ χρησιμοποιείται για μια δεδομένη σελίδα χρησιμοποιώντας
τη λειτουργία Εξερεύνηση σελίδων της λειτουργίας ανάλυσης θεμάτων. Για να βρείτε τη λειτουργία Εξερεύνηση σελίδων,
επιλέξτε Διαχείριση -> Λειτουργία ανάλυσης θεμάτων -> Εξέταση πληροφοριών προφίλ σελίδας.

Για περισσότερες οδηγίες σχετικά με τις απλές λειτουργικές μονάδες, διαβάστε το αρχείο readme.txt
στο φάκελο 'getting_started_module'.


Visión general de los módulos simples
*************************************

La carpeta 'modules' de WebDAV es una carpeta definida por WebSphere Portal para ofrecer módulos simples a la infraestructura del agregador de recursos. Le permite definir módulos de forma rápida con un conjunto limitado de funciones. Si necesita todas las funciones de la infraestructura, tiene que definir los módulos mediante un archivo plugin.xml o JSON con dentro de la carpeta WebDAV/contributions.

Cada subdirectorio de la carpeta 'modules' define un módulo.
Raíz de WebDAV
+ módulos
+-- módulo A
+-- módulo B
+-- ...
+-- módulo Z

Para a empezar a trabajar con rapidez, hay un módulo predefinido denominado 'getting_started_module' que puede utilizar para poder proporcionar sus recursos directamente.
Simplemente añada su archivo Javascript, CSS
o de marcación a una de las subcarpetas (config o head) y WebSphere Portal tomará sus recursos. Tenga en cuenta que debe invalidar la memoria caché del agregador de recursos para que WebSphere Portal adopte los cambios.
Para ello vaya a Administración -> Analizador de temas -> Programas de utilidad -> Centro de control.
En la página Centro de control, pulse el enlace que hay bajo 'Invalidar memoria caché'.

Cuando empiece a crear su propio módulo, creando un nuevo directorio en el directorio 'modules', debe asegurarse de que WebSphere Portal tome el módulo. Para ello añádalo al perfil actualmente definido en la página. Generalmente es el perfil predeterminado.
Puede verificar el perfil para cualquier página determinada utilizando la función del explorador de páginas de Analizador de temas.
Encontrará el explorador de páginas en Administración -> Analizador de temas -> Examinar información de perfil de página.

Para ver más instrucciones sobre los módulos simples, consulte el archivo readme.txt de la carpeta 'getting_started_module'.


Yksinkertaisten moduulien yleiskuvaus
***********************

Tätä WebDAV-ohjelman Moduulit-kansiota käytetään WebSphere-portaalissa määritettäessä
resurssikoostimessa käytettäviä yksinkertaisia moduuleja. Toiminnolla voidaan määrittää nopeasti
moduuleja, mutta niiden toiminnallisuutta on rajoitettu. Jos tarvitset kaikkia ympäristön toimintoja, määritä
moduulit plugin.xml- tai JSON-tiedostossa WebDAV/Lisäykset-
kansiossa.

Jokainen Moduulit-kansion alihakemisto liittyy yhteen moduuliin.
WebDAV-pääkansio
+ Moduulit
+-- moduuli A
+-- moduuli B
+-- ...
+-- moduuli Z

Kansiossa on valmiina ennalta määritetty getting_started_module-moduuli,
jolla voit aloittaa moduulien luonnin nopeasti.
Lisää Javascript-, CSS- tai markup-tiedosto yhteen alikansioista (config-kansio tai pääkansio).
WebSphere-portaali hakee tämän jälkeen resurssit. Muista, että sinun täytyy mitätöidä
resurssikoostimen välimuisti, jotta WebSphere-portaali ottaa muutokset käyttöön.
Voit tehdä tämän valitsemalla Hallinta -> Teeman analysointitoiminnot -> Apuohjelmat -> Ohjaustoiminnot.Valitse Ohjaustoiminnot-sivulla linkki kohdassa Mitätöi välimuisti.

Kun aloitat oman moduulin tekemisen luomalla uuden hakemiston Moduulit-hakemistoon,
varmista, että WebSphere-portaali hakee moduulin. Voit tehdä sen lisäämällä moduulin
sivulle määritettyyn profiiliin. Yleensä kyseessä on oletusprofiili.
Voit tarkistaa sivun profiilin käyttämällä teeman analysointitoimintojen Sivun hallinta -toimintoa.
Voit avata Sivun hallinta -toiminnon valitsemalla Hallinta -> Teeman analysointitoiminnot -> Tarkista sivun profiilitiedot.

Lisätietoja yksinkertaisista moduuleista on getting_started-module-kansion
readme-tiedostossa.


Présentation des modules simples
***********************

Le dossier 'modules' dans WebDAV est un dossier bien défini par WebSphere Portal pour fournir des modules simples au framework de l'agrégateur de ressources. Il permet de définir rapidement des modules avec un nombre limité de fonctions. Si vous avez besoin de toutes les fonctions du framework, vous devez définir vos modules via un fichier plugin.xml ou JSON dans le dossier WebDAV/contributions.

Chaque sous-répertoire dans le dossier 'modules' définit un module.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

Pour commencer rapidement, vous pouvez utiliser le module prédéfini nommé 'getting_started_module' pour que vos ressources soient traitées directement. Ajoutez simplement votre fichier Javascript, CSS ou de marquage dans l'un des sous-dossiers (config ou head) et vos ressources seront sélectionnées par WebSphere Portal. Notez que vous devez invalider le cache de l'agrégateur de ressources afin que WebSphere Portal sélectionne vos modifications. Vous pouvez effectuer cette opération en cliquant sur Administration -> Analyseur de thème -> Utilitaires -> Centre de contrôle. Dans la page du Centre de contrôle, cliquez sur le lien sous 'Invalider le cache'.

Une fois que vous commencez à créer votre propre module, en créant un répertoire dans le répertoire 'modules', vous devez vous assurer que le module est prélevé par WebSphere Portal. Cette opération s'effectue par l'ajout du module au profil qui est actuellement défini sur votre page. Généralement, il s'agit du profil par défaut. Vous pouvez vérifier le profil pour chaque page à l'aide de la fonction Explorateur de page de l'Analyseur de thème. L'Explorateur de page est accessible via Administration -> Analyseur de thème -> Examiner les informations du profil de page.

Pour des instructions complémentaires sur les modules simples, lisez le fichier readme.txt situé dans le dossier 'getting_started_module'.


Pregled jednostavnih modula (hrvatski)
***********************

Folder 'modules' unutar WebDAV-a je dobro definirani folder WebSphere Portala koji pruža
jednostavne module frameworku skupljača resursa. Omogućuje brzo definiranje modula
pomoću ograničenog skupa funkcija. Ako su vam potrebne sve funkcije frameworka, morate
definirati module koristeći plugin.xml ili JSON datoteku unutar foldera
WebDAV/contributions.

Svaki poddirektorij foldera 'modules' definira jedan modul.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

Da bi se ubrzao početak ovog procesa, postoji jedan unaprijed definirani modul s nazivom 'getting_started_module'
koji možete upotrijebiti za izravno dostavljanje resursa.
Jednostavno dodajte svoju Javascript, CSS
ili markup datoteku u jedan od podfoldera (config ili head) i WebSphere Portal će pokupiti vaše
resurse. Imajte na umu da je potrebno poništiti predmemoriju skupljača resursa da bi
WebSphere Portal pokupio promjene.
To možete napraviti odlaskom u Administracija -> Analizator teme -> Pomoćni programi -> Kontrolni centar.
Na stranici Kontrolnog centra kliknite na vezu pod 'Poništi predmemoriju'.

Kada kreirate vlastiti modul kreiranjem novog direktorija u direktoriju 'modules',
morate se pobrinuti da WebSphere Portal pokupi taj modul. To možete napraviti tako da ga
dodate profilu koji je trenutno postavljen na vašoj stranici. To je obično default profil.
Profil bilo koje stranice možete provjeriti koristeći funkcija istraživača stranica analizatora teme.
Istraživač stranica možete pronaći na Administracija -> Analizator teme -> Ispitaj informacije profila stranice. 

Za dodatne upute o jednostavnim modulima, pročitajte datoteku readme.txt u folderu
'getting_started_module'.


Egyszerű modulok bemutatása (magyar)
***********************

Ez a 'modules' mappa a WebDAV mappán belül a WebSphere Portal által jól
meghatározott mappa, mely egyszerű modulokat biztosít az
erőforrásösszesítő keretrendszer számára. Lehetővé teszi olyan modulok
gyors meghatározását, melyek a szolgáltatások korlátozott készletével
rendelkeznek. Ha a keretrendszer összes szolgáltatására szüksége van,
akkor plugin.xml vagy JSON fájlon keresztül határozza meg a modulokat a
WebDAV/contributions mappában. 

A 'modules' mappa minden egyes alkönyvtára egy-egy modult határoz meg.
WebDAV gyökér
+ modules
+-- modul A
+-- modul B
+-- ...
+-- modul Z

A gyors kezdéshez van egy előre meghatározott modul, melynek neve
'getting_started_module'. Ennek használatával elérheti, hogy a rendszer
közvetlenül szolgáltassa az erőforrásokat.
Egyszerűen vegye fel a Javascript, CSS vagy kódfájlt valamelyik almappába
(config vagy head), és a WebSphere Portal észleli ezeket az erőforrásokat. 
Vegye figyelembe, hogy érvénytelenítenie kell az erőforrásösszesítő
gyorsítótárat, hogy a WebSphere Portal felvegye a módosításokat.
Ehhez kattintson az Adminisztráció -> Témaelemző -> Segédprogramok ->
Vezérlőközpont menüpontra.
A Vezérlőközpont oldalon kattintson a 'Gyorsítótár érvénytelenítése'
alatti hivatkozásra. 

Miután megkezdte a saját moduljának létrehozását azáltal, hogy új
alkönyvtárat hozott létre a 'modules' könyvtárban, gondoskodjék róla, hogy
a WebSphere Portal észlelje a modult. Ehhez fel kell azt venni az oldalon
jelenleg beállított profilba. Ez általában az alapértelmezett profil.
A Témaelemző Oldalböngésző funkciójával bármely oldalról megtudhatja, hogy
melyik profil tartozik hozzá.
Az Oldalböngésző eléréséhez kattintson az Adminisztráció -> Témaelemző ->
Oldal profilinformációinak vizsgálata menüpontra. 

Az egyszerű modulokkal kapcsolatos további útmutatást a
'getting_started_module' mappában található readme.txt fájl tartalmaz. 


Panoramica Moduli semplici
***********************

La cartella 'modules' in WebDAV è una cartella ben definita da WebSphere Portal per fornire
moduli semplici al framework dell'aggregatore di risorse. Consente di definire i moduli in modo rapido
con un insieme limitato di funzioni. Se si necessitano tutte le funzioni del framework, è necessario
definire i moduli attraverso un file plugin.xml o JSON nella cartella WebDAV/contributions.

Ciascuna directory secondaria nella cartella 'modules' definisce un modulo.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

Per iniziare rapidamente, esiste un modulo predefinito chiamato 'getting_started_module'
che è possibile utilizzare per avere le risorse fornite direttamente.
Aggiungere semplicemente il il file Javascript, CSS
o markup in una delle cartelle secondarie (config o head) e le risorse saranno
selezionate da WebSphere Portal. Si noti che è necessario invalidare la cache dell'aggregatore di risorse per
WebSphere Portal per selezionare le modifiche.
È possibile eseguire ciò andando ad Gestione -> Analizzatore temi -> Utility -> Control Center.
Nella pagina Control Center fare clic sul link in 'Invalida Cache'.

Una volta avviata la creazione del modulo, creando una nuova directory nella directory 'modules',
è necessario accertarsi che il modulo sia selezionato da WebSphere Portal. Ciò avviene aggiungendo il modulo al profilo
attualmente impostato sulla pagina. In genere sarà il profilo predefinito.
È possibile verificare il profilo per ogni pagina utilizzando la funzione Explorer della pagina dell'Analizzatore temi.
L'Explorer pagina si trova andando a Gestione -> Analizzatore temi -> Esamina le informazioni del profilo della pagina.

Per ulteriori informazioni suo moduli semplici leggere il file readme.txt nella cartella
'getting_started_module'.


Simple Modules Overview (English)
***********************

The 'modules' folder within WebDAV is a well defined folder by WebSphere Portal to provide
Simple Modules to the resource aggregator framework. It allows to define modules in a quick
fashion with a limited set of features. If you need all features of the framework you need
to define your modules through a plugin.xml or JSON file within the WebDAV/contributions
folder.

Each subdirectory within this 'modules' folder defines one module.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

In order to get started quickly there is one pre-defined module called 'getting_started_module'
that you can use to get your resources served up directly.
Simply add your Javascript, CSS or markup file inside one of the subfolders (config or head) and
your resources will be picked up by WebSphere Portal. Please note that you need to invalidate
the resource aggregator cache for WebSphere Portal to pick up the changes.
You can do this by going to Administration -> Theme Analyzer -> Utilities -> Control Center.
On the Control Center page click the link under 'Invalidate Cache'.

Once you start to create your own module, by creating new directory in the 'modules' directory,
you need to make sure that the module is picked up by WebSphere Portal. This is done by adding it
to the profile that is currently set on your page. Usually this will be the default profile.
You can verify the profile for any given page by using the Theme Analyzer's Page Explorer function.
The Page Explorer can be found by going to Administration -> Theme Analyzer -> Examine page profile information.

For further instructions on simple modules read the readme.txt file within the
'getting_started_module' folder.


単純モジュールの概要 (日本語)
***********************

WebDAV 内の「modules」フォルダーは、単純モジュールをリソース統合機能フレームワークに提供するために、
WebSphere Portal によって明確に定義されたフォルダーです。これによって、限定された機能セットを持つモジュールを
速やかに定義できます。フレームワークのすべての機能が必要な場合、WebDAV/contributions フォルダー内の
plugin.xml または JSON ファイルを使用してモジュールを定義する必要が
あります。

この「modules」フォルダー内の各サブディレクトリーによって、1 つのモジュールが定義されます。
WebDAV ルート
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

素早く開始するには、「getting_started_module」という名前の事前定義モジュールがあり、これを使用して、
リソースを直接使用することができます。
Javascript、CSS、またはマークアップ・ファイルをいずれかのサブフォルダー (config または head) に追加するだけ
で、WebSphere Portal によってリソースが取得されます。リソース統合機能キャッシュを無効化して、
WebSphere Portal が変更内容を取得するようにする必要があることに注意してください。
これを実行するには、「管理」->「テーマ・アナライザー」->「ユーティリティー」->「コントロール・センター」に移動します。
その後、「コントロール・センター」ページで、「キャッシュの無効化」の下のリンクをクリックします。

「modules」ディレクトリー内に新規ディレクトリーを作成することによって独自のモジュールの作成を開始した場合は、
モジュールが WebSphere Portal によって確実に取得されるようにする必要があります。これは、現在ページに設定されているプロファイルに
モジュールを追加する方法で行います。通常、
これがデフォルト・プロファイルになります。テーマ・アナライザーのページ・エクスプローラー機能を使用して、あらゆるページのプロファイルを検査できます。
ページ・エクスプローラーは、「管理」->「テーマ・アナライザー」->「ページ・プロファイル情報の調査」に移動して見つけることができます。

単純モジュールの詳しい説明については、「getting_started_module」フォルダー内の readme.txt ファイル
を参照してください。


Қарапайым модульдерді шолу (Ағылшын)
***********************

Бұл WebDAV ішіндегі 'модульдер' қалтасы ресурсты біріктіру құрылымына қарапайым модульдерді қамтамасыз ететін WebSphere
порталы арқылы жақсы анықталған. Бұл модульдерді шектелген мүмкіндіктер жинағымен жылдам анықтауға мүмкіндік береді. Құрылымның барлық мүмкіндіктерін қажет етсеңіз, онда модульдерді plugin.xml немесе JSON файлы арқылы WebDAV/үлестер қалтасында анықтау керек.

Әр бір ішкі каталог осы 'модульдер' қалтасы арқылы бір модульді анықтайды.
WebDAV түбірі
+ модульдер
+-- A модулі
+-- B модулі
+-- ...
+-- Z модулі

Жылдам бастаудың орнына мұнда ресурстарыңыздың тікелей қызмет етуі үшін қолданғыңыз келгенде 'getting_started_module' деп аталатын бір алдын ала анықталған модуль бар.
Javascript, CSS немесе түзету файлын ішкі қалталардың біріне қосыңыз (конфигурация немесе тақырып) және ресурстарыңыз WebSphere порталы арқылы таңдалады. ресурс біріктірушісінің кэшін WebSphere порталы үшін өзгерістерді таңдау үшін жарамсыз етуіңіз керек екенін ескеріңіз. Мұны Әкімші -> Тақырыпты талдаушы -> Қызметтік бағдарламалар -> Басқару орталығына бару арқылы орындай аласыз.
Басқару орталығы бетінде 'Кэшті жарамсыз ету' астындағы байланысты басыңыз.

'Модульдер' каталогында жаңа катлогты құру арқылы өзіңіздің жеке модуліңізді құруды бастасаңыз,
онда модульдің WebSphere порталы арқылы таңдалғанын тексеруіңіз керек. Бұл оны парағыңызда орнатылған профайлға қосу арқылы орындалды. Әдетте бұл әдепкі профайл болады.
Профайлды кез келген берілген парақ үшін Theme Analyzer's Page Explorer қызметін қолдану арқылы тексере аласыз.
Бет жетектегіші Әкімші -> Тақырып талдаушы -> Парақ профайлын анықтау ақпаратына бару арқылы табылады.

Қарапайым модульдерге байланысты келесі нұсқаулықтарда readme.txt файлын 'getting_started_module' қалтасынан қараңыз.


단순 모듈 개요
***********************

WebDAV 내의 'modules' 폴더는 자원 수집자 프레임워크에 단순 모듈을 제공하도록
WebSphere Portal에서 올바르게 정의된 폴더입니다. 이 폴더에서는 제한된 기능
세트로 신속하게 모듈을 정의할 수 있습니다. 프레임워크의 기능이 모두 필요한
경우 WebDAV/contributions 폴더 내의 plugin.xml 또는 JSON 파일을 통해 모듈을
정의해야 합니다.

이 'modules' 폴더의 각 서브디렉토리는 하나의 모듈을 정의합니다.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

신속하게 시작하려면 자원을 직접 제공하는 데 사용할 수 있는 하나의
미리 정의된 모듈 'getting_started_module'이 있어야 합니다.
하위 폴더(config 또는 head) 중 하나에 Javascript, CSS 또는 마크업 파일을
추가하십시오. WebSphere Portal에서 자원을 선택합니다. 변경사항을
적용하려면 WebSphere Portal의 자원 수집자 캐시를 무효화해야 합니다.
이를 수행하기 위해 관리 -> 테마 분석기 -> 유틸리티 -> Control Center로 이동합니다.
Control Center 페이지에서 '캐시 무효화' 아래에 있는 링크를 클릭하십시오.

'modules' 디렉토리에서 디렉토리를 새로 작성하여 사용자의 모듈 작성을 시작하면
WebSphere Portal에서 모듈을 선택하게 해야 합니다. 이렇게 하려면 페이지에 현재
설정된 프로파일에 이 모듈을 추가해야 합니다. 대개 이 프로파일이 기본 프로파일입니다.
테마 분석기의 페이지 탐색기 기능을 사용하여 지정된 페이지의 프로파일을 검증할 수 있습니다.
페이지 탐색기는 관리 -> 테마 분석기 -> 페이지 프로파일 정보 검토로 이동하여 찾을 수 있습니다.

단순 모듈에 대한 자세한 지침을 확인하려면 'getting_started_module' 폴더에 있는
readme.txt 파일을 읽으십시오.


Eenvoudige modules - Overzicht
******************************

De map 'modules' binnen WebDAV is een goed gedefinieerde map van WebSphere Portal voor het leveren van eenvoudige modules aan het framework van de resourceaggregator. Hiermee kunt u op een snelle manier modules met een beperkte set van functies definiëren. Als u alle functies van het framework nodig hebt, moet u uw modules definiëren via een plugin.xml of een JSON-bestand in de map WebDAV/contributions. 

In elke subdirectory binnen de map 'modules' wordt één module gedefinieerd.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

Om snel aan de slag te gaan, is een vooraf gedefinieerde module met de naam 'getting_started_module' beschikbaar, die u kunt gebruiken om uw resources rechtstreeks aan te bieden.
Voeg simpelweg uw JavaScript-, CSS- of markupbestand toe aan een van de submappen (config of head) en uw resources worden opgenomen in WebSphere Portal. Merk op dat u de cache voor de resourceaggregator ongeldig moet maken, zodat WebSphere Portal de wijzigingen kan oppikken.
U kunt dit doen door het selecteren van Beheer -> Thema-analyseprogramma -> Hulpprogramma's -> Control Center.
Op de Control Center-pagina klikt u op de link onder 'Cache ongeldig maken'.

Wanneer u begint met het maken van uw eigen module, door een nieuwe directory te maken onder de directory 'modules', moet u ervoor zorgen dat uw module kan worden opgepikt door WebSphere Portal. U kunt dit doen door deze toe te voegen aan het profiel dat momenteel is ingesteld voor uw pagina. Dit is doorgaans het standaardprofiel.
U kunt het profiel voor een pagina controleren met behulp van de paginaverkenner van Thema-analyseprogramma.
De paginaverkenner kunt u vinden door het selecteren van Beheer -> Thema-analyseprogramma -> Gegevens van paginaprofiel onderzoeken.

Voor meer instructies voor eenvoudige modules raadpleegt u het bestand readme.txt binnen de map 'getting_started_module'.


Oversikt over enkle moduler (norsk)
***********************

Mappen 'modules' i WebDAV er en WebSphere Portal-definert mappe for å levere enkle
moduler til Resource Aggregator-rammeverket. Den gjør det mulig å definere moduler på
en rask måte med et begrenset sett med funksjoner. Hvis du trenger alle funksjonene i
rammeverket må du definere dine moduler via en plugin.xml eller en JSON-fil i mappen WebDAV/contributions.

Hver underkatalog i denne 'modules'-mappen definerer en modul.
WebDAV-rot
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

For at du skal komme i gang raskt finnes det en forhåndsdefinert modul kalt 'getting_started_module'
som du kan bruke for å få levert dine ressurser direkte.
Legg bare din Javascript-, CSS- eller kodefil i en av undermappene (config eller head), så
blir ressursene dine plukket opp av WebSphere Portal. Merk at du må ugyldiggjøre Resource
Aggregator-hurtigbufferen for at WebSphere Portal skal kunne plukke opp endringene.
Du kan gjøre dette ved å gå til Administrasjon -> Temaanalysator -> Funksjoner -> Kontrollsenter.
På siden Kontrollsenter klikker du på linken under 'Ugyldiggjør hurtigbuffer'.

Når du begynner å opprette din egen modul, ved å opprette en ny katalog i 'modules'-katalogen, må du
passe på at modulen blir plukket opp av WebSphere Portal. Dette gjør du ved å legge den til i profilen
som er definert på siden. Vanligvis er dette standardprofilen.
Du kan verifisere profilen for en hvilken som helst side ved hjelp av temaanalysatorens sideutforskerfunksjon.
Du finner sideutforskerfunksjonen ved å gå til Administrasjon -> Temaanalysator -> Undersøk sideprofilinformasjon.

For flere instruksjoner for enkle moduler kan du lese filen readme.txt i mappen 'getting_started_module'.


Przegląd modułów prostych (polski)
***********************

Folder modules udostępniany przez protokół WebDAV to folder zdefiniowany w produkcie WebSphere
Portal na potrzeby udostępniania modułów prostych dla środowiska agregatora zasobów. Umożliwia on
szybkie definiowanie modułów z ograniczonym zestawem funkcji. Jeśli potrzebne są wszystkie
funkcje środowiska, należy zdefiniować moduły przy użyciu pliku plugin.xml lub pliku JSON w obrębie
folderu WebDAV/contributions. 

Każdy podkatalog w folderze modules definiuje jeden moduł.
Katalog główny WebDAV
+ modules
+-- moduł A
+-- moduł B
+-- ...
+-- moduł Z

Dzięki predefiniowanemu modułowi o nazwie getting_started_module, który pozwala na bezpośrednie
udostępnianie zasobów, można szybko rozpocząć pracę. Należy po prostu dodać plik JavaScript, CSS
lub języka znaczników do jednego z podfolderów (config lub head), co spowoduje wykrycie zasobów
przez produkt WebSphere Portal. Należy unieważnić pamięć podręczną agregatora
zasobów produktu WebSphere Portal, aby zmiany zostały uwzględnione. Czynność tę można wykonać na
stronie Administrowanie -> Analizator kompozycji -> Programy narzędziowe -> Centrum sterowania. Na
stronie Centrum sterowania należy kliknąć odsyłacz w sekcji Unieważnianie pamięci podręcznej. 

Po rozpoczęciu tworzenia własnego modułu przez utworzenie nowego katalogu w katalogu modules
należy sprawdzić, czy moduł jest wykrywany przez produkt WebSphere Portal. Czynność tę wykonuje
się, dodając go do profilu aktualnie ustawionego na stronie użytkownika. Zwykle jest to profil
domyślny. Profil można sprawdzić dla dowolnej strony za pomocą funkcji eksploratora stron w
Analizatorze kompozycji. Eksplorator stron jest dostępny na stronie Administrowanie -> Analizator
kompozycji -> Badanie informacji o profilu strony. 

Dalsze instrukcje dotyczące modułów prostych zawiera plik readme.txt w folderze getting_started_module. 


Descrição geral de Módulos simples (Português)
***********************

A pasta 'modules' no WebDAV é uma pasta bem definida pelo WebSphere Portal para facultar
Módulos simples à estrutura do agregador de recursos. Permite definir módulos de forma rápida
com um conjunto limitado de funções. Se necessitar de todas as funções da estrutura, terá de
definir os módulos através de um ficheiro plugin.xml ou JSON na pasta de contribuições/WebDAV.

Cada subdirectório na pasta 'modules' define um módulo.
Raiz WebDAV
+ módulos
+-- módulo A
+-- módulo B
+-- ...
+-- módulo Z

Para começar a trabalhar rapidamente, existe um módulo predefinido designado por 'getting_started_module',
que pode utilizar para que os seus recursos sejam distribuídos directamente.
Basta adicionar o ficheiro Javascript, CSS
ou de marcação dentro de uma das subpastas (config ou head) e os recursos serão recolhidos
pelo WebSphere Portal. Tenha em atenção que é necessário invalidar a cache do agregador de recursos
para que o WebSphere Portal recolha as alterações.
Para tal, pode aceder a Administração -> Analisador de temas -> Utilitários -> Control Center.
Na página Control Center, faça clique na ligação sob 'Invalidar cache'.

Assim que começar a criar o seu módulo, criando um novo directório no directório 'modules',
é necessário certificar-se de que o módulo é recolhido pelo WebSphere Portal. Para tal, adicione-o
ao perfil actualmente definido na página. Normalmente, este será o perfil predefinido.
Pode verificar o perfil para qualquer página indicada, utilizando a função Explorador de páginas do Analisador de temas.
Para encontrar o Explorador de páginas, aceda a Administração -> Analisador de temas -> Examinar informações de perfil da página.

Para obter mais instruções sobre módulos simples, leia o ficheiro readme.txt que se encontra na pasta
'getting_started_module'.


Visão Geral Simples Módulos (Inglês) ***********************

A pasta 'módulos' no WebDAV é uma pasta bem definido pelo WebSphere Portal para fornecer Módulos Simples à estrutura do agregador de recursos. Ele permite definir módulos de forma rápida com um conjunto limitado de recursos. Se você precisa de todos os recursos da estrutura que você precisa para definir seus módulos através de um arquivo plugin.xml ou JSON dentro da pasta WebDAV/contributions.

Cada subdiretório dentro dessa pasta 'módulos' define um módulo.
WebDAV raiz módulos -- módulo A -- módulo B -- ... -- módulo Z

Para obter rapidamente iniciada há uma pré-módulo definido chamado 'getting_started_module' que você pode utilizar para obter seus recursos atendidos até diretamente.
Simplesmente adicione seu Javascript, CSS ou de marcação de arquivo dentro de uma das subpastas (config ou cabeçalho) e seus recursos será apanhado pelo WebSphere Portal. Observe que você precisa invalidar a cache do agregador de recurso para o WebSphere Portal para assimilar as alterações.
Você pode fazer isso indo para Administração-> Theme Analyzer-> Utilitários-> Centro de Controle.
Na página centro de controle, clique no link sob 'Invalidar Cache'.

Depois de começar a criar seu próprio módulo, criando novo diretório no 'módulos' diretório, você precisa garantir que o módulo está selecionado pelo WebSphere Portal. Isso é feito incluindo-a para o perfil que está atualmente configurado na sua página. Geralmente esse será o perfil padrão.
Você pode verificar o perfil para qualquer página especificada utilizando o Theme Analyzer Página do Explorador de função.
O Explorer de Página pode ser localizado indo para Administração-> Theme Analyzer-> Examinar informações do perfil da página.

Para obter instruções adicionais sobre módulos simples ler o arquivo no readme.txt 'getting_started_module' da pasta.


Privire generală module simple (Engleză)
***********************

Folderul 'module' din WebDAV este un folder bine definit de WebSphere Portal pentru a furniza
Module simple la cadrul de lucru agregator de resurse. El permite deinirea modulelor într-un mod rapid
cu un set limitat de caracteristici. Dacă aveţi nevoie de toate caracteristicile ale cadrului de lucru
aveţi nevoie să definiţi modulele dumneavoastră printr-un plugin.xml sau fişier JSON din folderul WebDAV/contribuţii.

Fiecare subdirector din acest folder 'module' defineşte un modul.
Root WebDAV
+ module
+-- modul A
+-- modul B
+-- ...
+-- modul Z

Pentru a porni rapid există un modul predefinit denumit 'getting_started_module'
pe care îl puteţi utiliza pentru a obţine resursele dumneavoastră servite direct.
Adăugaţi pur şi simplu Javascript, CSS
sau fişierul marcaj ale dumneavoastră într-un dintre subfoldere (config sau head) şi resursele dumneavoastră vor fi
alese de WebSphere Portal. Vă rugăm notaţi că trebuie să invalidaţi
cache-ul agregator resursă pentru WebSphere Portal pentru a alege modificările.
Puteţi face aceasta prin deplasarea la Administrare -> Analizor temă -> Utilitare -> Centrul de control.
Pe pagina Centrul de control apăsaţi legătura de sub 'Invalidare cache'.

O dată ce proniţi crearea propriului dumneavoastră modul, prin crearea directorului nou din direcoturl 'module',
trebuie să vă asiguraţi că modulul este ales de WebSphere Portal. Aceasta se face prin adăugarea lui la profilul care este setat curent pe pagina dumneavoastră. De obicei acesta va fi profilul implicit.
Puteţi verifica profilul pentru orice pagină dată prin utilizarea funcţiei Explorer pagină Analizor temă.
Explorer pagină poate fi găsit prin deplasarea la Administrare -> Analizor temă -> Examinare informaţii pagină profil.

Pentru alte instrucţiuni despre modulele simple citiţi fişierul readme.txt din folderul 'getting_started_module'.


Обзор простых модулей
***********************

Папка WebDAV 'modules' предоставляет простые модули для среды
агрегатора ресурсов WebSphere Portal. Она обеспечивает быструю
настройку модулей с ограниченным набором функций. Для
поддержки всех функций среды модули следует настраивать с
помощью файла plugin.xml или JSON в папке WebDAV/contributions. 

Каждый подкаталог в папке 'modules' определяет один модуль.
Корневой каталог WebDAV
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

Для того чтобы быстро приступить к работе, предусмотрен
стандартный модуль 'getting_started_module', обеспечивающий
прямое обслуживание ресурсов. Добавьте файл Javascript, файл
CSS или файл с текстом на языке описания в одну из подпапок (config
или head), чтобы добавить ресурсы в WebSphere Portal. Обратите
внимание, что для применения изменений требуется очистка кэша
агрегатора ресурсов WebSphere Portal. Для этого выберите
Администрирование -> Анализатор темы -> Утилиты -> Центр управления.
На странице Центр управления щелкните на ссылке 'Аннулировать кэш'.

После создания собственного модуля путем создания нового каталога в
каталоге 'modules' необходимо проверить, что модуль добавлен в
WebSphere Portal. Для этого добавьте модуль в текущий профайл
страницы (как правило, это профайл по умолчанию).
Профайл страницы можно проверить на панели Структура
страницы в анализаторе темы. Для того чтобы открыть панель Структура
страниц, выберите Администрирование -> Анализатор темы
-> Проверить информацию о профайле страницы. 

Дополнительные инструкции по работе с простыми модулями
приведены в файле readme.txt, расположенном в папке
'getting_started_module'. 


Prehľad jednoduchých modulov (slovenčina)
***********************

Zložka 'modules' vo WebDAV je dobre definovaná zložka produktom WebSphere Portal na poskytnutie jednoduchých modulov témy pre kostru agregátora prostriedkov. Umožňuje definovať moduly rýchlym spôsobom s obmedzeným počtom funkcií. Ak potrebujete všetky funkcie kostry, musíte definovať svoje moduly cez súbor plugin.xml alebo súbor JSON v zložke WebDAV/contributions.

Každý podadresár v tejto zložke 'modules' definuje jeden modul.
Koreňový adresár WebDAV
+ modules
+-- modul A
+-- modul B
+-- ...
+-- modul Z

Ak chcete rýchlo začať, je k dispozícii jeden vopred definovaný modul s názvom 'getting_started_module', ktorý môžete použiť na okamžité poskytovanie svojich prostriedkov. Stačí pridať vlastný súbor Javascript, CSS alebo súbor značiek do jednej z podzložiek (config alebo head) a produkt WebSphere Portal použije vaše prostriedky. Upozorňujeme, že musíte anulovať pamäť cache agregátora prostriedkov pre WebSphere Portal, aby sa použili zmeny. Spravíte to výberom položky ponuky Administrácia -> Analyzátor tém -> Pomocné programy -> Riadiace centrum.
Na strane Riadiace centrum kliknite na odkaz pod položkou Anulovať pamäť cache.

Keď začnete vytvárať vlastný modul vytvorením nového adresára v adresári 'modules', musíte zaistiť, aby produkt WebSphere Portal použil tento modul. Spravíte to jeho pridaním do profilu, ktorý je aktuálne nastavený na vašej strane. Zvyčajne to bude predvolený profil. Profil pre danú stranu môžete nájsť pomocou funkcie Prieskumník strán v Analyzátore tém. Prieskumník strán spustíte výberom položky ponuky Administrácia -> Analyzátor tém -> Preskúmať informácie o profile strany.

Podrobný návod k jednoduchým modulom nájdete v súbore readme.txt v zložke 'getting_started_module'.


Pregled Preprostih modulov (slovenščina)
***********************

Mapa 'modules' v WebDAV je dobro definirana mapa izdelka WebSphere Portal, ki
ogrodju združevalnika virov zagotovi preproste module. Omogoča hiter način definiranja
modulov z omejenim naborom funkcij. Če potrebujete vse funkcije ogrodja, morate definirati
module s pomočjo datoteke plugin.xml ali datoteke JSON v mapi WebDAV/contributions.

Vsaka podmapa v mapi 'modules' definira en modul.
Korenska mapa WebDAV
+ moduli
+-- modul A
+-- modul B
+-- ...
+-- modul Z

Za hiter začetek je vnaprej definiran modul, poimenovan 'getting_started_module',
ki ga lahko uporabite, če želite, da so vaši viri podani neposredno.
Preprosto dodate svoj JavaScript, CSS ali datoteko označb v eno od podmap (config ali head) in
portal WebSphere Portal bo zaznal vire. Ne pozabite, da morate razveljaviti predpomnilnik združevalnika virov,
da bo portal WebSphere Portal upošteval spremembe.
To lahko storite tako, da se pomaknete do možnosti Skrbništvo -> Analizator tem -> Pripomočki -> Nadzorni center.
Na strani nadzornega centra kliknite povezavo 'Razveljavi predpomnilnik'.

Ko začnete ustvarjati svoj modul, in sicer tako, da ustvarite nov imenik v imeniku 'modules',
morate zagotoviti, da ga bo portal WebSphere Portal zaznal. To naredite tako, da ga dodate
profilu, ki je trenutno nastavljen na vaši strani. Običajno je to privzeti profil.
Profil za katero koli stran lahko preverite s funkcijo Raziskovalec strani programskega portalčka Analizator tem.
Raziskovalec strani najdete tako, da se pomaknete do možnosti Skrbništvo -> Analizator tem -> Razišči informacije o profilu strani.

Več navodil v zvezi s preprostimi moduli je na voljo v datoteki readme.txt v mapi
'getting_started_module'.


Enkla moduler - Översikt (svenska)
***********************

Mappen modules i WebDAV är en WebSphere Portal-definierad mapp för att tillhandahålla enkla moduler
till ramverket för resursaggregering. Den gör det möjligt att snabbt definiera moduler med en begränsad uppsättning funktioner. Om du behöver alla funktioner i ramverket måste du definiera dina moduler via en plugin.xml eller JSON-fil i mappen WebDAV/contributions.

Varje underkatalog i mappen modules definierar en modul.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

För att du snabbt ska komma igång finns det en fördefinierad modul kallad getting_started_module, som du kan använda för att snabbt tillhandahålla dina resurser.
Lägg helt enkelt till din JavaScript-, CSS- eller märkkodsfil i en av undermapparna (config eller head) så plockas dina resurser upp av WebSphere Portal. Observera att du måste ogiltigförklara resursaggregeringscachen så att WebSphere Portal kan plocka upp ändringarna.
Du kan göra detta genom att gå till Administration -> Temaanalys -> Verktyg -> Kontrollcenter.
På sidan Kontrollcenter klickar du på länken under Ogiltigförklara cache.

När du börjat skapa en egen modul genom att skapa en ny katalog i katalogen modules,
måste du se till att modulen plockas upp av WebSphere Portal. Det gör du genom att lägga till profilen som för tillfället är inställd på sidan. Det är oftast standardprofilen.
Du kan kontrollera profilen för en viss sidan genom att använda funktionen Sidutforskare i temaanalysen.
Du hittar Sidutforskaren genom att gå till Administration -> Temaanalys -> Granska sidprofilinformation.

Läs filen readme.txt i mappen getting_started_module om du vill ha ytterligare anvisningar om enkla moduler.


Simple Modules Overview (English)
***********************

The 'modules' folder within WebDAV is a well defined folder by WebSphere Portal to provide
Simple Modules to the resource aggregator framework. It allows to define modules in a quick
fashion with a limited set of features. If you need all features of the framework you need
to define your modules through a plugin.xml or JSON file within the WebDAV/contributions
folder.

Each subdirectory within this 'modules' folder defines one module.
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

In order to get started quickly there is one pre-defined module called 'getting_started_module'
that you can use to get your resources served up directly.
Simply add your Javascript, CSS or markup file inside one of the subfolders (config or head) and
your resources will be picked up by WebSphere Portal. Please note that you need to invalidate
the resource aggregator cache for WebSphere Portal to pick up the changes.
You can do this by going to Administration -> Theme Analyzer -> Utilities -> Control Center.
On the Control Center page click the link under 'Invalidate Cache'.

Once you start to create your own module, by creating new directory in the 'modules' directory,
you need to make sure that the module is picked up by WebSphere Portal. This is done by adding it
to the profile that is currently set on your page. Usually this will be the default profile.
You can verify the profile for any given page by using the Theme Analyzer's Page Explorer function.
The Page Explorer can be found by going to Administration -> Theme Analyzer -> Examine page profile information.

For further instructions on simple modules read the readme.txt file within the
'getting_started_module' folder.


Yalın Modüllere Genel Bakış (Türkçe)
************************************

WebDAV içindeki bu 'modules' klasörü, kaynak toplayıcı çerçevesine yalın modülleri
sağlamak için WebSphere Portal tarafından 'iyi' tanımlanmış bir klasördür. Modüllerin,
sınırlı bir özellik kümesiyle hızlı bir şekilde tanımlanasına olanak verir. Çerçevenin
tüm özelliklerine gerek duyuyorsanız, modüllerinizi WebDAV/contributions klasöründeki
bir plugin.xml ya da JSON dosyası aracılığıyla tanımlamalısınız. 

Bu 'modules' klasöründeki her altdizin tek bir modül tanımlar.
WebDAV Kökü
+ modules
+-- modül A
+-- modül B
+-- ...
+-- modül Z

Hızla başlayabilmeniz için önceden tanımlanmış 'getting_started_module' adlı bir modül
vardır; bu modülü kullanarak kaynaklarınızın doğrudan sunulmasını sağlayabilirsiniz.
Javascript, CSS ya da biçimleme dili dosyanızı alt klasörlerden birine (config ya da head)
eklemeniz yeterlidir; kaynaklarınız WebSphere Portal tarafından alınır. WebSphere Portal'ın
değişiklikleri alması için kaynak toplayıcı önbelleğini geçersiz kılmanız gerektiğini unutmayın.
Bunu yapmak için Denetim -> Tema Analizci -> Yardımcı Programlar -> Denetim Merkezi'ne gidin.
Denetim Merkezi sayfasında 'Önbelleği Geçersiz Kıl' altındaki bağlantıyı tıklatın.

Kendi modülünüzü yaratmaya başladıktan sonra, 'modules' dizininde yeni bir dizin yaratarak,
modülün WebSphere Portal tarafından alınmasını sağlamalısınız. Bunun için, modülü sayfanızda
ayarlanmış olan profile eklemeniz gerekir. Bu profil genellikle varsayılan profildir.
Herhangi bir sayfanın profilini doğrulamak için Tema Analizci'nin Sayfa Gezgini işlevini
kullanabilirsiniz. Sayfa Gezgini'ni bulmak için Denetim -> Tema Analizci -> Sayfa Profili
Bilgilerini İncele kısmına gidin. 

Yalın modüllerle ilgili ek yönergeler için 'getting_started_module' klasöründeki
readme.txt dosyasını okuyun.


Огляд простих модулів (українська)
***********************

Папка modules у WebDAV, чітко визначена у WebSphere Portal, надає прості модулі для середовища агрегатора
ресурсів. Вона дозволяє швидко визначати модулі за допомогою невеликого набору компонентів. Якщо потрібні
всі функції середовища, необхідно визначити модулі через файл plugin.xml або JSON у папці
WebDAV/contributions.

Кожен підкаталог у цій папці modules визначає один модуль.
Кореневий каталог WebDAV
+ модулі
+-- модуль A
+-- модуль B
+-- ...
+-- модуль Z

Для того щоб швидко почати роботу, можна скористатися готовим модулем getting_started_module,
який дозволяє отримати необхідні ресурси одразу.
Просто додайте свій файл Javascript, CSS або файл розмітки в одну з вкладених папок (config або head),
і ваші ресурси буде завантажено у WebSphere Portal. Пам'ятайте: для того щоб зміни набули чинності, необхідно
анулювати кеш агрегатора ресурсів WebSphere Portal.
Для цього виберіть Адміністрування -> Аналізатор тем -> Службові програми -> Центр керування.
На сторінці Центру керування перейдіть за посиланням "Анулювати кеш".

Під час створення модуля шляхом створення нового вкладеного каталогу в каталозі modules,
модуль має бути завантажено у WebSphere Portal. Для цього додайте його у профайл, налаштований
на вашій сторінці. Зазвичай це профайл за замовчуванням.
Перевірити профайл можна для будь-якої сторінки за допомогою функції Структура сторінок портлету Аналізатор тем.
Для роботи з функцією Структура сторінок виберіть Адміністрування -> Аналізатор тем -> Переглянути інформацію
про профайл сторінки.

Додаткові інструкції для роботи з простими модулями наведено у файлі readme.txt, що знаходиться в папці
getting_started_module.


简单模块概述（中文版）
***********************

WebDAV 中的“modules”文件夹是由 WebSphere Portal 明确定义的文件夹，可向资源聚集器框架提供简单模块。能够以快速方式定义功能有限的模块。如果需要框架的所有功能，需要通过 WebDAV/contributions 文件夹中的 plugin.xml 或 JSON 文件来定义模块。

该“modules”文件夹中的每个子目录将定义一个模块。
WebDAV 根目录
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

有一个称为“getting_started_module”的预定义模块可进行快速启动，您可以使用该模块直接提供您的资源。
仅需在某一子文件夹（config 或 head）中添加 Javascript、CSS 或标记文件，WebSphere Portal 就可识别您的资源。请注意，需要将 WebSphere Portal 的资源聚集器高速缓存设定为无效才能使更改生效。
您可以通过转至管理 -> 主题分析器 -> 实用程序 -> 控制中心来执行上述操作。
在“控制中心”页面上单击“将高速缓存设定为无效”下的链接。

如果通过在“modules”目录中新建目录来开始创建您的自己的模块，那么您需要确保 WebSphere Portal 可识别该模块。您可以通过将该模块添加到当前页面所设置的概要文件中来完成此操作。通常，这个是缺省概要文件。
您可以使用主题分析器的“页面资源管理器”功能来验证任何给定页面的概要文件。
通过转至管理 -> 主题分析器 -> 查看页面概要文件信息可找到“页面资源管理器”。

有关简单模块的更多指示信息，请阅读“getting_started_module”文件夹中的 readme.txt 文件。


簡式模組概觀（繁體中文）
***********************

WebDAV 中的此 'modules' 資料夾是 WebSphere Portal 定義良好的資料夾，
用於為資源聚集器架構提供簡式模組。它可讓您使用有限的一組特性快速定義模組。
如果您需要架構的所有特性，則需要透過
WebDAV/contributions 中的 plugin.xml 或 JSON 檔案定義模組。

此 'modules' 資料夾中的每個子目錄定義一個模組。
WebDAV Root
+ modules
+-- module A
+-- module B
+-- ...
+-- module Z

若要快速開始，有一個名為 'getting_started_module'
的預先定義的模組，您可以使用它來直接顯示您的資源。
您只需在其中一個子資料夾（config 或
head）中新增您的 Javascript、CSS 或標記檔案，WebSphere Portal
便會套用您的資源。請注意，您需要使資源聚集器快取失效，
WebSphere Portal 才能套用您的變更。為此，請執行以下動作：
移至「管理」->「佈景主題分析器」->「公用程式」->「控制中心」。
在「控制中心」頁面上，按一下「使快取失效」鏈結。

透過在 'modules' 中建立新目錄開始建立您的專屬模組之後，
您需要確保 WebSphere Portal 套用該模組。為此，請將模組新增至
目前在頁面上設定的設定檔。此設定檔一般是預設設定檔。
您可以使用佈景主題分析器的瀏覽器功能，驗證任何給定頁面的設定檔。
若要存取頁面瀏覽器，請跳至「管理」->「佈景主題分析器」->「檢查頁面設定檔資訊」。

如需簡式模組的進一步指示，請閱讀 'getting_started_module' 資料夾中的 readme.txt 檔案。


