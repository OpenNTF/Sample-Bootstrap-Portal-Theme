Simple Modules - Module Definition - Config Contribution (English)
********************************************************

The 'config' folder contains files that are served up as config contribution through the
resource aggregator framework. This is usually right before the body closing tag.

The following section provides a complete list of supported files within the config section

/config                                  -- Files stored in this directory will be served up in the config section of the resource aggregator. This is usually right before the body closing tag.
  *.js                                   -- Javascript resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.js                                 -- Defines the main compressed javascript content
    *.js.uncompressed.js                 -- Defines the main debug javascript content
    *.rtl.js                             -- Defines the compressed javascript to be used for right-to-left languages
    *.rtl.js.uncompressed.js             -- Defines the debug javascript to be used for right-to-left languages
    *.<locale>.js                        -- Defines the compressed javascript content for a specific language
    *.<locale>.js.uncompressed.js        -- Defines the debug javascript content for a specific language
  The following section defines an alternative. You can use either of those variations, but not in a mixed fashion.
    *.min.js                             -- Defines the main compressed javascript content
    *.js                                 -- Defines the main debug javascript content
    *.rtl.min.js                         -- Defines the compressed javascript to be used for right-to-left languages
    *.rtl.js                             -- Defines the debug javascript to be used for right-to-left languages
    *.<locale>.min.js                    -- Defines the compressed javascript content for a specific language
    *.<locale>.js                        -- Defines the debug javascript content for a specific language

  *.html                                 -- HTML resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.html                               -- Defines the main HTML content
    *.rtl.html                           -- Defines the HTML to be used for right-to-left languages
    *.<locale>.html                      -- Defines the HTML content for a specific language

  /<device-class>                        -- (optional) allows to scope resources by device class (only one individual device class, no equation support)
    Same rule for files apply here as for the parent directory


وحدات البرامج البسيطة - تعريف وحدة برامج - مشاركة التوصيف (العربية)
********************************************************

تحتوي الحافظة 'config' على الملفات التي يتم تقديمها كمشاركة توصيف في اطار عمل أداة تجميع المصادر. يكون ذلك صحيح عادة قبل شارة تعليم اغلاق النص. 

يقدم القسم التالي كشف كامل بالملفات التي يتم دعمها في قسم التوصيف 

/config                                  -- الملفات التي يتم تخزينها في هذا الدليل سيتم تقديمها في قسم التوصيف لأداة تجميع المصادر. يكون ذلك صحيح عادة قبل شارة تعليم اغلاق النص.
  *.js                                   -- يتم تقديم مصادر Javascript بترتيب أبجدي. حيث يتم تجميعهم بواسطة اسم الملف وطالما كان لهم نفس الاسم سينتمون الى نفس المجموعة.
                                            في المجموعة توجد اللاحقات المتعددة التالية:
    *.js                                 -- تعرف محتويات javascript المضغوطة الرئيسية
    *.js.uncompressed.js                 -- تعرف محتويات javascript لتصحيح الأخطاء الرئيسية
    *.rtl.js                             -- تعرف javascript المضغوط الذي سيتم استخدامه للغات من اليمين الى اليسار
    *.rtl.js.uncompressed.js             -- تعرف javascript لتصحيح الأخطاء الذي سيتم استخدامه للغات من اليمين الى اليسار
    *.<locale>.js                        -- تعرف محتويات javascript المضغوطة للغة محددة
    *.<locale>.js.uncompressed.js        -- تعرف محتويات javascript لتصحيح الأخطاء للغة محددة
  يقوم القسم التالي بتعريف بديل. يمكنك استخدام أي من هذه البدائل، لكن ليس في نمط مختلط.
    *.min.js                             -- تعرف محتويات javascript المضغوطة الرئيسية
    *.js                                 -- تعرف محتويات javascript لتصحيح الأخطاء الرئيسية
    *.rtl.min.js                         -- تعرف javascript المضغوط الذي سيتم استخدامه للغات من اليمين الى اليسار
    *.rtl.js                             -- تعرف javascript لتصحيح الأخطاء الذي سيتم استخدامه للغات من اليمين الى اليسار
    *.<locale>.min.js                    -- تعرف محتويات javascript المضغوطة للغة معينة         *.<locale>.js                        -- تعرف محتويات javascript لتصحيح الأخطاء للغة معينة 

  *.html                                 -- يتم تقديم مصادر HTML بترتيب أبجدي. حيث يتم تجميعهم بواسطة اسم الملف وطالما كان لهم نفس الاسم سينتمون الى نفس المجموعة.
                                            في المجموعة توجد اللاحقات المتعددة التالية:
    *.html                               -- تعرف محتويات HTML الرئيسية
    *.rtl.html                           -- تعرف HTML الذي سيتم استخدامه باللغات من اليمين الى اليسار
    *.<locale>.html                      -- تعرف محتويات HTML للغة معينة 

  /<device-class>                        -- (اختياري) يسمح بتحديد نطاق المصادر بواسطة فئة الجهاز(فئة جهاز واحد فقط، بدون دعم المعادلة)
    تطبق هنا نفس القاعدة للملفات بالنسبة للدليل الرئيسي 


Mòduls simples - Definició de mòdul - Contribució de configuració (Anglès)


La carpeta 'config' conté fitxers que serveixen com a contribució de configuració a través de l'estructura d'agregador de recurs.
Normalment això és just abans de l'etiqueta de tancament del cos.

La secció següent proporciona una llista completa de fitxers suportats dins de la secció de configuració

/config                                  -- Els fitxers emmagatzemats a aquest directori serviran a la secció de configuració de l'agregador de recursos. Normalment això és just abans de l'etiqueta de tancament del cos.*.js                                   -- Recursos Javascript servits en ordre alfabètic. S'agrupen per nom de fitxer i quan tenen el mateix nom, pertanyen al mateix grup.
                                            A dins d'un grup existeixen les següents variacions d'extensió:
    *.js                                 -- Defineix el principal contingut javascript comprimit
    *.js.uncompressed.js                 -- Defineix el principal contingut javascript comprimit
    *.rtl.js                             -- Defineix el javascript comprimit que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.rtl.js.uncompressed.js             -- Defineix el javascript de depuració que cal utilitzar per als idiomes que  s'escriuen de dreta a esquerra
    *.<locale>.js                        -- Defineix el contingut de javascript comprimit d'un idioma específic
    *.<locale>.js.uncompressed.js        -- Defineix el contingut de javascript de depuració per a un idioma determinat
  La següent secció defineix una alternativa. Podeu utilitzar qualsevol de les variacions, però no un mètode combinat.
    *.min.js                             -- Defineix el principal contingut de javascript comprimit
    *.js                                 -- Defineix el principal contingut de javascript de depuració
    *.rtl.min.js                         -- Defineix el javascript comprimit que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.rtl.js                             -- Defineix el javascript de depuració que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.<locale>.min.js                    -- Defineix el contingut de javascript comprimit d'un idioma concret
    *.<locale>.js                        -- Defineix el contingut de javascript de depuració d'un idioma específic

  *.html                                 -- Recursos HTML servits el ordre alfabètic. S'agrupen per nom de fitxer i quan tenen el mateix nom, pertanyen al mateix grup.
                                            A dins d'un grup existeixen les següents variacions:
    *.html                               -- Defineix el principal contingut HTML
    *.rtl.html                           -- Defineix l'HTML que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.<locale>.html                      -- Defineix el contingut HTML per a un idioma concret

  /<device-class>                        -- (opcional) permet definit l'àmbit dels recursos per classe de dispositiu (només una classe de dispositiu individual, sense suport d'equació)
    S'aplica la mateixa regla als fitxers que al directori pare


Jednoduché moduly - Definice modulů - Příspěvek konfigurace (anglicky)
********************************************************

Složka 'config' obsahuje soubory, které jsou předkládány jako příspěvky konfigurace prostřednictvím rámce agregátoru prostředků. To většinou platí před koncovou značkou textu.

Následující část zobrazuje úplný seznam podporovaných souborů v části konfigurace

/config                                  -- Soubory uložené v tomto adresáři budou poskytnuty v sekci konfigurace agregátoru prostředků. To většinou platí před koncovou značkou textu.
  *.js                                   -- Prostředky Javascript poskytnuté v abecedním pořadí. Jsou seskupeny dle názvu souboru.
                                            Mají-li stejný název, patří do stejné skupiny.
                                            Ve skupině existují tyto varianty přípon:
    *.js                                 -- Definuje hlavní komprimovaný obsah skriptu javascript
    *.js.uncompressed.js                 -- Definuje hlavní obsah ladění skriptu javascript
    *.rtl.js                             -- Definuje komprimovaný skript javascript použitý pro jazyky zprava doleva
    *.rtl.js.uncompressed.js             -- Definuje ladění skriptu javascript použité pro jazyky zprava doleva
    *.<locale>.js                        -- Definuje komprimovaný obsah skriptu javascript pro specifický jazyk
    *.<locale>.js.uncompressed.js        -- Definuje obsah ladění skriptu javascript pro specifický jazyk
  V této části je definována alternativa. Můžete použít jednu z těchto variant, nelze je však kombinovat.
    *.min.js                             -- Definuje hlavní komprimovaný obsah Javascript
    *.js                                 -- Definuje hlavní obsah Javascript ladění
    *.rtl.min.js                         -- Definuje komprimovaný obsah Javascript, který se má použít pro jazyky psané zprava doleva
    *.rtl.js                             -- Definuje obsah Javascript ladění, který se má použít pro jazyky psané zprava doleva
    *.<národní_prostředí>.min.js         -- Definuje komprimovaný obsah Javascript pro specifický jazyk
    *.<národní_prostředí>.js             -- Definuje obsah Javascript ladění pro specifický jazyk

  *.html                                 -- Prostředky HTML poskytnuté v abecedním pořadí. Jsou seskupeny dle názvu souboru.
                                            Mají-li stejný název, patří do stejné skupiny.
                                            Ve skupině existují tyto varianty přípon:
    *.html                               -- Definuje hlavní obsah HTML
    *.rtl.html                           -- Definuje HTML použité pro jazyky zprava doleva
    *.<národní_prostředí>.html                      -- Definuje obsah HTML pro specifický jazyk

  /<třída_zařízení>                      -- (Volitelné) Umožňuje vymezit rozsah prostředků podle třídy zařízení (pouze jedna samostatná třída zařízení, bez podpory rovnic)
          Platí zde stejná pravidla pro soubory jako pro nadřízený adresář


Enkle moduler - moduldefinition - config-bidrag
***********************************************

Folderen 'config' indeholder filer, der leveres som konfigurationsbidrag via strukturen i
ressourceaggregatoren. Det indsættes normalt lige før body-slutkoden.

I følgende afsnit vises en komplet liste over understøttede filer i config-afsnittet.

/config                                    -- Filer, der er lagret i dette bibliotek, bliver leveret i config-afsnittet af ressourcenaggregatoren. Det indsættes normalt lige før body-slutkoden.
  *.js                                    -- Javascript-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                              filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                              I en gruppe findes der følgende filtypevariationer:
    *.js                                   -- Definerer det primære komprimerede JavaScript-indhold
    *.js.uncompressed.js                   -- Definerer det primære JavaScript-fejlfindingsindhold
    *.rtl.js                               -- Definerer det komprimerede JavaScript, der skal bruges til højre mod venstre-sprog
    *.rtl.js.uncompressed.js               -- Definerer det JavaScript-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.js                 -- Definerer det komprimerede JavaScript-indhold for et bestemt sprog
    *.<sprogkonvention>.js.uncompressed.js -- Definerer JavaScript-fejlfindingsindholdet for et bestemt sprog
  Følgende afsnit definerer et alternativ. Du kan bruge en af disse variationer, men ikke blandet.
    *.min.js                               -- Definerer det primære komprimerede JavaScript-indhold
    *.js                                   -- Definerer det primære JavaScript-fejlfindingsindhold
    *.rtl.min.js                           -- Definerer det komprimerede JavaScript, der skal bruges til højre mod venstre-sprog
    *.rtl.js                               -- Definerer det JavaScript-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.min.js             -- Definerer det komprimerede JavaScript-indhold for et bestemt sprog
    *.<sprogkonvention>.js                 -- Definerer JavaScript-fejlfindingsindholdet for et bestemt sprog

   *.html                                 -- HTML-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                              filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                              I en gruppe findes der følgende filtypevariationer:
    *.html                                 -- Definerer det primære HTML-indhold
    *.rtl.html                             -- Definerer den HTML, der skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.html               -- Definerer HTML-indholdet for et bestemt sprog

  /<enhedsklasse>                       -- (Valgfrit) Gør det muligt at angive omfang af ressourcer efter enhedskasse (kun individuel enhedsklasse, ligninger understøttes ikke)
    Der gælder samme regel for filer her som for det overordnede bibliotek


Einfache Module - Moduldefinition - Konfigurationsbeitrag (Deutsch)
********************************************************

Der Ordner "config" enthält Dateien, die als Konfigurationsbeitrag über das Ressourcenaggregatorframework bereitgestellt werden. Normalerweise steht dieser Eintrag direkt vor dem Endtag für den Hauptteil.

Der folgende Abschnitt enthält eine vollständige Liste unterstützter Dateien im Abschnitt "config".

/config                                  -- Dateien, die in diesem Verzeichnis gespeichert sind, werden im Abschnitt "config" des Ressourcenaggregators bereitgestellt. Normalerweise steht dieser Eintrag direkt vor dem Endtag für den Hauptteil. *.js                                   -- Javascript-Ressourcen, die in alphabetischer Reihenfolge bereitgestellt werden. Diese sind nach Dateinamen gruppiert und solange sie denselben Namen aufweisen, gehören sie zur gleichen Gruppe.
                                            Innerhalb einer Gruppe gibt es die folgenden Erweiterungsvarianten:
    *.js                                 -- Definiert den komprimierten JavaScript-Hauptinhalt
    *.js.uncompressed.js                 -- Definiert den JavaScript-Hauptinhalt für die Fehlerbehebung
    *.rtl.js                             -- Definiert das komprimierte JavaScript, das für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.rtl.js.uncompressed.js             -- Definiert das JavaScript für die Fehlerbehebung, das für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.<Ländereinstellung>.js                        -- Definiert den komprimierten JavaScript-Inhalt für eine bestimmte Sprache
    *.<Ländereinstellung>.js.uncompressed.js        -- Definiert den JavaScript-Fehlerbehebungsinhalt für eine bestimmte Sprache
  Im folgenden Abschnitt ist eine Alternative definiert. Sie können immer nur eine dieser Varianten verwenden.
    *.min.js                             -- Definiert den komprimierten JavaScript-Inhalt
    *.js                                 -- Definiert den JavaScript-Hauptinhalt für die Fehlerbehebung
    *.rtl.min.js                         -- Definiert das komprimierte JavaScript, das für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.rtl.js                             -- Definiert das JavaScript für die Fehlerbehebung, das für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.<Ländereinstellung>.min.js                    -- Definiert den komprimierten JavaScript-Inhalt für eine bestimmte Sprache
    *.<Ländereinstellung>.js                        -- Definiert den JavaScript-Fehlerbehebungsinhalt für eine bestimmte Sprache

  *.html                                 -- HTML-Ressourcen, die in alphabetischer Reihenfolge bereitgestellt werden. Diese sind nach Dateinamen gruppiert und solange sie denselben Namen aufweisen, gehören sie zur gleichen Gruppe.
                                            Innerhalb einer Gruppe gibt es die folgenden Erweiterungsvarianten:
    *.html                               -- Definiert den HTML-Hauptinhalt
    *.rtl.html                           -- Definiert den HTML-Code, der für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.<Ländereinstellung>.html                      -- Definiert den HTML-Inhalt für eine bestimmte Sprache

  /<device-class>                        -- (optional) Ermöglicht die Definition eines Bereichs für Ressourcen nach Einheitenklasse (nur eine einzelne Einheitenklasse, ohne Unterstützung von Gleichungen)
    Für die Dateien hier gilt dieselbe Regel wie für Dateien im übergeordneten Verzeichnis


Απλές λειτουργικές μονάδες - Ορισμός λειτουργικής μονάδας - Συνεισφορά Config (Ελληνικά)
*****************************************************************************

Ο φάκελος 'config' περιέχει αρχεία που παρέχονται ως συνεισφορά config μέσω του πλαισίου συγκρότησης
πόρων (resource aggregator framework). Συνήθως βρίσκεται ακριβώς πριν από το τελικό προσδιοριστικό body.

Η ακόλουθη ενότητα περιέχει μια πλήρη λίστα των υποστηριζόμενων αρχείων στην ενότητα config.

/config                                  -- Τα αρχεία σε αυτό τον κατάλογο παρέχονται στην ενότητα config της λειτουργίας συγκρότησης πόρων. Συνήθως βρίσκεται ακριβώς πριν από το τελικό προσδιοριστικό body.
  *.js                                   -- Πόροι Javascript που παρέχονται σε αλφαβητική σειρά. Ομαδοποιούνται κατά
                                            όνομα αρχείου και, αν έχουν το ίδιο όνομα αρχείου, ανήκουν στην ίδια ομάδα.
                                            Σε μια ομάδα υπάρχουν οι ακόλουθες παραλλαγές προεκτάσεων:
    *.js                                 -- Ορίζει το κύριο συμπιεσμένο περιεχόμενο javascript
    *.js.uncompressed.js                 -- Ορίζει το κύριο περιεχόμενο εντοπισμού σφαλμάτων javascript
    *.rtl.js                             -- Ορίζει τη συμπιεσμένη javascript που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.rtl.js.uncompressed.js             -- Ορίζει τη javascript εντοπισμού σφαλμάτων που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.js                        -- Ορίζει το συμπιεσμένο περιεχόμενο javascript για μια συγκεκριμένη γλώσσα
    *.<locale>.js.uncompressed.js        -- Ορίζει το περιεχόμενο javascript εντοπισμού σφαλμάτων για μια συγκεκριμένη γλώσσα
  Η ακόλουθη ενότητα ορίζει μια εναλλακτική παραλλαγή. Μπορείτε να χρησιμοποιήσετε οποιαδήποτε από τις δύο παραλλαγές, αλλά όχι ένα συνδυασμό τους.
    *.min.js                             -- Ορίζει το κύριο συμπιεσμένο περιεχόμενο javascript
    *.js                                 -- Ορίζει το κύριο περιεχόμενο εντοπισμού σφαλμάτων javascript
    *.rtl.min.js                         -- Ορίζει τη συμπιεσμένη javascript που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.rtl.js                             -- Ορίζει τη javascript εντοπισμού σφαλμάτων που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.min.js                    -- Ορίζει το συμπιεσμένο περιεχόμενο javascript για μια συγκεκριμένη γλώσσα
    *.<locale>.js                        -- Ορίζει το περιεχόμενο javascript εντοπισμού σφαλμάτων για μια συγκεκριμένη γλώσσα

  *.html                                 -- Πόροι HTML που παρέχονται σε αλφαβητική σειρά. Ομαδοποιούνται κατά
                                            όνομα αρχείου και, αν έχουν το ίδιο όνομα αρχείου, ανήκουν στην ίδια ομάδα.
                                            Σε μια ομάδα υπάρχουν οι ακόλουθες παραλλαγές προεκτάσεων:
    *.html                               -- Ορίζει το κύριο περιεχόμενο HTML
    *.rtl.html                           -- Ορίζει το περιεχόμενο HTML που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.html                      -- Ορίζει το περιεχόμενο HTML για μια συγκεκριμένη γλώσσα

  /<device-class>                        -- (προαιρετικά) επιτρέπει τον ορισμό εμβελειών πόρων με βάση την κλάση συσκευών (μόνο μεμονωμένες κλάσεις συσκευών, δεν υποστηρίζονται συνδυασμοί)
    Ισχύουν οι ίδιοι κανόνες σχετικά με τα αρχεία που ισχύουν και για το γονικό κατάλογο.


Módulos simples - Definición de módulo - Contribución Configuración
*******************************************************************

La carpeta 'config' contiene archivos que se ofrecen como contribución de configuración en la infraestructura del agregador de recursos. Normalmente está justo antes del código de cierre del cuerpo del texto. 

La siguiente sección proporciona una lista completa de los archivos soportados dentro de la sección de configuración

/config                                  -- Los archivos guardados en este directorio se ofrecen en la sección de configuración del agregador de recursos. Normalmente está justo antes del código de cierre del cuerpo del texto. 
    *.js                                 -- Recursos Javascript proporcionados en orden alfabético. Están agrupados por
                                            nombre de archivos y, si tienen el mismo nombre, pertenecen al mismo grupo.
                                            Dentro de un grupo existen las siguiente variaciones de extensión:
    *.js                                 -- Define el contenido principal comprimido de javascript
    *.js.uncompressed.js                 -- Define el contenido principal de javascript de depuración
    *.rtl.js                             -- Define el javascript comprimido que se utilizará para idiomas que se leen de derecha a izquierda
    *.rtl.js.uncompressed.js             -- Define el javascript de depuración que se utilizará para idiomas que se leen de derecha a izquierda
    *.<locale>.js                        -- Define el contenido javascript comprimido correspondiente a un determinado idioma
    *.<locale>.js.uncompressed.js        -- Define el contenido javascript de depuración correspondiente a un determinado idioma
  En la sección siguiente se define una alternativa. Puede utilizar cualquiera de estas variaciones, pero no puede combinarlas.
    *.min.js                             -- Define el contenido principal comprimido de javascript
    *.js                                 -- Define el contenido principal de javascript de depuración
    *.rtl.min.js                         -- Define el javascript comprimido que se utilizará para idiomas que se leen de derecha a izquierda
    *.rtl.js                             -- Define el javascript de depuración que se utilizará para idiomas que se leen de derecha a izquierda
    *.<locale>.min.js                    -- Define el contenido javascript comprimido correspondiente a un determinado idioma
    *.<locale>.js                        -- Define el contenido javascript de depuración correspondiente a un determinado idioma

  *.html                                 -- Recursos HTML que se proporcionan en orden alfabético. Están agrupados por
                                            nombre de archivos y, si tienen el mismo nombre, pertenecen al mismo grupo.
                                            Dentro de un grupo existen las siguiente variaciones de extensión:
    *.html                               -- Define el contenido principal de HTML
    *.rtl.html                           -- Define el HTML que se utilizará para idiomas que se leen de derecha a izquierda
    *.<locale>.html                      -- Define el contenido HTML correspondiente a un determinado idioma

  /<device-class>                        -- (opcional) le permite agrupar recursos por clase de dispositivo (solo una clase de dispositivo, sin soporte para ecuaciones)
    La misma regla de archivos se aplica al directorio padre


Yksinkertaiset moduulit - Moduulin määritys - Lisäyksen määritys
********************************************************

Kokoonpanokansio sisältää tiedostot, jotka tulevat resurssikoostimesta ja
jotka sisältävät lisäyksien määritykset. Tämä tieto sijaitsee yleensä juuri ennen tekstiosan päättävää tunnistetta.

Alla on luettelo kokoonpano-osassa tuetuista tiedostoista

/config                                  -- tähän hakemistoon tallennetut tiedostot tulevat resurssikoostimen kokoonpano-osasta. Tämä tieto sijaitsee yleensä juuri ennen tekstiosan päättävää tunnistetta.
*.js                                   -- Javascript-resurssit aakkosjärjestyksessä. Ne on ryhmitelty
                                            tiedostonimen mukaan. Samannimiset tiedostot kuuluvat samaan ryhmään.
                                            Ryhmän sisällä käytetään seuraavia muunnelmia:
    *.js                                 -- määrittää tiivistetyn javascript-pääsisällön
    *.js.uncompressed.js                 -- määrittää vianmäärityksen javascript-pääsisällön
    *.rtl.js                             -- määrittää tiivistetyn javascript-sisällön oikealta vasemmalle eteneville kielille
    *.rtl.js.uncompressed.js             -- määrittää vianmäärityksen javascript-sisällön oikealta vasemmalle eteneville kielille
    *.<locale>.js                        -- määrittää tiivistetyn javascript-sisällön tietylle kielelle
    *.<locale>.js.uncompressed.js        -- määrittää vianmäärityksen javascript-sisällön tietylle kielelle
  Seuraava osa määrittää vaihtoehdon. Voit käyttää näitä muunnelmia, mutta et yhdistää niitä.
    *.min.js                             -- määrittää tiivistetyn javascript-pääsisällön
    *.js                                 -- määrittää vianmäärityksen javascript-pääsisällön
    *.rtl.min.js                         -- määrittää tiivistetyn javascript-sisällön oikealta vasemmalle eteneville kielille
    *.rtl.js                             -- määrittää vianmäärityksen javascript-sisällön oikealta vasemmalle eteneville kielille
    *.<locale>.min.js                    -- määrittää tiivistetyn javascript-sisällön tietylle kielelle
    *.<locale>.js                        -- määrittää vianmäärityksen javascript-sisällön tietylle kielelle

  *.html                                 -- HTML-resurssit aakkosjärjestyksessä. Ne on ryhmitelty
                                            tiedostonimen mukaan. Samannimiset tiedostot kuuluvat samaan ryhmään.
                                            Ryhmän sisällä käytetään seuraavia muunnelmia:
    *.html                               -- määrittää HTML-pääsisällön
    *.rtl.html                           -- määrittää HTML-sisällön oikealta vasemmalle eteneville kielille
    *.<locale>.html                      -- määrittää HTML-sisällön tietylle kielelle

  /<device-class>                        -- (valinnainen) sallii resurssien rajaamisen laiteluokan mukaan (vain yksi laiteluokka, ei tue
kaavoja)
    Tiedostoja koskee tässä sama sääntö kuin päähakemiston tiedostoja


Modules simples - Définition de module - Contribution config
********************************************************

Le dossier 'config' contient les fichiers qui sont traités en tant que contribution config via le framework du regroupeur de ressources. Cette section se trouve généralement immédiatement avant la balise de fermeture du corps.

La section suivante fournit une liste exhaustive de fichiers pris en charge dans la section config

/ config                              - - Les fichiers stockés dans ce répertoire sont traités dans la section config de l'agrégateur de ressources. Cette section se trouve généralement immédiatement avant la balise de fermeture du corps.
  *.js                                -- Ressources Javascript traitées dans l'ordre alphabétique. Elles sont regroupées
                                                  par nom de fichier et si elles ont le même nom, elles appartiennent au même groupe.
                                            Dans un groupe, les variations d'extension suivantes existent :
          *.js                                 -- Définit le contenu JavaScript compressé principal
          *.js.uncompressed.js                 -- Définit le contenu JavaScript de débogage principal
          *.rtl.js                             -- Définit le contenu JavaScript compressé à utiliser pour les langues de droite à gauche
          *.rtl.js.uncompressed.js             -- Définit le contenu JavaScript de débogage à utiliser pour les langues de droite à gauche
          *.<code_langue>.js                   -- Définit le contenu JavaScript compressé pour une langue spécifique
          *.<code_langue>.js.uncompressed.js   -- Définit le contenu JavaScript de débogage pour une langue spécifique
        La section suivante définit une alternative. Vous pouvez utiliser l'une ou l'autre de ces variations, mais vous ne pouvez pas les utiliser ensemble.
    *.min.js                             -- Définit le contenu JavaScript compressé principal
          *.js                                 -- Définit le contenu JavaScript de débogage principal
          *.rtl.min.js                         -- Définit le contenu JavaScript compressé à utiliser pour les langues de droite à gauche
          *.rtl.js                             -- Définit le contenu JavaScript de débogage à utiliser pour les langues de droite à gauche
          *.<code_langue>.min.js               -- Définit le contenu JavaScript compressé pour une langue spécifique
          *.<code_langue>.js                   -- Définit le contenu JavaScript de débogage pour une langue spécifique

  *.html                              -- Ressources HTML traitées dans l'ordre alphabétique. Elles sont regroupées
                                                  par nom de fichier et si elles ont le même nom, elles appartiennent au même groupe.
                                            Dans un groupe, les variations d'extension suivantes existent :
          *.html                               -- Définit le contenu HTML principal
          *.rtl.html                           -- Définit le contenu HTML à utiliser pour les langues de droite à gauche
          *.<code_langue>.html                 -- Définit le contenu HTML pour une langue spécifique

  /<classe-appareil>                     -- (facultatif) permet de regrouper des ressources par classe d'appareil (une seule classe d'appareil, pas de support d'équation)
           La règle des fichiers s'applique ici pour le répertoire parent


Jednostavni moduli - definicija modula - konfiguracijski doprinos (hrvatski)
********************************************************

Folder 'config' sadrži datoteke koje se dostavljaju kao konfiguracijski doprinos kroz
framework skupljača resursa. To se obično događa točno prije oznake za zatvaranje tijela. 

Sljedeći odjeljak sadrži cjelovitu listu podržanih datoteka unutar odjeljka config 

/config                                  -- Datoteke pohranjene u ovom direktoriju bit će navedene u odjeljku konfiguracije skupljača resursa. To se obično događa točno prije oznake za zatvaranje tijela.
  *.js                                   -- Javascript resursi navedeni u abecednom redoslijedu. Grupirani su po nazivu
                                            datoteke i ako imaju isti naziv, pripadaju istoj grupi.
                                            Unutar grupe postoje sljedeće varijante ekstenzija:
    *.js                                 -- Definira glavni komprimirani javascript sadržaj
    *.js.uncompressed.js                 -- Definira glavni debug javascript sadržaj
    *.rtl.js                             -- Definira komprimirani javascript koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.rtl.js.uncompressed.js             -- Definira debug javascript koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.<locale>.js                        -- Definira komprimirani javascript sadržaj za određeni jezik
    *.<locale>.js.uncompressed.js        -- Definira debug javascript sadržaj za određeni jezik
  Sljedeći odjeljak definira alternativu. Možete koristiti bilo koju od tih varijanti, ali ne u kombinaciji.
    *.min.js                             -- Definira glavni komprimirani javascript sadržaj
    *.js                                 -- Definira glavni debug javascript sadržaj
    *.rtl.min.js                         -- Definira komprimirani javascript koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.rtl.js                             -- Definira debug javascript koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.<locale>.min.js                    -- Definira komprimirani javascript sadržaj za određeni jezik
    *.<locale>.js                        -- Definira debug javascript sadržaj za određeni jezik

  *.html                                 -- HTML resursi navedeni u abecednom redoslijedu. Grupirani su po nazivu
                                            datoteke i ako imaju isti naziv, pripadaju istoj grupi.
                                            Unutar grupe postoje sljedeće varijante ekstenzija:
    *.html                               -- Definira glavni HTML sadržaj
    *.rtl.html                           -- Definira HTML koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.<locale>.html                      -- Definira HTML sadržaj za određeni jezik

  /<device-class>                        -- (opcijski) omogućuje postavljanje opsega resursa po klasi uređaja (samo pojedinačne klase uređaja, nema podrške za jednadžbe)
    Ovdje se primjenjuju ista pravila kao i za nadređeni direktorij.


Egyszerű modulok - Modulmeghatározás - Config hozzájárulás (magyar)
********************************************************

A 'config' mappa tartalmazza azokat a fájlokat, amelyek config
hozzájárulásként szolgálnak az erőforrásösszesítő keretrendszerben. Ez
általában a body lezáró címkéje előtt helyes. 

Az alábbi szakasz felsorolja, hogy milyen fájlok támogatottak a config
szakaszban. 

/config                                  -- Az ebben a könyvtárban tárolt fájlok fognak szerepelni az erőforrásösszesítő config szakaszában. Ez általában a body lezáró címkéje előtt helyes.
  *.js                                   -- A szolgáltatott JavaScript erőforrások ábécérendben. Fájlnév alapján vannak csoportosítva, és az azonos nevűek tartoznak egy-egy csoportba.
                                            A csoporton belül az alábbi kiterjesztésváltozatok léteznek:
    *.js                                 -- A fő, tömörített javascript tartalmat határozza meg
    *.js.uncompressed.js                 -- A fő, hibakeresési javascript tartalmat határozza meg
    *.rtl.js                             -- A jobbról balra írt nyelvekhez használni kívánt tömörített javascript tartalmat határozza meg
    *.rtl.js.uncompressed.js             -- A jobbról balra írt nyelvekhez használni kívánt hibakeresési javascript tartalmat határozza meg
    *.<területi beállítás>.js            -- Az adott nyelvhez használni kívánt tömörített javascript tartalmat határozza meg
    *.<területi beállítás>.js.uncompressed.js  -- Az adott nyelvhez használni kívánt hibakeresési javascript tartalmat határozza meg
  Az alábbi szakasz alternatívát határoz meg. Bármelyik variációt használhatja, de vegyesen nem.
    *.min.js                             -- A fő, tömörített javascript tartalmat határozza meg
    *.js                                 -- A fő, hibakeresési javascript tartalmat határozza meg
    *.rtl.min.js                         -- A jobbról balra írt nyelvekhez használni kívánt tömörített javascript tartalmat határozza meg
    *.rtl.js                             -- A jobbról balra írt nyelvekhez használni kívánt hibakeresési javascript tartalmat határozza meg
    *.<területi beállítás>.min.js        -- Az adott nyelvhez használni kívánt tömörített javascript tartalmat határozza meg
    *.<területi beállítás>.js            -- Az adott nyelvhez használni kívánt hibakeresési javascript tartalmat határozza meg

    *.html                                -- A szolgáltatott HTML erőforrások ábécérendben. Fájlnév alapján vannak csoportosítva, és az azonos nevűek tartoznak egy-egy csoportba.
                                             A csoporton belül az alábbi kiterjesztésváltozatok léteznek:
    *.html                                -- A fő HTML tartalmat határozza meg
    *.rtl.html                            -- A jobbról balra írt nyelvekhez használni kívánt HTML tartalmat határozza meg
    *.<területi beállítás>.html           -- Az adott nyelvhez használni kívánt tömörített CSS tartalmat határozza meg


  /<eszközosztály>                        -- (nem kötelező) lehetővé teszi az erőforrások hatókörének megadását eszközosztály alapján (csak egy eszközosztály adható meg, a kifejezések nem támogatottak)
    Itt ugyanazok a szabályok vonatkoznak a fájlokra, mit a szülő könyvtár esetében.


Moduli semplici - Definizione modulo - Contributo di config
********************************************************

La cartella 'config' contiene i file forniti come contributo di config attraverso il
framework aggregatore di risorse. Generalmente è appena prima della tag di chiusura del corpo. 

La sezione seguente fornisce un elenco completo di file supportati nella sezione config

/config                                  -- I file archiviati in questa directory saranno forniti nella sezione config dell'aggregatore di risorse. Generalmente è appena prima della tag di chiusura del corpo.
*.js                                   -- Risorse Javascript fornite in ordine alfabetico. Sono raggruppate
                                            per nome file e fino a quando hanno lo stesso nome appartengono allo stesso gruppo.
                                            In un gruppo esistono le seguenti variazioni di estensione:
    *.js                                 -- Definisce il contenuto javascript principale compresso
    *.js.uncompressed.js                 -- Definisce il contenuto javascript di debug principale
    *.rtl.js                             -- Definisce lo javascript compresso da utilizzare per le lingue da destra a sinistra
    *.rtl.js.uncompressed.js             -- Definisce lo javascript di debug da utilizzare per le lingue da destra a sinistra
    *.<locale>.js                        -- Definisce il contenuto javascript compresso per una lingua specifica
    *.<locale>.js.uncompressed.js        -- Definisce il contenuto javascript di debug per una lingua specifica
  La sezione seguente definisce un'alternativa. È possibile utilizzare una di quelle variazioni, ma non in modo misto.
    *.min.js                             -- Definisce il contenuto javascript principale compresso
    *.js                                 -- Definisce il contenuto javascript di debug principale
    *.rtl.min.js                         -- Definisce lo javascript compresso da utilizzare per le lingue da destra a sinistra
    *.rtl.js                             -- Definisce lo javascript di debug da utilizzare per le lingue da destra a sinistra
    *.<locale>.min.js                    -- Definisce il contenuto javascript compresso per una lingua specifica
    *.<locale>.js                        -- Definisce il contenuto javascript di debug per una lingua specifica

  *.html                                 -- Risorse HTML fornite in ordine alfabetico. Sono raggruppate
                                            per nome file e fino a quando hanno lo stesso nome appartengono allo stesso gruppo.
                                            In un gruppo esistono le seguenti variazioni di estensione:
    *.html                               -- Definisce il contenuto HTML principale
    *.rtl.html                           -- Definisce l'HTML da utilizzare per le lingue da destra a sinistra
    *.<locale>.html                      -- Definisce il contenuto HTML per una lingua specifica

  /<device-class>                        -- (facoltativo) consente di eliminare le risorse per classe di dispositivo (solo una classe dispositivo singola, nessun supporto di equazione)
    Stessa regola per i file si applica qui come per la directory parent


Simple Modules - Module Definition - Config Contribution (English)
********************************************************

The 'config' folder contains files that are served up as config contribution through the
resource aggregator framework. This is usually right before the body closing tag.

The following section provides a complete list of supported files within the config section

/config                                  -- Files stored in this directory will be served up in the config section of the resource aggregator. This is usually right before the body closing tag.
  *.js                                   -- Javascript resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.js                                 -- Defines the main compressed javascript content
    *.js.uncompressed.js                 -- Defines the main debug javascript content
    *.rtl.js                             -- Defines the compressed javascript to be used for right-to-left languages
    *.rtl.js.uncompressed.js             -- Defines the debug javascript to be used for right-to-left languages
    *.<locale>.js                        -- Defines the compressed javascript content for a specific language
    *.<locale>.js.uncompressed.js        -- Defines the debug javascript content for a specific language
  The following section defines an alternative. You can use either of those variations, but not in a mixed fashion.
    *.min.js                             -- Defines the main compressed javascript content
    *.js                                 -- Defines the main debug javascript content
    *.rtl.min.js                         -- Defines the compressed javascript to be used for right-to-left languages
    *.rtl.js                             -- Defines the debug javascript to be used for right-to-left languages
    *.<locale>.min.js                    -- Defines the compressed javascript content for a specific language
    *.<locale>.js                        -- Defines the debug javascript content for a specific language

  *.html                                 -- HTML resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.html                               -- Defines the main HTML content
    *.rtl.html                           -- Defines the HTML to be used for right-to-left languages
    *.<locale>.html                      -- Defines the HTML content for a specific language

  /<device-class>                        -- (optional) allows to scope resources by device class (only one individual device class, no equation support)
    Same rule for files apply here as for the parent directory


単純モジュール - モジュール定義 - Config コントリビューション (日本語)
********************************************************

「config」フォルダーには、リソース統合機能フレームワークを通じて config コントリビューションとして使用されるファイルが
含まれています。これは通常、本文の閉じタグの直前にあります。

次のセクションでは、config セクション内でサポートされるファイルの完全なリストを示します

/config                                  -- このディレクトリーに保管されているファイルは、リソース統合機能の config セクションに使用されます。これは通常、本文の閉じタグの直前にあります。
  *.js                                   -- アルファベット順で使用される Javascript リソース。それらは、ファイル名別に
                                            グループ化されており、ファイル名が同じであれば同じグループに属します。
                                            各グループ内には、次の拡張子の種類が存在します。
    *.js                                 -- メインの圧縮 JavaScript コンテンツを定義します
    *.js.uncompressed.js                 -- メインのデバッグ JavaScript コンテンツを定義します
    *.rtl.js                             -- 右から左に記述する言語に使用される圧縮 JavaScript を定義します
    *.rtl.js.uncompressed.js             -- 右から左に記述する言語に使用されるデバッグ JavaScript を定義します
    *.<locale>.js                        -- 特定の言語の圧縮 JavaScript コンテンツを定義します
    *.<locale>.js.uncompressed.js        -- 特定の言語のデバッグ JavaScript コンテンツを定義します。
  次のセクションでは、代替の拡張子の種類を定義します。これらのいずれかの種類を使用することができますが、これらを混用することはできません。
    *.min.js                             -- メインの圧縮 JavaScript コンテンツを定義します
    *.js                                 -- メインのデバッグ JavaScript コンテンツを定義します
    *.rtl.min.js                         -- 右から左に記述する言語に使用される圧縮 JavaScript を定義します
    *.rtl.js                             -- 右から左に記述する言語に使用されるデバッグ JavaScript を定義します
    *.<locale>.min.js                    -- 特定の言語の圧縮 JavaScript コンテンツを定義します
    *.<locale>.js                        -- 特定の言語のデバッグ JavaScript コンテンツを定義します

  *.html                                 -- アルファベット順に使用される HTML リソース。それらは、ファイル名別に
                                            グループ化されており、ファイル名が同じであれば同じグループに属します。
                                            各グループ内には、次の拡張子の種類が存在します。
    *.html                               -- メインの HTML コンテンツを定義します
    *.rtl.html                           -- 右から左に記述する言語に使用される HTML を定義します
    *.<locale>.html                      -- 特定の言語の HTML コンテンツを定義します

  /<device-class>                        -- (オプション) デバイス・クラスによるリソースのスコープ設定が可能です (1 つの個別デバイス・クラスのみ。式をサポートしない)
    ここでは、親ディレクトリーの場合と同じファイルに対するルールが適用されます


Қарапайым модульдер - Модуль анықтамасы - Теңшеу үлесі (Ағылшын)
********************************************************

'конфиг' қалтасы ресурсты біріктіруші құрылымы арқылы конфигурация үлесі ретінде қызмет еткен файлдарды қамтиды. Бұл әдетте құжат тегті жабар алдында дұрыс болады.

Келесі бөлім көнфигурация бөлімі ішінде қолдауға ие болған файлдардың толық тізімін қамтамасыз етеді

/config                                  -- Осы каталогта сақталған файлдар ресурс біріктірушісінің конфигурация бөлімінде қызмет етеді. Бұл әдетте құжат тегті жабар алдында дұрыс болады.*.js                                   -- Javascript ресурстары әліпбилік ретте қызмет етеді. Олар файл атауы бойынша топтасып және бірдей атты иеленгендіктен бір топқа жатады.
                                            Топ ішінде келесі кеңейтім түрлері бар:
    *.js                                 -- Негізгі қысылған javascript мазмұнын анықтайды
    *.js.uncompressed.js                 -- Негізгі жөндеу javascript мазмұнын анықтайды
    *.rtl.js                             -- Қысылған javascript файлын оңнан солға жазылатын тілдер үшін қолданылуы үшін анықтайды
    *.rtl.js.uncompressed.js             -- Жөндеу javascript файлын оңнан солға жазылатын тілдер үшін қолданылуы үшін анықтайды
    *.<locale>.js                        -- Қысылған javascript мазмұнын арнайы тіл үшін анықтайды
    *.<locale>.js.uncompressed.js        -- Жөндеу javascript мазмұнын арнайы тіл үшін анықтайды
  Келесі бөлім баламаны анықтайды. Сол нұсқаларды қолдана аласыз, бірақ араластырып қолдануға болмайды.
    *.min.js                             -- Негізгі қысылған javascript мазмұнын анықтайды
    *.js                                 -- Негізгі жөндеу javascript мазмұнын анықтайды
    *.rtl.min.js                         -- Қысылған javascript файлын оңнан солға жазылатын тілдер үшін қолданылуы үшін анықтайды
    *.rtl.js                             -- Жөндеу javascript файлын оңнан солға жазылатын тілдер үшін қолданылуы үшін анықтайды
    *.<locale>.min.js                    -- Қысылған javascript мазмұнын арнайы тіл үшін анықтайды
    *.<locale>.js                        -- Жөндеу javascript мазмұнын арнайы тіл үшін анықтайды

  *.html                                 -- HTML ресурстары әліпбилік ретте қызмет етеді. Олар файл атауы бойынша топтасып және бірдей атты иеленгендіктен бір топқа жатады.
                                            Топ ішінде келесі кеңейтім түрлері бар:
    *.html                               -- Негізгі HTML мазмұнын анықтайды
    *.rtl.html                           -- HTML элементінің оңнан солға жазылатын тілдерде қолданылуы үшін анықтайды
    *.<locale>.html                      -- HTML мазмұнын арнайы тіл үшін анықтайды

  /<device-class>                        -- (міндетті емес) ресурстарды құрал классы арқылы ауқымдау үшін рұқсат береді(тек бір жеке құрал классы, өрнек қолдауы жоқ)
    Файлдар үшін осындай ережелер бастапқы каталог үшін ретінде қабылданады


단순 모듈 - 모듈 정의 - 구성 기고
********************************************************

'config' 폴더에 자원 수집자 프레임워크를 통해 구성 기고로 제공되는
파일이 포함되어 있습니다. 이는 대개 본문 닫기 태그 바로 앞에 있습니다.

다음 섹션에서는 구성 섹션 내의 지원되는 전체 파일 목록을 제공합니다.

/config                                  -- 이 디렉토리에 저장된 파일이 자원 수집자의 구성 섹션에 제공됩니다. 이는 대개 본문 닫기 태그 바로 앞에 있습니다.
  *.js                                   -- Javascript 자원이 알파벳순으로 제공됩니다. 이 자원은 파일 이름별로
                                            그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
                                            그룹 내에 다음 확장자 변형이 있습니다.
    *.js                                 -- 기본 압축 javascript 컨텐츠 정의
    *.js.uncompressed.js                 -- 기본 디버그 javascript 컨텐츠 정의
    *.rtl.js                             -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 압축 javascript 정의
    *.rtl.js.uncompressed.js             -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 디버그 javascript 정의
    *.<locale>.js                        -- 특정 언어의 압축 javascript 컨텐츠 정의
    *.<locale>.js.uncompressed.js        -- 특정 언어의 디버그 javascript 컨텐츠 정의
  다음 섹션에서는 대안을 정의합니다. 혼합 방식이 아니라 다음 확장자 변형 중에서 사용할 수 있습니다.
    *.min.js                             -- 기본 압축 Javascript 컨텐츠 정의
    *.js                                 -- 기본 디버그 Javascript 컨텐츠 정의
    *.rtl.min.js                         -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 압축 Javascript 정의
    *.rtl.js                             -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 디버그 Javascript 정의
    *.<locale>.min.js                    -- 특정 언어의 압축 Javascript 컨텐츠 정의
    *.<locale>.js                        -- 특정 언어의 디버그 Javascript 컨텐츠 정의

  *.html                                 -- HTML 자원이 알파벳순으로 제공됩니다. 이 자원은 파일 이름별로
                                            그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
                                            그룹 내에 다음 확장자 변형이 있습니다.
    *.html                               -- 기본 HTML 컨텐츠 정의
    *.rtl.html                           -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 HTML 정의
    *.<locale>.html                      -- 특정 언어의 HTML 컨텐츠 정의

  /<device-class>                        -- (선택사항) 디바이스 클래스로 자원의 범위를 지정할 수 있음(하나의 개별 디바이스 클래스, 등식 지원 없음)
    상위 디렉토리에서는 파일의 동일한 규칙이 여기에 적용됨


Eenvoudige modules - Moduledefinitie - aanlevering van configuratie
*******************************************************************

De map 'config' bevat bestanden die kunnen worden gebruikt configuratieaanlevering, via het framework van de
resourceaggregator. Deze worden doorgaans aangebracht vlak voor de afsluitende tag voor de corpus. 

In de onderstaande sectie vindt een volledige lijst van de ondersteunde bestanden binnen de sectie config 

/config                                  -- De bestanden in deze directory worden aangeboden voor de sectie config van de resourceaggregator. Deze worden doorgaans aangebracht vlak voor de afsluitende tag voor de corpus.
  *.js                                   -- Javascript-resources die in alfabetische volgorde worden aangeboden. Deze zijn
                                            gegroepeerd op bestandsnaam en zolang zij maar dezelfde naam hebben behoren ze tot                                             dezelfde groep.
                                            Binnen een groep zijn de volgende extensievarianten beschikbaar:
    *.js                                 -- Definitie van de hoofdcontent van de gecomprimeerde javascript
    *.js.uncompressed.js                 -- Definitie van de hoofdcontent van javascript voor foutopsporing
    *.rtl.js                             -- Definitie van de gecomprimeerde javascript voor 'rechts-naar-links'-talen
    *.rtl.js.uncompressed.js             -- Definitie van de javascript voor foutopsporing voor 'rechts-naar-links'-talen
    *.<locale>.js                        -- Definitie van de gecomprimeerde javascriptcontent voor een bepaalde taal
    *.<locale>.js.uncompressed.js        -- Definitie van de javascriptcontent voor foutopsporing voor een bepaalde taal
  In de volgende sectie wordt een alternatief gedefinieerd. U kunt beide varianten gebruiken, maar niet in een gemengde vorm.
    *.min.js                             -- Definitie van de hoofdcontent van de gecomprimeerde javascript
    *.js                                 -- Definitie van de hoofdcontent van javascript voor foutopsporing
    *.rtl.min.js                         -- Definitie van de gecomprimeerde javascript voor 'rechts-naar-links'-talen
    *.rtl.js                             -- Definitie van de javascript voor foutopsporing voor 'rechts-naar-links'-talen
    *.<locale>.min.js                    -- Definitie van de gecomprimeerde javascriptcontent voor een bepaalde taal
    *.<locale>.js                        -- Definitie van de javascriptcontent voor foutopsporing voor een bepaalde taal

  *.html                                 -- HTML-resources die in alfabetische volgorde worden aangeboden. Deze zijn
                                            gegroepeerd op bestandsnaam en zolang zij maar dezelfde naam hebben behoren ze tot                                                       dezelfde groep.
                                            Binnen een groep zijn de volgende extensievarianten beschikbaar:
    *.html                               -- Definitie van de hoofd-HTML-content
    *.rtl.html                           -- Definitie van de HTML om te gebruiken voor 'rechts-naar-links'-talen
    *.<locale>.html                      -- Definitie van de HTML-content voor een bepaalde taal

  /<device-class>                        -- (optioneel) hiermee kunnen resources worden ingedeeld per apparatuurcategorie (alleen één                                             afzonderlijke apparatuurcategorie, geen ondersteuning voor vergelijkingen)
    Voor bestanden geldt hier dezelfde regel als voor de bovenliggende directory


Enkle moduler - Moduldefinisjon - Config-bidrag (norsk)
*******************************************************

Mappen 'config' inneholder filer som leveres som config-bidrag gjennom
Resource Aggregator-rammeverket. Dette er vanligvis like før sluttkoden for hoveddelen.

Nedenfor finner du en fullstendig liste over støttede filer i config-seksjonen

/config                                  -- Filer som er lagret i denne katalogen, blir bidratt i config-seksjonen for Resource Aggregator. Dette er vanligvis like før sluttkoden for hoveddelen.
  *.js                                   -- Javascript-ressurser i alfabetisk rekkefølge. De er gruppert etter
                                            filnavn, og så lenge de har samme navn, tilhører de samme gruppe.
                                            Innenfor en gruppe finnes følgende filtypevarianter:
    *.js                                 -- Definerer komprimert javascript-hovedinnhold
    *.js.uncompressed.js                 -- Definerer javascript-hovedinnhold for feilsøking
    *.rtl.js                             -- Definerer komprimert javascript som skal brukes for høyre-til-venstre-språk
    *.rtl.js.uncompressed.js             -- Definerer javascript for feilsøking som skal brukes for høyre-til-venstre-språk
    *.<locale>.js                        -- Definerer komprimert javascript-innhold for et bestemt språk
    *.<locale>.js.uncompressed.js        -- Definerer javascript-innhold for feilsøking for et bestemt språk
  Følgende seksjon definerer et alternativ. Du kan bruke hvilken variant du vil, men ikke blande dem.
    *.min.js                             -- Definerer komprimert javascript-hovedinnhold
    *.js                                 -- Definerer javascript-hovedinnhold for feilsøking
    *.rtl.min.js                         -- Definerer komprimert javascript som skal brukes for høyre-til-venstre-språk
    *.rtl.js                             -- Definerer javascript for feilsøking som skal brukes for høyre-til-venstre-språk
    *.<locale>.min.js                    -- Definerer komprimert javascript-innhold for et bestemt språk
    *.<locale>.js                        -- Definerer javascript-innhold for feilsøking for et bestemt språk

  *.html                                 -- HTML-ressurser i alfabetisk rekkefølge. De er gruppert etter
                                            filnavn, og så lenge de har samme navn, tilhører de samme gruppe.
                                            Innenfor en gruppe finnes følgende filtypevarianter:
    *.html                               -- Definerer HTML-hovedinnhold
    *.rtl.html                           -- Definerer HTML som skal brukes for høyre-til-venstre-språk
    *.<locale>.html                      -- Definerer HTML-innhold for et bestemt språk

  /<device-class>                        -- (valgfritt) gjør det mulig å bestemme ressursområder etter enhetsklasse (bare en enkelt enhetsklasse, ikke støtte for ligninger)
    Samme regel for filer her som for den overordnede katalogen


Moduły proste - definicja modułu - element wnoszony config (polski)
********************************************************

Folder config zawiera pliki, które są udostępniane jako elementy wnoszone
konfiguracji za pomocą środowiska agregatora zasobów. Zazwyczaj jest to miejsce bezpośrednio przed zamykającym znacznikiem body.


Następująca sekcja zawiera pełną listę plików obsługiwanych w sekcji config. 

/config                                  -- Pliki zapisane w tym katalogu
będą udostępniane w sekcji config agregatora zasobów. Zazwyczaj
jest to miejsce bezpośrednio przed zamykającym znacznikiem body.
 *.js                                 -- Zasoby JavaScript udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy. W
ramach grupy występują następujące wersje rozszerzenia:
 *.js                                 -- Definiuje główną treść skompresowaną JavaScript.
 *.js.uncompressed.js                 -- Definiuje główną treść debugowania JavaScript.
 *.rtl.js                             -- Definiuje skompresowany kod JavaScript do użycia dla języków z zapisem od prawej do lewej.
 *.rtl.js.uncompressed.js             -- Definiuje kod debugowania JavaScript do użycia dla języków z zapisem od prawej do lewej.
 *.<ustawienia narodowe>.js           -- Definiuje skompresowaną treść JavaScript dla konkretnego języka.
 *.<ustawienia narodowe>.js.uncompressed.js   -- Definiuje treść debugowania JavaScript dla konkretnego języka.

W następującej sekcji są zdefiniowane pliki alternatywne. Istnieje możliwość
użycia dowolnej z tych wersji, lecz nie można ich mieszać.
 *.min.js                             -- Definiuje główną treść skompresowaną JavaScript.
 *.js                                 -- Definiuje główną treść debugowania JavaScript.
 *.rtl.min.js                         -- Definiuje skompresowany kod JavaScript do użycia dla języków z zapisem od prawej do lewej.
 *.rtl.js                             -- Definiuje kod debugowania JavaScript do użycia dla języków z zapisem od prawej do lewej.
 *.<ustawienia narodowe>.min.js       -- Definiuje skompresowaną treść JavaScript dla konkretnego języka.
 *.<ustawienia narodowe>.js           -- Definiuje treść debugowania JavaScript dla konkretnego języka. 

 *.html                               -- Zasoby HTML udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy. W
ramach grupy występują następujące wersje rozszerzenia:
 *.html                               -- Definiuje główną treść HTML.
 *.rtl.html                           -- Definiuje kod HTML do użycia dla języków z zapisem od prawej do lewej.
 *.<ustawienia narodowe>.html         -- Definiuje treść HTML dla konkretnego języka. 

/<klasa urządzeń>                     -- (opcjonalna) Umożliwia określenie dla
zasobu zasięgu będącego klasą urządzeń. (Tylko pojedyncza klasa urządzeń,
równania nie są obsługiwane). Tutaj dla plików ma zastosowanie ta sama reguła co dla katalogu macierzystego. 


Módulos simples - Definição de módulo - Contribuição Config (Português)
********************************************************

A pasta 'config' contém ficheiros que são apresentados como contribuição config através da
estrutura do agregador de recursos. Geralmente, esta aparece imediatamente antes do controlo de fecho do corpo.

A secção que se segue apresenta uma lista completa de ficheiros suportados na secção config

/config                                  -- Os ficheiros armazenados neste directório serão apresentados na secção config do agregador de recursos. Geralmente, esta aparece imediatamente antes do controlo de fecho do corpo.*.js                                   -- Recursos Javascript apresentados por ordem alfabética. Estão agrupados
                                            por nome de ficheiro e, desde que tenham o mesmo nome, pertencem ao mesmo grupo.
                                            Dentro de um grupo, existem as seguintes variações de extensão:
    *.js                                 -- Define o conteúdo de javascript comprimido principal
    *.js.uncompressed.js                 -- Define o conteúdo de javascript de depuração principal
    *.rtl.js                             -- Define o javascript comprimido a utilizar para idiomas da direita para a esquerda
    *.rtl.js.uncompressed.js             -- Define o javascript de depuração a utilizar para idiomas da direita para a esquerda
    *.<locale>.js                        -- Define o conteúdo de javascript comprimido para um idioma específico
    *.<locale>.js.uncompressed.js        -- Define o conteúdo de javascript de depuração para um idioma específico
  A secção que se segue define uma alternativa. Pode utilizar qualquer uma destas variações, mas não de forma mista.
    *.min.js                             -- Define o conteúdo de javascript comprimido principal
    *.js                                 -- Define o conteúdo de javascript de depuração principal
    *.rtl.min.js                         -- Define o javascript comprimido a utilizar para idiomas da direita para a esquerda
    *.rtl.js                             -- Define o javascript de depuração a utilizar para idiomas da direita para a esquerda
    *.<locale>.min.js                    -- Define o conteúdo de javascript comprimido a utilizar para um idioma específico
    *.<locale>.js                        -- Define o conteúdo de javascript de depuração a utilizar para um idioma específico

  *.html                                 -- Recursos HTML apresentados por ordem alfabética. Estão agrupados
                                            por nome de ficheiro e, desde que tenham o mesmo nome, pertencem ao mesmo grupo.
                                            Dentro de um grupo, existem as seguintes variações de extensão:
    *.html                               -- Define o conteúdo HTML principal
    *.rtl.html                           -- Define o HTML a utilizar para idiomas da direita para a esquerda
    *.<locale>.html                      -- Define o conteúdo HTML para um idioma específico

  /<device-class>                        -- (opcional) permite definir o âmbito de recursos por classe de dispositivo (apenas uma classe de dispositivo individual, sem suporte de equação)
    É aplicável aqui a mesma regra para ficheiros que para o directório ascendente


Módulos – Configuração Contribuição Definição Módulo – Simples (Inglês) ********************************************************

A pasta 'config' contém arquivos que são entregues como contribuição de configuração por meio da estrutura do agregador de recursos. Isso é geralmente razão antes da tag de fechamento do corpo.

A seção a seguir fornece uma lista completa de arquivos suportados dentro da seção de configuração

/config -- Os arquivos armazenados nesse diretório serão servidos na seção config do agregador de recursos. Isso é geralmente razão antes da tag de fechamento do corpo.
  *.js -- Javascript recursos atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                            Em um grupo as seguintes variações de extensão existe: *.js, Define a *.js.uncompressed.js conteúdo javascript compactado principais -- Define a *.rtl.js o conteúdo principal de depuração javascript -- Define o javascript compactado para ser utilizado para idiomas lidos da direita para *.rtl.js.uncompressed.js -- Define o javascript de depuração a ser utilizado para a esquerda idiomas *.<locale>.js -- Define o conteúdo javascript compactado para um idioma específico *.<locale>.js.uncompressed.js -- Define o conteúdo javascript de depuração para um idioma específico A seção a seguir define uma alternativa. Você pode utilizar uma dessas variações, mas não em um modo misto.
    *.min.js -- Define o conteúdo javascript principal compactado *.js -- Define a *.rtl.min.js o conteúdo principal de depuração javascript -- Define o javascript compactado para ser utilizado para idiomas lidos da direita para *.rtl.js -- Define o javascript de depuração a ser utilizado para a esquerda idiomas *.<locale>.min.js -- Define o conteúdo javascript compactado para um idioma específico *.<locale>.js -- Define o conteúdo javascript de depuração para um idioma específico

  *.html -- HTML recursos atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                            Em um grupo as seguintes variações de extensão existe: *.html, Define a *.rtl.html conteúdo HTML principal -- Define o HTML seja usada para idiomas lidos da direita *.<locale>.html -- Define o conteúdo HTML para um idioma específico

  /<device-class>                        -- (opcional) permite colocar em escopo  recursos por classe de dispositivo (somente uma classe de dispositivo individual, sem suporte de equação)
    A mesma regra para arquivos se aplica aqui como para o diretório-pai


Module simple - Definţie modul - Contribuţie config (Engleză)
********************************************************

Folderul 'config' conţien fişiere care sunt servite ca şi contribuţii config prin
cadrul de lucru agregator resursă. Acesta este chiar înainte de tagul de închidere al corpului.

Secţiunea următoare furnizează o listă completă de fişiere suportate din secţiunea config

/config                                  -- Fişierele memorate în acest director vor fi servite în secţiunea config a agregatorului resursă. Acesta este chiar înainte de tagul de închidere al corpului.
  *.js                                   -- Resursele Javascript servite în ordine alfabetică. Ele sunt grupate
                                            după numele fişierului şi atâta timp cât au acelaşi nume aparţin aceluiaşi grup.
                                            Într-un grup există variaţiile de extensie următoare:
    *.js                                 -- Defineşte conţinutul javascript principal comprimat
    *.js.uncompressed.js                 -- Defineşte conţinutul javascript principal depanare
    *.rtl.js                             -- Defineşte javascript-ul comprimat pentru a fi utilizat pentru limbile de la dreapta la stânga
    *.rtl.js.uncompressed.js             -- Defineşte javascript-ul depanare pentru a fi utilizat pentru limbile de la dreapta la stânga
    *.<locale>.js                        -- Defineşte conţinutul javascript comprimat pentru o limbă specifică
    *.<locale>.js.uncompressed.js        -- Defineşte conţinutul javascript depanare pentru o limbă specifică
  Această secţiune defineşte o alternativă. Puteţi utiliza oricare dintre aceste variaţii, dar nu în mod amestecat.
    *.min.js                             -- Defineşte conţinutul javascript principal comprimat
    *.js                                 -- Defineşte conţinutul javascript principal depanare
    *.rtl.min.js                         -- Defineşte javascript-ul comprimat pentru a fi utilizat pentru limbile de la dreapta la stânga
    *.rtl.js                             -- Defineşte javascript-ul depanare pentru a fi utilizat pentru limbile de la dreapta la stânga
    *.<locale>.min.js                    -- Defineşte conţinutul javascript comprimat pentru o limbă specifică
    *.<locale>.js                        -- Defineşte conţinutul javascript depanare pentru o limbă specifică

  *.html                                 -- Resurse HTML servite în ordine alfabetică. Ele sunt grupate
                                            după numele fişierului şi atâta timp cât au acelaşi nume aparţin aceluiaşi grup.
                                            Într-un grup există variaţiile extensie următoare:
    *.html                               -- Defineşte conţinutul HTML principal
    *.rtl.html                           -- Defineşte HTML-ul utilizat pentru limbile de la dreapta la stânga
    *.<locale>.html                      -- Defineşte conţinutul HTML pentru o limbă specifică

  /<device-class>                        -- (opţional) permite definirea domeniului resurselor de către clasa dispozitiv (doar o clasă dispozitiv individuală, niciun suport ecuaţie)
    Aceeaşi regulă se aplică aici pentru directorul părinte


Простые модули - Определение модуля - Дополнение конфигурации
********************************************************

Папка 'config' содержит файлы, которые выполняют роль дополнения
конфигурации в среде агрегатора ресурсов. Как правило, он расположен перед закрывающим тегом body.

Ниже приведен полный список файлов, поддерживаемых в разделе config

/config                                  -- Файлы из этого каталога предоставляются в разделе config агрегатора
                                            ресурсов. Как правило, он расположен перед закрывающим тегом body.
  *.js                                   -- Предоставляемые ресурсы Javascript в алфавитном порядке. Они
                                            группируются по имени файла. Ресурсы с одинаковыми именами
                                            принадлежат одной группе.
                                            В группе допустимы следующие расширения:
    *.js                                 -- Основное сжатое содержимое javascript
    *.js.uncompressed.js                 -- Основное содержимое javascript для отладки
    *.rtl.js                             -- Сжатое содержимое javascript для языков с направлением текста справа налево
    *.rtl.js.uncompressed.js             -- Сжатое содержимое javascript для языков с направлением текста слева направо
    *.<locale>.js                        -- Сжатое содержимое javascript для конкретных языков
    *.<locale>.js.uncompressed.js        -- Сжатое содержимое javascript для конкретного языка
Можно использовать любые варианты, однако их не следует смешивать.
          *.min.js                             -- Основное сжатое содержимое javascript
          *.js                                 -- Основное содержимое javascript для отладки
          *.rtl.min.js                         -- Сжатое содержимое javascript для языков с направлением текста справа налево
          *.rtl.js                             -- Сжатое содержимое javascript для языков с направлением текста слева направо
          *.<локаль>.min.js                    -- Сжатое содержимое javascript для конкретных языков
          *.<локаль>.js                        -- Сжатое содержимое javascript для конкретного языка

  *.html                                 -- Предоставляемые ресурсы HTML в алфавитном порядке. Они
                                            группируются по имени файла. Ресурсы с одинаковыми именами
                                            принадлежат одной группе.
                                            В группе допустимы следующие расширения:
    *.html                               -- Основное содержимое HTML
    *.rtl.html                           -- Содержимое HTML для языков с направлением текста справа налево
    *.<locale>.html                      -- Содержимое HTML для конкретного языка

  /<device-class>                        -- (необязательно) позволяет разделить ресурсы с учетом класса
                                              устройств (только отдельные классы устройств без поддержки формул)
                                              Здесь применяется правило, действующее для родительского каталога.


Jednoduché moduly - definícia modulu - kontribúcia config (slovenčina)
********************************************************

Zložka 'config' obsahuje súbory, ktoré sa poskytujú ako kontribúcia config cez kostru agregátora prostriedkov. Zvyčajne sa to umiestni hneď pred zatváraciu značku body. 

Nasledujúca sekcia uvádza úplný zoznam podporovaných súborov v sekcii config.

/config                                  - Súbory uložené v tomto adresári sa poskytnú v sekcii config v agregátore prostriedkov. Zvyčajne sa to umiestni hneď pred zatváraciu značku body.
  *.js                                   - Prostriedky Javascript poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny. V skupine existujú tieto varianty prípony:
    *.js                                 - Definuje hlavný komprimovaný obsah javascript
    *.js.uncompressed.js                 - Definuje hlavný obsah ladenia javascript
    *.rtl.js                             - Definuje komprimovaný javascript na použitie v jazykoch so smerom sprava doľava
    *.rtl.js.uncompressed.js             - Definuje ladenie javascript na použitie v jazykoch so smerom sprava doľava
    *.<locale>.js                        - Definuje komprimovaný obsah javascript pre konkrétny jazyk
    *.<locale>.js.uncompressed.js        - Definuje obsah ladenia javascript pre špecifický jazyk
  Nasledujúce sekcie definujú alternatívu. Môžete použiť obe variácie, ale nemôžete ich kombinovať.
    *.min.js                             - Definuje hlavný komprimovaný obsah javascript
    *.js                                 - Definuje hlavný obsah ladenia javascript
    *.rtl.min.js                         - Definuje komprimovaný javascript na použitie v jazykoch so smerom sprava doľava
    *.rtl.js                             - Definuje ladenie javascript na použitie v jazykoch so smerom sprava doľava
    *.<locale>.min.js                    - Definuje komprimovaný obsah javascript pre konkrétny jazyk
    *.<locale>.js                        - Definuje obsah ladenia javascript pre špecifický jazyk

  *.html                                 - Prostriedky HTML poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny.
                                            V skupine existujú tieto varianty prípony:
    *.html                               - Definuje hlavný obsah HTML
    *.rtl.html                           - Definuje HTML na použitie v jazykoch so smerom sprava doľava
    *.<locale>.html                      - Definuje obsah HTML pre špecifický jazyk

  /<device-class>                        - (voliteľné) Umožňuje nastaviť rozsah prostriedkov podľa triedy zariadenia (iba jedna individuálna trieda zariadenia, bez podpory rovníc)
    Platí tu rovnaké pravidlo pre súbory ako pre rodičovský adresár


Preprosti moduli – Definicija modulov – Prispevek Config (slovenščina)
********************************************************

Mapa 'config' vsebuje datoteke, ki so podane kot prispevek config prek ogrodja
združevalnika virov. To je običajno tik pred zaključno oznako za telo.

Naslednji razdelek ponuja celoten seznam podprtih datotek v okviru razdelka config

/config                                  -- Datoteke, shranjene v tem imeniku, bodo podane v razdelku config združevalnika virov. To je običajno tik pred zaključno oznako za telo.
  *.js                                   -- Viri JavaScript, podani v abecednem vrstnem redu. Združeni so v skupine
                                            po imenih datotek in vsi, ki imajo isto ime, spadajo v isto skupino.
                                            Znotraj skupine obstajajo naslednje različne pripone:
    *.js                                 -- Definira glavno stisnjeno vsebino JavaScript
    *.js.uncompressed.js                 -- Definira glavno razhroščevalno vsebino JavaScript
    *.rtl.js                             -- Definira stisnjeni JavaScript, namenjen za jezike, ki se pišejo od desne proti levi
    *.rtl.js.uncompressed.js             -- Definira razhroščevalni JavaScript, namenjen za jezike, ki se pišejo od desne proti levi
    *.<locale>.js                        -- Definira stisnjeno vsebino JavaScript za določen jezik
    *.<locale>.js.uncompressed.js        -- Definira razhroščevalni JavaScript za določen jezik
  Naslednji razdelek definira nadomestno možnost. Uporabljate lako katero koli od obeh možnosti, vendar jih ne smete združiti.
    *.min.js                             -- Definira glavno stisnjeno vsebino JavaScript
    *.js                                 -- Definira glavno razhroščevalno vsebino JavaScript
    *.rtl.min.js                         -- Definira stisnjeni JavaScript, namenjen za jezike, ki se pišejo od desne proti levi
    *.rtl.js                             -- Definira razhroščevalni JavaScript, namenjen za jezike, ki se pišejo od desne proti levi
    *.<locale>.min.js                    -- Definira stisnjeno vsebino JavaScript za določen jezik
    *.<locale>.js                        -- Definira razhroščevalni JavaScript za določen jezik 

  *.html                                 -- Viri HTML, podani v abecednem vrstnem redu. Združeni so v skupine
                                            po imenih datotek in vsi, ki imajo isto ime, spadajo v isto skupino.
                                            Znotraj skupine obstajajo naslednje različne pripone:
    *.html                               -- Definira glavno vsebino HTML
    *.rtl.html                           -- Definira HTML za uporabo z jeziki, ki se pišejo od desne proti levi
    *.<locale>.html                      -- Definira vsebino HTML za določen jezik

  /<device-class>                        -- (Izbirno) omogoča dodeljevanje dosega virom glede na razred naprave (le za en posamezen razred naprave, brez podpore enačb)
    Tukaj veljajo enaka pravila za datoteke kot v nadrejenem imeniku


Enkla moduler - Moduldefinition - Config-bidrag (svenska)
********************************************************

Mappen config innehåller filer som tillhandahålls som konfigurationsbidrag via ramverket för resursaggregering. Det är vanligtvis precis före det avslutande märkordet för koden. 

I följande avsnitt finns en fullständig lista över filer som stöds inom config-avsnittet 

/config                                  -- Filer som lagras i den här katalogen tillhandahålls i config-avsnittet i resursaggregeringen.  Det är vanligtvis precis före det avslutande märkordet för koden. 
    *.js                                 -- Javascript-resurser som tillhandahålls i bokstavsordning. De är grupperade
                                            efter filnamn och om de har samma namn tillhör de samma grupp.
                                            Inom en grupp finns följande tilläggsvarianter:
    *.js                                 -- Definiera det komprimerade JavaScript-huvudinnehållet
    *.js.uncompressed.js                 -- Definierar JavaScript-huvudinnehållet för felsökning
    *.rtl.js                             -- Definierar det komprimerade JavaScript som ska användas för höger-till-vänster-språk
    *.rtl.js.uncompressed.js             -- Definierar det JavaScript för felsökning som ska användas för höger-till-vänster-språk
    *.<locale>.js                        -- Definierar det komprimerade JavaScript-innehållet för ett visst språk
    *.<locale>.js.uncompressed.js        -- Definierar det JavaScript-innehåll för felsökning som ska användas för ett visst språk
  Följande avsnitt definierar ett alternativ. Du kan använda vilken variant du vill, men inte blanda dem.
    *.min.js                             -- Definierar det komprimerade JavaScript-huvudinnehållet
    *.js                                 -- Definierar JavaScript-huvudinnehållet för felsökning
    *.rtl.min.js                         -- Definierar det komprimerade JavaScript som används för höger-till-vänster-språk
    *.rtl.js                             -- Definierar det JavaScript som används för felsökning för höger-till-vänster-språk
    *.<locale>.min.js                    -- Definierar det komprimerade JavaScript-innehållet för ett visst språk
    *.<locale>.js                        -- Definierar JavaScript-innehållet för felsökning för ett visst språk

  *.html                                 -- HTML-resurser som tillhandahålls i bokstavsordning. De är grupperade
                                            efter filnamn och om de har samma namn tillhör de samma grupp.
                                            Inom en grupp finns det följande tilläggsvarianter:
    *.html                               -- Definierar HTML-huvudinnehållet
    *.rtl.html                           -- Definierar HTML som ska användas för höger-till-vänster-språk
    *.<locale>.html                      -- Definierar HTML-innehållet för ett visst språk

  /<device-class>                        -- (valfritt) tillåter att resursomfattningar bestäms av enhetsklassen (endast en enskild enhetsklass utan ekvationsstöd)
    Samma regel tillämpas på regler här som för den överordnade katalogen


Simple Modules - Module Definition - Config Contribution (English)
********************************************************

The 'config' folder contains files that are served up as config contribution through the
resource aggregator framework. This is usually right before the body closing tag.

The following section provides a complete list of supported files within the config section

/config                                  -- Files stored in this directory will be served up in the config section of the resource aggregator. This is usually right before the body closing tag.
  *.js                                   -- Javascript resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.js                                 -- Defines the main compressed javascript content
    *.js.uncompressed.js                 -- Defines the main debug javascript content
    *.rtl.js                             -- Defines the compressed javascript to be used for right-to-left languages
    *.rtl.js.uncompressed.js             -- Defines the debug javascript to be used for right-to-left languages
    *.<locale>.js                        -- Defines the compressed javascript content for a specific language
    *.<locale>.js.uncompressed.js        -- Defines the debug javascript content for a specific language
  The following section defines an alternative. You can use either of those variations, but not in a mixed fashion.
    *.min.js                             -- Defines the main compressed javascript content
    *.js                                 -- Defines the main debug javascript content
    *.rtl.min.js                         -- Defines the compressed javascript to be used for right-to-left languages
    *.rtl.js                             -- Defines the debug javascript to be used for right-to-left languages
    *.<locale>.min.js                    -- Defines the compressed javascript content for a specific language
    *.<locale>.js                        -- Defines the debug javascript content for a specific language

  *.html                                 -- HTML resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.html                               -- Defines the main HTML content
    *.rtl.html                           -- Defines the HTML to be used for right-to-left languages
    *.<locale>.html                      -- Defines the HTML content for a specific language

  /<device-class>                        -- (optional) allows to scope resources by device class (only one individual device class, no equation support)
    Same rule for files apply here as for the parent directory


Yalın Modüller - Modül Tanımlaması - Config Katkısı (Türkçe)
************************************************************

'config' klasörü, kaynak toplayıcı çerçevesi aracılığıyla config katkısı olarak
sunulan dosyaları içerir. Genellikle, body kapanış etiketinden hemen önce geçer. 

Aşağıda, config kısmındaki desteklenen dosyaların tam bir listesi verilmiştir:

/config                                  -- Bu dizinde saklanan dosyalar, kaynak toplayıcının config kısmında sunulur. Genellikle, body kapanış etiketinden hemen önce geçer.
  *.js                                   -- Alfabetik sırayla sunulan Javascript kaynakları. Bunlar dosya adına
                                            göre gruplanır ve adları aynı olduğu sürece aynı gruba ait olur.
                                            Bir grup içinde aşağıdaki uzantı çeşitlemeleri vardır:
    *.js                                 -- Sıkıştırılmış ana javascript içeriğini tanımlar
    *.js.uncompressed.js                 -- Ana hata ayıklama javascript içeriğini tanımlar
    *.rtl.js                             -- Sağdan sola dillerde kullanılacak sıkıştırılmış javascript'i tanımlar
    *.rtl.js.uncompressed.js             -- Sağdan sola dillerde kullanılacak hata ayıklama javascript'i tanımlar
    *.<ülke-değeri>.js                   -- Belirli bir dile ilişkin sıkıştırılmış javascript içeriğini tanımlar
    *.<ülke-değeri>.js.uncompressed.js   -- Belirli bir dile ilişkin hata ayıklama javascript içeriğini tanımlar
  Aşağıdaki kısımda bir alternatif tanımlanır. Bu çeşitlemelerden herhangi birini kullanabilirsiniz, ancak bunları karma olarak kullanamazsınız.
    *.min.js                             -- Sıkıştırılmış ana javascript içeriğini tanımlar
    *.js                                 -- Ana hata ayıklama javascript içeriğini tanımlar
    *.rtl.min.js                         -- Sağdan sola dillerde kullanılacak sıkıştırılmış javascript'i tanımlar
    *.rtl.js                             -- Sağdan sola dillerde kullanılacak hata ayıklama javascript'i tanımlar
    *.<ülke-değeri>.min.js               -- Belirli bir dile ilişkin sıkıştırılmış javascript içeriğini tanımlar
    *.<ülke-değeri>.js                   -- Belirli bir dile ilişkin hata ayıklama javascript içeriğini tanımlar 

  *.html                                 -- Alfabetik sırayla sunulan HTML kaynakları. Bunlar dosya adına
                                            göre gruplanır ve adları aynı olduğu sürece aynı gruba ait olur.
                                            Bir grup içinde aşağıdaki uzantı çeşitlemeleri vardır:
    *.html                               -- Ana HTML içeriğini tanımlar
    *.rtl.html                           -- Sağdan sola dillerde kullanılacak HTML'i tanımlar
    *.<ülke-değeri>.html                 -- Belirli bir dile ilişkin HTML içeriğini tanımlar 

  /<aygıt-sınıfı>                        -- (İsteğe Bağlı) Kaynakların aygıt sınıfı kapsamında olmasını sağlar (tek bir aygıt sınıfı, eşitlik desteği yok)
    Burada, üst dizin için geçerli olan kural, dosyalar için de geçerlidir. 


Прості модулі - Визначення модулів - Доповнення Config (українська)
********************************************************

Папка config містить файли, які надаються як доповнення config через середовище агрегатора
ресурсів. Зазвичай це прямо перед закриваючим тегом body.

У наступному розділі наведено повний список підтримуваних файлів із розділу config

/config                                  -- Файли, що зберігаються в цьому каталозі, надаються в розділі config
                                            агрегатора ресурсів. Зазвичай це прямо перед закриваючим тегом body.
  *.js                                   -- Ресурси Javascript, що надаються, в алфавітному порядку. Їх згруповано за
                                            іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть
                                            до однієї групи.
                                            У межах однієї групи існують такі варіанти розширень:
    *.js                                 -- визначає вміст головного стиснутого файлу javascript;
    *.js.uncompressed.js                 -- визначає вміст головного файлу відлагодження javascript;
    *.rtl.js                             -- визначає вміст стиснутого файлу javascript для мов із письмом справа наліво;
    *.rtl.js.uncompressed.js             -- визначає вміст файлу відлагодження javascript для мов із письмом справа наліво;
    *.<locale>.js                        -- визначає вміст стиснутого файлу javascript для вказаної мови;
    *.<locale>.js.uncompressed.js        -- визначає вміст файлу відлагодження javascript для вказаної мови.
  У наступному розділі наведено альтернативні розширення. Можна вибрати перший або другий варіанти, проте поєднувати їх не можна.
    *.min.js                             -- визначає вміст головного стиснутого файлу javascript;
    *.js                                 -- визначає вміст головного файлу відлагодження javascript;
    *.rtl.min.js                         -- визначає вміст стиснутого файлу javascript для мов із письмом справа наліво;
    *.rtl.js                             -- визначає вміст файлу відлагодження javascript для мов із письмом справа наліво;
    *.<locale>.min.js                    -- визначає вміст стиснутого файлу javascript для вказаної мови;
    *.<locale>.js                        -- визначає вміст файлу відлагодження javascript для вказаної мови.

  *.html                                 -- Ресурси HTML, що надаються, в алфавітному порядку. Їх згруповано за
                                            іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть
                                            до однієї групи.
                                            У межах однієї групи існують такі варіанти розширень:
    *.html                               -- визначає вміст головного файлу HTML;
    *.rtl.html                           -- визначає вміст файлу HTML для мов із письмом справа наліво;
    *.<locale>.html                      -- визначає вміст файлу HTML для вказаної мови.

  /<device-class>                        -- (необов'язково) дозволяє визначити область дії ресурсів за класом пристроїв (лише один окремий клас пристроїв, без підтримки рівнянь)
    Для файлів застосовується тут те саме правило, що й для батьківського каталогу


简单模块 - 模块定义 - 配置添加项（中文版）
********************************************************

“config”文件夹包含通过资源聚集器框架作为配置添加项提供的文件。通常就位于主体结束标记之前。

以下部分提供了 config 部分中受支持文件的完整列表

/config                                  -- 资源聚集器的 config 部分中将提供存储在此目录中的文件。通常就位于主体结束标记之前。
  *.js                                   -- 按字母顺序提供的 Javascript 资源。按文件名进行分组，只要这些资源的名称相同，它们就属于同一组。
                                            组中存在以下扩展名变体：
    *.js                                 -- 定义了 Javascript 主压缩内容
    *.js.uncompressed.js                 -- 定义了 Javascript 主调试内容
    *.rtl.js                             -- 定义了从右至左显示的语言所要使用的压缩 Javascript
    *.rtl.js.uncompressed.js             -- 定义了从右至左显示的语言所要使用的调试 Javascript
    *.<locale>.js                        -- 定义了特定语言的 Javascript 压缩内容
    *.<locale>.js.uncompressed.js        -- 定义了特定语言的 Javascript 调试内容
  以下部分定义了替代方法。您可以使用任一变体，但不能以混合方式使用。
    *.min.js                             -- 定义了 Javascript 主压缩内容
    *.js                                 -- 定义了 Javascript 主调试内容
    *.rtl.min.js                         -- 定义了从右至左显示的语言所要使用的压缩 Javascript
    *.rtl.js                             -- 定义了从右至左显示的语言所要使用的调试 Javascript
    *.<locale>.min.js                    -- 定义了特定语言的 Javascript 压缩内容
    *.<locale>.js                        -- 定义了特定语言的 Javascript 调试内容

  *.html                                 -- 按字母顺序提供的 HTML 资源。按文件名进行分组，只要这些资源的名称相同，它们就属于同一组。
                                            组中存在以下扩展名变体：
    *.html                               -- 定义了 HTML 主内容
    *.rtl.html                           -- 定义了从右至左显示的语言所要使用的 HTML
    *.<locale>.html                      -- 定义了特定语言的 HTML 内容

  /<device-class>                        -- （可选）允许按设备类（仅限单个设备类，不支持公式）查看资源。
    此处应用的文件规则与父目录规则相同


簡式模組 - 模組定義 - Config 要素項（繁體中文）
********************************************************

'config' 資料夾包含透過資源聚集器架構顯示為 config 要素項的檔案。
它一般位於主體結束標籤前面，緊挨著該標籤。


下列小節提供 config 區段中受支援檔案的完整清單。

      /config                                  -- 儲存在此目錄中的檔案將在資源聚集器中的配置區段顯示。它一般位於主體結束標籤前面，緊挨著該標籤。
        *.js                                   -- 按字母順序顯示的 Javascript 資源。這些資源
                                                  依檔名分組，並且只要它們的名稱相同，就屬於相同的群組。
                                                  在群組中，有下列延伸變體：
          *.js                                 -- 定義主要壓縮 javascript 內容
          *.js.uncompressed.js                 -- 定義主要除錯 javascript 內容
          *.rtl.js                             -- 定義要用於從右向左語言的壓縮 javascript
          *.rtl.js.uncompressed.js             -- 定義要用於從右向左語言的除錯 javascript
          *.<locale>.js                        -- 定義特定語言的壓縮 javascript 內容
          *.<locale>.js.uncompressed.js        -- 定義特定語言的除錯 javascript 內容
        下列區段定義替代方案。您可以使用這些變體之一，但是不能混合使用。
          *.min.js                             -- 定義主要壓縮 javascript 內容
          *.js                                 -- 定義主要除錯 javascript 內容
          *.rtl.min.js                         -- 定義要用於從右向左語言的壓縮 javascript
          *.rtl.js                             -- 定義要用於從右向左語言的除錯 javascript
          *.<locale>.min.js                    -- 定義特定語言的壓縮 javascript 內容
          *.<locale>.js                        -- 定義特定語言的除錯 javascript 內容

          *.html                                 -- 按字母順序顯示的 HTML 資源。這些資源
                                                  依檔名分組，並且只要它們的名稱相同，就屬於相同的群組。
                                                  在群組中，有下列延伸變體：
          *.html                               -- 定義主要 HTML 內容
          *.rtl.html                           -- 定義要用於從右向左語言的 HTML 內容
          *.<locale>.html                      -- 定義特定語言的 HTML 內容

  
/<device-class>                        -- （選用）容許您依裝置類別設定資源的範圍（僅一個個別的裝置類別，不支援方程式）
          在這裡，上層目錄的相同檔案規則適用


