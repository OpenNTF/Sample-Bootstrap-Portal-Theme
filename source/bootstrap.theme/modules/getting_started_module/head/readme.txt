Simple Modules - Module Definition - Head Contribution (English)
******************************************************

The 'head' folder contains files that are served up as head contribution through the
resource aggregator framework. Those resources appear in the head tag of the markup served up to the browser.

The following section provides a complete list of supported files within the head section

/head                                    -- Files stored in this directory will be served up in the head section
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

  *.css                                  -- CSS resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.css                                -- Defines the main compressed CSS content
    *.css.uncompressed.css               -- Defines the main debug CSS content
    *.rtl.css                            -- Defines the compressed CSS to be used for right-to-left languages
    *.rtl.css.uncompressed.css           -- Defines the debug CSS to be used for right-to-left languages
    *.<locale>.css                       -- Defines the compressed CSS content for a specific language
    *.<locale>.css.uncompressed.css      -- Defines the debug CSS content for a specific language
  The following section defines an alternative way. You can use either of those variations, but not in a mixed fashion.
    *.min.css                            -- Defines the main compressed CSS content
    *.css                                -- Defines the main debug CSS content
    *.rtl.min.css                        -- Defines the compressed CSS to be used for right-to-left languages
    *.rtl.css                            -- Defines the debug CSS to be used for right-to-left languages
    *.<locale>.min.css                   -- Defines the compressed CSS content for a specific language
    *.<locale>.css                       -- Defines the debug CSS content for a specific language
    
  *.html                                 -- HTML resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.html                               -- Defines the main HTML content
    *.rtl.html                           -- Defines the HTML to be used for right-to-left languages
    *.<locale>.html                      -- Defines the HTML content for a specific language

  /<device-class>                        -- (optional) allows to scope resources by device class (only one individual device class, no equation support)
    Same rule for files apply here as for the parent directory


وحدات البرامج البسيطة - تعريف وحدة برامج - مشاركة Head (العربية)
******************************************************

تحتوي الحافظة 'head' على الملفات التي يتم تقديمها كمشاركة head في اطار عمل أداة تجميع المصادر. تظهر هذه المصادر في شارة التعليم head لعلامات التكويد التي يتم تقديمها الى برنامج الاستعراض. 

يقدم القسم التالي كشف كامل بالملفات التي يتم دعمها في قسم head 

/head                                    -- الملفات التي يتم تخزينها في هذا الدليل سيتم تقديمها في قسم head
  *.js                                   -- مصادر Javascript يتم تقديمها بترتيب أبجدي. حيث يتم تجميعهم بواسطة اسم الملف وطالما كان لهم نفس الاسم سينتمون الى نفس المجموعة.
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

  *.css                                  -- مصادر CSS يتم تقديمها بترتيب أبجدي. حيث يتم تجميعهم بواسطة اسم الملف وطالما كان لهم نفس الاسم سينتمون الى نفس المجموعة.
                                            في المجموعة توجد اللاحقات المتعددة التالية:
    *.css                                -- تعرف محتويات CSS المضغوطة الرئيسية
    *.css.uncompressed.css               -- تعرف محتويات CSS لتصحيح الأخطاء الرئيسية
    *.rtl.css                            -- تعرف CSS المضغوط الذي سيتم استخدامه للغات من اليمين الى اليسار    *.rtl.css.uncompressed.css           -- تعرف CSS لتصحيح الأخطاء الذي سيتم استخدامه للغات من اليمين الى اليسار
    *.<locale>.css                       -- تعرف محتويات CSS المضغوطة للغة معينة
    *.<locale>.css.uncompressed.css      -- تعرف محتويات CSS لتصحيح الأخطاء للغة معينة
  يقوم القسم التالي بتعريف طريقة بديلة. يمكنك استخدام أي من هذه البدائل، لكن ليس في نمط مختلط.
    *.min.css                             -- تعرف محتويات CSS المضغوطة الرئيسية
    *.css                                 -- تعرف محتويات CSS لتصحيح الأخطاء الرئيسية
    *.rtl.min.css                         -- تعرف CSS المضغوط الذي سيتم استخدامه للغات من اليمين الى اليسار
    *.rtl.css                             -- تعرف CSS لتصحيح الأخطاء الذي سيتم استخدامه للغات من اليمين الى اليسار
    *.<locale>.min.css                    -- تعرف محتويات CSS المضغوطة للغة معينة
    *.<locale>.css                        -- تعرف محتويات CSS لتصحيح الأخطاء للغة معينة

  *.html                                 -- يتم تقديم مصادر HTML بترتيب أبجدي. حيث يتم تجميعهم بواسطة اسم الملف وطالما كان لهم نفس الاسم سينتمون الى نفس المجموعة.
                                            في المجموعة توجد اللاحقات المتعددة التالية:
    *.html                               -- تعرف محتويات HTML الرئيسية
    *.rtl.html                           -- تعرف HTML الذي سيتم استخدامه باللغات من اليمين الى اليسار
    *.<locale>.html                      -- تعرف محتويات HTML للغة معينة

  /<device-class>                        -- (اختياري) يسمح بتحديد نطاق المصادر بواسطة فئة الجهاز(فئة جهاز واحد فقط، بدون دعم المعادلة)
    تطبق هنا نفس القاعدة للملفات بالنسبة للدليل الرئيسي


Mòduls simples - Definició de mòdul - Contribució Head (Anglès)
******************************************************

La carpeta 'head' conté fitxers que serveixen com a contribució head a través de l'estructura d'agregador de recurs.
Aquests recursos apareixen a l'etiqueta head de l'etiquetatge servit al navegador.

La secció següent proporciona una llista completa dels fitxers suportats a la secció head

/head                                    -- Els fitxers emmagatzemats en aquest directori se serviran a la secció head
  *.js                                   -- Els recursos Javascript se serviran en ordre alfabètic. S'agrupen per nom de fitxer i quan tenen el mateix nom, pertanyen al mateix grup.
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

  *.css                                  -- Recursos CSS servits en ordre alfabètic. S'agrupen per nom de fitxer i quan tenen el mateix nom, pertanyen al mateix grup.
                                            A dins d'un grup existeixen les següents variacions:
    *.css                                -- Defineix el principal contingut de CSS comprimit
    *.css.uncompressed.css               -- Defineix el principal contingut de CSS de depuració
    *.rtl.css                            -- Defineix el CSS comprimit que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.rtl.css.uncompressed.css           -- Defineix el CSS de depuració que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.<locale>.css                       -- Defineix el contingut de CSS comprimit per a un idioma concret
*.<locale>.css.uncompressed.css      -- Defineix el contingut de CSS de depuració per a un idioma concret
  La secció següent defineix un mètode alternatiu. Podeu utilitzar qualsevol de les variacions, però no un mètode combinat.
    *.min.css                             -- Defineix el principal contingut de CSS comprimit
    *.css                                 -- Defineix el principal contingut de CSS de depuració
    *.rtl.min.css                         -- Defineix el CSS comprimit que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.rtl.css                             -- Defineix el CSS de depuració que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.<locale>.min.css                    -- Defineix el contingut de CSS comprimit d'un idioma concret
    *.<locale>.css                        -- Defineix el contingut de CSS de depuració d'un idioma específic*.html                                 -- Recursos HTML servits el ordre alfabètic. S'agrupen per nom de fitxer i quan tenen el mateix nom, pertanyen al mateix grup.
                                            A dins d'un grup existeixen les següents variacions:
    *.html                               -- Defineix el principal contingut HTML
    *.rtl.html                           -- Defineix l'HTML que cal utilitzar per als idiomes que s'escriuen de dreta a esquerra
    *.<locale>.html                      -- Defineix el contingut HTML per a un idioma concret

  /<device-class>                        -- (opcional) permet definit l'àmbit dels recursos per classe de dispositiu (només una classe de dispositiu individual, sense suport d'equació)
    S'aplica la mateixa regla als fitxers que al directori pare


Jednoduché moduly - Definice modulů - Příspěvek hlavičky (anglicky)
******************************************************

Složka 'head' obsahuje soubory, které jsou prostřednictvím rámce agregátoru prostředků poskytnuty
jako příspěvek hlavičky. Tyto prostředky se zobrazí ve značce hlavičky markupu poskytnutého prohlížeči.

V následující sekci je uveden úplný seznam souborů podporovaných v rámci sekce hlavičky

/head                                    -- Soubory uložené v tomto adresáři budou nabízeny v sekci hlavičky
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

  *.css                                  -- Prostředky CSS poskytnuté v abecedním pořadí. Jsou seskupeny dle názvu souboru.
                                            Mají-li stejný název, patří do stejné skupiny.
                                            V rámci skupiny existují následující varianty přípon:
          *.css                                -- Definuje hlavní komprimovaný obsah CSS
          *.css.uncompressed.css               -- Definuje hlavní obsah CSS ladění
          *.rtl.css                            -- Definuje komprimovaný obsah CSS, který se má použít pro jazyky psané zprava doleva
          *.rtl.css.uncompressed.css           -- Definuje obsah CSS ladění, který se má použít pro jazyky psané zprava doleva
          *.<národní_prostředí>.css            -- Definuje komprimovaný obsah CSS pro specifický jazyk
          *.<národní_prostředí>.css.uncompressed.css      -- Definuje obsah CSS ladění pro specifický jazyk
        Následující sekce definuje alternativní způsob. Můžete použít jednu z těchto variant, nelze je však kombinovat.
    *.min.css                            -- Definuje hlavní komprimovaný obsah CSS
    *.css                                -- Definuje hlavní obsah CSS ladění
    *.rtl.min.css                        -- Definuje komprimovaný obsah CSS, který se má použít pro jazyky psané zprava doleva
    *.rtl.css                            -- Definuje obsah CSS ladění, který se má použít pro jazyky psané zprava doleva
    *.<národní_prostředí>.min.css        -- Definuje komprimovaný obsah CSS pro specifický jazyk
    *.<národní_prostředí>.css            -- Definuje obsah CSS ladění pro specifický jazyk

  *.html                                 -- Prostředky HTML poskytnuté v abecedním pořadí. Jsou seskupeny dle názvu souboru.
                                            Mají-li stejný název, patří do stejné skupiny.
                                            Ve skupině existují tyto varianty přípon:
    *.html                               -- Definuje hlavní obsah HTML
    *.rtl.html                           -- Definuje HTML použité pro jazyky zprava doleva
    *.<národní_prostředí>.html                      -- Definuje obsah HTML pro specifický jazyk

  /<třída_zařízení>                      -- (Volitelné) Umožňuje vymezit rozsah prostředků podle třídy zařízení (pouze jedna samostatná třída zařízení, bez podpory rovnic)
          Platí zde stejná pravidla pro soubory jako pro nadřízený adresář


Enkle moduler - moduldefinition - head-bidrag)
**********************************************

Folderen 'head' indeholder filer, der leveres som head-bidrag via strukturen i
ressourceaggregatoren. Disse ressourcer vises i head-koden i det markup-sprog, der leveres til browseren.

I følgende afsnit vises en komplet liste over understøttede filer i head-afsnittet.

/head                                        -- Filer, der er lagret i dette bibliotek, bliver leveret i head-afsnittet
  *.js                                       -- JavaScript-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                                filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                                I en gruppe findes der følgende filtypevariationer:
    *.js                                     -- Definerer det primære komprimerede JavaScript-indhold
    *.js.uncompressed.js                     -- Definerer det primære JavaScript-fejlfindingsindhold
    *.rtl.js                                 -- Definerer det komprimerede JavaScript, der skal bruges til højre mod venstre-sprog
    *.rtl.js.uncompressed.js                 -- Definerer det JavaScript-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.js                   -- Definerer det komprimerede JavaScript-indhold for et bestemt sprog
    *.<sprogkonvention>.js.uncompressed.js   -- Definerer JavaScript-fejlfindingsindholdet for et bestemt sprog
  Følgende afsnit definerer et alternativ. Du kan bruge en af disse variationer, men ikke blandet.
    *.min.js                                 -- Definerer det primære komprimerede JavaScript-indhold
    *.js                                     -- Definerer det primære JavaScript-fejlfindingsindhold
    *.rtl.min.js                             -- Definerer det komprimerede JavaScript, der skal bruges til højre mod venstre-sprog
    *.rtl.js                                 -- Definerer det JavaScript-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.min.js               -- Definerer det komprimerede JavaScript-indhold for et bestemt sprog
    *.<sprogkonvention>.js                   -- Definerer JavaScript-fejlfindingsindholdet for et bestemt sprog

   *.css                                    -- CSS-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                                filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                                I en gruppe findes der følgende filtypevariationer:
    *.css                                    -- Definerer det primære komprimerede CSS-indhold
    *.css.uncompressed.css                   -- Definerer det primære CSS-fejlfindingsindhold
    *.rtl.css                                -- Definerer det komprimerede CSS, der skal bruges til højre mod venstre-sprog
    *.rtl.css.uncompressed.css               -- Definerer det CSS-fejlfindingsindhold, der skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.css                  -- Definerer det komprimerede CSS-indhold for et bestemt sprog
    *.<sprogkonvention>.css.uncompressed.css -- Definerer CSS-fejlfindingsindholdet for et bestemt sprog
  I følgende afsnit defineres en alternativ metode.Du kan bruge en af disse variationer, men ikke blandet.
    *.min.css                                -- Definerer det primære komprimerede CSS-indhold
    *.css                                    -- Definerer det primære CSS-fejlfindingsindhold
    *.rtl.min.css                            -- Definerer det komprimerede CSS, der skal bruges til højre mod venstre-sprog
    *.rtl.css                                -- Definerer det CSS-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.min.css              -- Definerer det komprimerede CSS-indhold for et bestemt sprog
    *.<sprogkonvention>.css                  -- Definerer CSS-fejlfindingsindholdet for et bestemt sprog
   *.html                                   -- HTML-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                                filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                                I en gruppe findes der følgende filtypevariationer:
    *.html                                   -- Definerer det primære HTML-indhold
    *.rtl.html                               -- Definerer den HTML, der skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.html                 -- Definerer HTML-indholdet for et bestemt sprog

  /<enhedsklasse>                           -- (Valgfrit) Gør det muligt at angive omfang af ressourcer efter enhedskasse (kun individuel enhedsklasse, ligninger understøttes ikke)
    Der gælder samme regel for filer her som for det overordnede bibliotek


Einfache Module - Moduldefinition - Kopfzeilenbeitrag (Deutsch)
******************************************************

Der Ordner "head" enthält Dateien, die als Kopfbeitrag über das Ressourcenaggregatorframework bereitgestellt werden. Solche Ressourcen werden im Kopfzeilentag der Markup angezeigt, die dem Browser bereitgestellt wird.

Der folgende Abschnitt enthält eine vollständige Liste unterstützter Dateien im Abschnitt "head"

/head                                    -- Dateien, die in diesem Verzeichnis gespeichert sind, werden im Abschnitt "head" bereitgestellt
  *.js                                   -- Javascript-Ressourcen, die in alphabetischer Reihenfolge bereitgestellt werden. Diese sind nach Dateinamen gruppiert und solange sie denselben Namen aufweisen, gehören sie zur gleichen Gruppe.
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

  *.css                                  -- CSS-Ressourcen, die in alphabetischer Reihenfolge bereitgestellt werden. Diese sind nach Dateinamen gruppiert und solange sie denselben Namen aufweisen, gehören sie zur gleichen Gruppe.
                                            Innerhalb einer Gruppe gibt es die folgenden Erweiterungsvarianten:
    *.css                                -- Definiert den komprimierten CSS-Hauptinhalt
    *.css.uncompressed.css               -- Definiert den CSS-Hauptinhalt für die Fehlerbehebung
    *.rtl.css                            -- Definiert den komprimierten CSS-Code, der für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.rtl.css.uncompressed.css           -- Definiert den CSS-Code für die Fehlerbehebung, der für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.<Ländereinstellung>.css                       -- Definiert den komprimierten CSS-Inhalt für eine bestimmte Sprache
    *.<Ländereinstellung>.css.uncompressed.css      -- Definiert den CSS-Fehlerbehebungsinhalt für eine bestimmte Sprache
  Im folgenden Abschnitt ist eine Alternative definiert. Sie können immer nur eine dieser Varianten verwenden.
    *.min.css                            -- Definiert den komprimierten CSS-Hauptinhalt
    *.css                                -- Definiert den CSS-Hauptinhalt für die Fehlerbehebung
    *.rtl.min.css                        -- Definiert den komprimierten CSS-Code, der für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.rtl.css                            -- Definiert den CSS-Code für die Fehlerbehebung, der für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.<Ländereinstellung>.min.css                   -- Definiert den komprimierten CSS-Inhalt für eine bestimmte Sprache
    *.<Ländereinstellung>.css                       -- Definiert den CSS-Fehlerbehebungsinhalt für eine bestimmte Sprache

  *.html                                 -- HTML-Ressourcen, die in alphabetischer Reihenfolge bereitgestellt werden. Diese sind nach Dateinamen gruppiert und solange sie denselben Namen aufweisen, gehören sie zur gleichen Gruppe.
                                            Innerhalb einer Gruppe gibt es die folgenden Erweiterungsvarianten:
    *.html                               -- Definiert den HTML-Hauptinhalt
    *.rtl.html                           -- Definiert den HTML-Code, der für Sprachen mit Schreibweise von rechts nach links verwendet wird
    *.<Ländereinstellung>.html                      -- Definiert den HTML-Inhalt für eine bestimmte Sprache

  /<device-class>                        -- (optional) Ermöglicht die Definition eines Bereichs für Ressourcen nach Einheitenklasse (nur eine einzelne Einheitenklasse, ohne Unterstützung von Gleichungen)
    Für die Dateien hier gilt dieselbe Regel wie für Dateien im übergeordneten Verzeichnis


Απλές λειτουργικές μονάδες - Ορισμός λειτουργικής μονάδας - Συνεισφορά Head (Ελληνικά)
***************************************************************************

Ο φάκελος 'head' περιέχει αρχεία που παρέχονται ως συνεισφορά head μέσω του πλαισίου συγκρότησης
πόρων (resource aggregator framework). Αυτοί οι πόροι εμφανίζονται στο προσδιοριστικό head του κώδικα
μορφοποίησης που παρέχεται στο πρόγραμμα πλοήγησης.

Η ακόλουθη ενότητα περιέχει μια πλήρη λίστα των υποστηριζόμενων αρχείων στην ενότητα head.

/head                                    -- Τα αρχεία σε αυτό τον κατάλογο παρέχονται στην ενότητα head.
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

  *.css                                  -- Πόροι CSS που παρέχονται σε αλφαβητική σειρά. Ομαδοποιούνται κατά
                                            όνομα αρχείου και, αν έχουν το ίδιο όνομα αρχείου, ανήκουν στην ίδια ομάδα.
                                            Σε μια ομάδα υπάρχουν οι ακόλουθες παραλλαγές προεκτάσεων:
    *.css                                -- Ορίζει το κύριο συμπιεσμένο περιεχόμενο CSS
    *.css.uncompressed.css               -- Ορίζει το κύριο περιεχόμενο εντοπισμού σφαλμάτων CSS
    *.rtl.css                            -- Ορίζει το συμπιεσμένο CSS που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.rtl.css.uncompressed.css           -- Ορίζει το CSS εντοπισμού σφαλμάτων που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.css                       -- Ορίζει το συμπιεσμένο περιεχόμενο CSS για μια συγκεκριμένη γλώσσα
    *.<locale>.css.uncompressed.css      -- Ορίζει το περιεχόμενο CSS εντοπισμού σφαλμάτων για μια συγκεκριμένη γλώσσα
  Η ακόλουθη ενότητα ορίζει μια εναλλακτική παραλλαγή. Μπορείτε να χρησιμοποιήσετε οποιαδήποτε από τις δύο παραλλαγές, αλλά όχι ένα συνδυασμό τους.
    *.min.css                            -- Ορίζει το κύριο συμπιεσμένο περιεχόμενο CSS
    *.css                                -- Ορίζει το κύριο περιεχόμενο εντοπισμού σφαλμάτων CSS
    *.rtl.min.css                        -- Ορίζει τη συμπιεσμένη CSS που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.rtl.css                            -- Ορίζει τη CSS εντοπισμού σφαλμάτων που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.min.css                   -- Ορίζει το συμπιεσμένο περιεχόμενο CSS για μια συγκεκριμένη γλώσσα
    *.<locale>.css                       -- Ορίζει το περιεχόμενο CSS εντοπισμού σφαλμάτων για μια συγκεκριμένη γλώσσα

 *.html                                 -- Πόροι HTML που παρέχονται σε αλφαβητική σειρά. Ομαδοποιούνται κατά
                                            όνομα αρχείου και, αν έχουν το ίδιο όνομα αρχείου, ανήκουν στην ίδια ομάδα.
                                            Σε μια ομάδα υπάρχουν οι ακόλουθες παραλλαγές προεκτάσεων:
    *.html                               -- Ορίζει το κύριο περιεχόμενο HTML
    *.rtl.html                           -- Ορίζει το περιεχόμενο HTML που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.html                      -- Ορίζει το περιεχόμενο HTML για μια συγκεκριμένη γλώσσα

  /<device-class>                        -- (προαιρετικά) επιτρέπει τον ορισμό εμβελειών πόρων με βάση την κλάση συσκευών (μόνο μεμονωμένες κλάσεις συσκευών, δεν υποστηρίζονται συνδυασμοί)
    Ισχύουν οι ίδιοι κανόνες σχετικά με τα αρχεία που ισχύουν και για το γονικό κατάλογο.


Módulos simples - Definición de módulo - Contribución de cabecera
*****************************************************************

La carpeta 'head' contiene archivos que se ofrecen como contribución de cabecera en la infraestructura del agregador de recursos. Entre recursos aparecen en el código head de la marcación que se proporciona al navegador. 

La siguiente sección proporciona una lista completa de los archivos soportados dentro de la sección de cabecera

/head                                    -- Los archivos guardados en este directorio se ofrecen en la sección de cabecera
  *.js                                   -- Recursos javascript que se proporcionan en orden alfabético. Están agrupados por
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

  *.css                                  -- Recursos CSS que se ofrecen en orden alfabético. Están agrupados por
                                            nombre de archivos y, si tienen el mismo nombre, pertenecen al mismo grupo.
                                            Dentro de un grupo existen las siguiente variaciones de extensión:
    *.css                                 -- Define el contenido principal comprimido de CSS
    *.css.uncompressed.css                -- Define el contenido principal de CSS de depuración
    *.rtl.css                             -- Define el CSS comprimido que se utilizará para idiomas que se leen de derecha a izquierda
    *.rtl.css.uncompressed.css            -- Define el CSS de depuración que se utilizará para idiomas que se leen de derecha a izquierda
    *.<locale>.css                        -- Define el contenido CSS comprimido correspondiente a un determinado idioma
    *.<locale>.css.uncompressed.css       -- Define el contenido CSS de depuración correspondiente a un determinado idioma
  En la sección siguiente se define una alternativa. Puede utilizar cualquiera de estas variaciones, pero no puede combinarlas.
    *.min.css                             -- Define el contenido principal comprimido de CSS
    *.css                                 -- Define el contenido principal de CSS de depuración
    *.rtl.min.css                         -- Define el CSS comprimido que se utilizará para idiomas que se leen de derecha a izquierda
    *.rtl.css                             -- Define el CSS de depuración que se utilizará para idiomas que se leen de derecha a izquierda
    *.<locale>.min.css                    -- Define el contenido CSS comprimido correspondiente a un determinado idioma
    *.<locale>.css                        -- Define el contenido CSS de depuración correspondiente a un determinado idioma
   *.html                                 -- Recursos HTML que se proporcionan en orden alfabético. Están agrupados por
                                            nombre de archivos y, si tienen el mismo nombre, pertenecen al mismo grupo.
                                            Dentro de un grupo existen las siguiente variaciones de extensión:
    *.html                               -- Define el contenido principal de HTML
    *.rtl.html                           -- Define el HTML que se utilizará para idiomas que se leen de derecha a izquierda
    *.<locale>.html                      -- Define el contenido HTML correspondiente a un determinado idioma

  /<device-class>                        -- (opcional) le permite agrupar recursos por clase de dispositivo (solo una clase de dispositivo, sin soporte para ecuaciones)
    La misma regla de archivos se aplica al directorio padre


Yksinkertaiset moduulit - Moduulin määritys - Otsikon lisäys
******************************************************

Head-otsikkokansio sisältää tiedostot, jotka tulevat resurssikoostimesta ja
jotka sisältävät otsikko-osan määritykset. Nämä resurssit näkyvät selaimessa merkinnän head-tunnisteessa.

Alla on luettelo otsikko-osassa tuetuista tiedostoista

/head                                    -- tähän hakemistoon tallennetut tiedostot tulevat otsikko-osasta
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

  *.css                                  -- CSS-resurssit aakkosjärjestyksessä. Ne on ryhmitelty
                                            tiedostonimen mukaan. Samannimiset tiedostot kuuluvat samaan ryhmään.
                                            Ryhmän sisällä käytetään seuraavia muunnelmia:
    *.css                                -- määrittää tiivistetyn CSS-pääsisällön
    *.css.uncompressed.css               -- määrittää vianmäärityksen CSS-sisällön
    *.rtl.css                            -- määrittää tiivistetyn CSS-sisällön oikealta vasemmalle eteneville kielille
    *.rtl.css.uncompressed.css           -- määrittää vianmäärityksen CSS-sisällön oikealta vasemmalle eteneville kielille
    *.<locale>.css                       -- määrittää tiivistetyn CSS-sisällön tietylle kielelle
    *.<locale>.css.uncompressed.css      -- määrittää vianmäärityksen CSS-sisällön tietylle kielelle
  Seuraava osa määrittää vaihtoehdon. Voit käyttää näitä muunnelmia, mutta et yhdistää niitä.
    *.min.css                            -- määrittää tiivistetyn CSS-pääsisällön
    *.css                                -- määrittää vianmäärityksen CSS-pääsisällön
    *.rtl.min.css                        -- määrittää tiivistetyn CSS-sisällön oikealta vasemmalle eteneville kielille
    *.rtl.css                            -- määrittää vianmäärityksen CSS-sisällön oikealta vasemmalle eteneville kielille
    *.<locale>.min.css                   -- määrittää tiivistetyn CSS-sisällön tietylle kielelle
    *.<locale>.css                       -- määrittää vianmäärityksen CSS-sisällön tietylle kielelle

  *.html                                 -- HTML-resurssit aakkosjärjestyksessä. Ne on ryhmitelty
                                            tiedostonimen mukaan. Samannimiset tiedostot kuuluvat samaan ryhmään.
                                            Ryhmän sisällä käytetään seuraavia muunnelmia:
    *.html                               -- määrittää HTML-pääsisällön
    *.rtl.html                           -- määrittää HTML-sisällön oikealta vasemmalle eteneville kielille
    *.<locale>.html                      -- määrittää HTML-sisällön tietylle kielelle

  /<device-class>                        -- (valinnainen) sallii resurssien rajaamisen laiteluokan mukaan (vain yksi laiteluokka, ei tue
kaavoja)
    Tiedostoja koskee tässä sama sääntö kuin päähakemiston tiedostoja


Modules simples - Définition de module - Contribution Head
******************************************************

Le dossier 'head' contient les fichiers qui sont traités en tant que contribution head via le framework du regroupeur de ressources. Ces ressources apparaissent dans la balise head du marquage traité par le navigateur.

La section suivante fournit une liste exhaustive de fichiers pris en charge dans la section head

/head                                    -- Les fichiers stockés dans ce répertoire sont traités dans la section head
  *.js                                   -- Ressources Javascript traitées par ordre alphabétique. Elles sont regroupées
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

  *.css                                  -- Ressources CSS traitées dans l'ordre alphabétique. Elles sont regroupées
                                                  par nom de fichier et si elles ont le même nom, elles appartiennent au même groupe.
                                            Dans un groupe, les variations d'extension suivantes existent :
          *.css                                -- Définit le contenu CSS compressé principal
          *.css.uncompressed.css               -- Définit le contenu CSS de débogage principal
          *.rtl.css                            -- Définit le contenu CSS compressé à utiliser pour les langues de droite à gauche
          *.rtl.css.uncompressed.css           -- Définit le contenu CSS de débogage à utiliser pour les langues de droite à gauche
          *.<code_langue>.css                  -- Définit le contenu CSS compressé pour une langue spécifique
          *.<code_langue>.css.uncompressed.css -- Définit le contenu CSS de débogage pour une langue spécifique
        La section suivante définit une alternative. Vous pouvez utiliser l'une ou l'autre de ces variations, mais vous ne pouvez pas les utiliser ensemble.
    *.min.css                            -- Définit le contenu CSS compressé principal
          *.css                                -- Définit le contenu CSS de débogage principal
          *.rtl.min.css                        -- Définit le contenu CSS compressé à utiliser pour les langues de droite à gauche
          *.rtl.css                            -- Définit le contenu CSS de débogage à utiliser pour les langues de droite à gauche
          *.<code_langue>.min.css              -- Définit le contenu CSS compressé pour une langue spécifique
          *.<code_langue>.css                  -- Définit le contenu CSS de débogage pour une langue spécifique
    
  *.html                              -- Ressources HTML traitées dans l'ordre alphabétique. Elles sont regroupées
                                                  par nom de fichier et si elles ont le même nom, elles appartiennent au même groupe.
                                            Dans un groupe, les variations d'extension suivantes existent :
          *.html                               -- Définit le contenu HTML principal
          *.rtl.html                           -- Définit le contenu HTML à utiliser pour les langues de droite à gauche
          *.<code_langue>.html                 -- Définit le contenu HTML pour une langue spécifique

  /<classe-appareil>                     -- (facultatif) permet de regrouper des ressources par classe d'appareil (une seule classe d'appareil, pas de support d'équation)
           La règle des fichiers s'applique ici pour le répertoire parent


Jednostavni moduli - definicija modula - doprinos zaglavlja (hrvatski)
******************************************************

Folder 'head' sadrži datoteke koje se dostavljaju kao doprinos zaglavlja kroz
framework skupljača resursa. Ti resursi se pojavljuju u oznaci zaglavlja markupa dostavljenog pretražitelju.

Sljedeći odjeljak sadrži cjelovitu listu podržanih datoteka unutar odjeljka head 

/head                                    -- Datoteke pohranjene u ovom direktoriju dostavljat će se u odjeljku zaglavlja
  *.js                                   -- Javascript navedeni u abecednom redoslijedu. Grupirani su po nazivu
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

  *.css                                  -- CSS resursi navedeni u abecednom redoslijedu. Grupirani su po nazivu
                                            datoteke i ako imaju isti naziv, pripadaju istoj grupi.
                                            Unutar grupe postoje sljedeće varijante ekstenzija:
    *.css                                -- Definira glavni komprimirani CSS sadržaj
    *.css.uncompressed.css               -- Definira glavni debug CSS sadržaj
    *.rtl.css                            -- Definira komprimirani CSS koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.rtl.css.uncompressed.css           -- Definira debug CSS koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.<locale>.css                       -- Definira komprimirani CSS sadržaj za određeni jezik
    *.<locale>.css.uncompressed.css      -- Definira debug CSS sadržaj za određeni jezik
  Sljedeći odjeljak definira alternativni način. Možete koristiti bilo koju od tih varijanti, ali ne u kombinaciji.
    *.min.css                            -- Definira glavni komprimirani CSS sadržaj
    *.css                                -- Definira glavni debug CSS sadržaj
    *.rtl.min.css                        -- Definira komprimirani CSS koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.rtl.css                            -- Definira debug CSS koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.<locale>.min.css                   -- Definira komprimirani CSS sadržaj za određeni jezik
    *.<locale>.css                       -- Definira debug CSS sadržaj za određeni jezik

  *.html                                 -- HTML resursi navedeni u abecednom redoslijedu. Grupirani su po nazivu
                                            datoteke i ako imaju isti naziv, pripadaju istoj grupi.
                                            Unutar grupe postoje sljedeće varijante ekstenzija:
    *.html                               -- Definira glavni HTML sadržaj
    *.rtl.html                           -- Definira HTML koji će se koristiti za jezike koji se čitaju zdesna nalijevo
    *.<locale>.html                      -- Definira HTML sadržaj za određeni jezik

  /<device-class>                        -- (opcijski) omogućuje postavljanje opsega resursa po klasi uređaja (samo pojedinačne klase uređaja, nema podrške za jednadžbe)
    Ovdje se primjenjuju ista pravila kao i za nadređeni direktorij.


Egyszerű modulok - Modulmeghatározás - Head hozzájárulás (magyar)
******************************************************

A 'head' mappa tartalmazza azokat a fájlokat, amelyek head
hozzájárulásként szolgálnak az erőforrásösszesítő keretrendszerben. Ezek
az erőforrások a böngésző számára szolgáltatott kód head címkéjében
szerepelnek. 

Az alábbi szakasz felsorolja, hogy milyen fájlok támogatottak a config
szakaszban. 

/head                                    -- Az ebben a könyvtárban tárolt fájlokat szolgáltatja a rendszer a head szakaszban
  *.js                                   -- A szolgáltatott Javascript erőforrások ábécérendben. Fájlnév alapján vannak csoportosítva, és az
azonos nevűek tartoznak egy-egy csoportba.
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

  *.css                                  -- A szolgáltatott CSS erőforrások ábécérendben. 
Fájlnév alapján vannak csoportosítva, és az azonos nevűek tartoznak
egy-egy csoportba.
                                            A csoporton belül az alábbi kiterjesztésváltozatok léteznek:
    *.css                                 -- A fő, tömörített CSS tartalmat határozza meg
    *.css.uncompressed.css                -- A fő, hibakeresési CSS tartalmat határozza meg
    *.rtl.css                             -- A jobbról balra írt nyelvekhez használni kívánt tömörített CSS tartalmat határozza meg
    *.rtl.css.uncompressed.css            -- A jobbról balra írt nyelvekhez használni kívánt hibakeresési CSS tartalmat határozza meg
    *.<területi beállítás>.css            -- Az adott nyelvhez használni kívánt tömörített CSS tartalmat határozza meg
    *.<területi beállítás>.css.uncompressed.css  -- Az adott nyelvhez használni kívánt hibakeresési CSS tartalmat határozza meg
  Az alábbi szakasz alternatívát határoz meg. Bármelyik variációt használhatja, de vegyesen nem.
    *.min.css                             -- A fő, tömörített CSS tartalmat határozza meg
    *.css                                 -- A fő, hibakeresési CSS tartalmat határozza meg
    *.rtl.min.css                         -- A jobbról balra írt nyelvekhez használni kívánt tömörített CSS tartalmat határozza meg
    *.rtl.css                             -- A jobbról balra írt nyelvekhez használni kívánt hibakeresési CSS tartalmat határozza meg
    *.<területi beállítás>.min.css        -- Az adott nyelvhez használni kívánt tömörített CSS tartalmat határozza meg
    *.<területi beállítás>.css            -- Az adott nyelvhez használni kívánt hibakeresési CSS tartalmat határozza meg
    *.html                                -- A szolgáltatott HTML erőforrások ábécérendben. Fájlnév alapján vannak csoportosítva, és az azonos nevűek tartoznak egy-egy csoportba.
                                             A csoporton belül az alábbi kiterjesztésváltozatok léteznek:
    *.html                                -- A fő HTML tartalmat határozza meg
    *.rtl.html                            -- A jobbról balra írt nyelvekhez használni kívánt HTML tartalmat határozza meg
    *.<területi beállítás>.html           -- Az adott nyelvhez használni kívánt tömörített CSS tartalmat határozza meg

  /<eszközosztály>                        -- (nem kötelező) lehetővé
teszi az erőforrások hatókörének megadását eszközosztály alapján (csak
egy eszközosztály adható meg, a kifejezések nem támogatottak)
    Itt ugyanazok a szabályok vonatkoznak a fájlokra, mit a szülő könyvtár
esetében. 


Moduli semplici - Definizione modulo - Contributo iniziale
******************************************************

La cartella 'head' contiene i file forniti come contributo iniziale attraverso il
framework aggregatore di risorse. Tali risorse vengono visualizzate nella tag head della markup presente nel browser.

La sezione seguente fornisce un elenco completo dei file supportati nella sezione head

/head                                    -- I file memorizzati in questa directory saranno forniti nella sezione head
  *.js                                   -- Le risorse Javascript fornite in ordine alfabetico. Sono raggruppate
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

  *.css                                  -- Le risorse CSS fornite in ordine alfabetico. Sono raggruppate
                                            per nome file e fino a quando hanno lo stesso nome appartengono allo stesso gruppo.
                                            In un gruppo esistono le seguenti variazioni di estensione:
    *.css                                -- Definisce il contenuto CSS compresso
    *.css.uncompressed.css               -- Definisce il contenuto CSS di debug principale
    *.rtl.css                            -- Definisce il CSS compresso da utilizzare per le lingue da destra a sinistra
    *.rtl.css.uncompressed.css           -- Definisce il CSS di debug da utilizzare per le lingue da destra a sinistra
    *.<locale>.css                       -- Definisce il contenuto CSS compresso per una lingua specifica
    *.<locale>.css.uncompressed.css      -- Definisce il contenuto CSS di debug per una lingua specifica
  La sezione seguente definisce un'alternativa. È possibile utilizzare una di quelle variazioni, ma non in modo misto.
    *.min.css                            -- Definisce il contenuto CSS compresso principale
    *.css                                -- Definisce il contenuto CSS di debug principale
    *.rtl.min.css                        -- Definisce il CSS compresso da utilizzare per le lingue da destra a sinistra
    *.rtl.css                            -- Definisce il CSS di debug da utilizzare per le lingue da destra a sinistra
    *.<locale>.min.css                   -- Definisce il contenuto CSS compresso per una lingua specifica
    *.<locale>.css                       -- Definisce il contenuto CSS di debug per una lingua specifica
    
  *.html                                 -- Risorse HTML fornite in ordine alfabetico. Sono raggruppate
                                            per nome file e fino a quando hanno lo stesso nome appartengono allo stesso gruppo.
                                            In un gruppo esistono le seguenti variazioni di estensione:
    *.html                               -- Definisce il contenuto HTML principale
    *.rtl.html                           -- Definisce l'HTML da utilizzare per le lingue da destra a sinistra
    *.<locale>.html                      -- Definisce il contenuto HTML per una lingua specifica

  /<device-class>                        -- (facoltativo) consente di eliminare le risorse per classe di dispositivo (solo una classe dispositivo singola, nessun supporto di equazione)
    Stessa regola per i file si applica qui come per la directory parent


Simple Modules - Module Definition - Head Contribution (English)
******************************************************

The 'head' folder contains files that are served up as head contribution through the
resource aggregator framework. Those resources appear in the head tag of the markup served up to the browser.

The following section provides a complete list of supported files within the head section

/head                                    -- Files stored in this directory will be served up in the head section
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

  *.css                                  -- CSS resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.css                                -- Defines the main compressed CSS content
    *.css.uncompressed.css               -- Defines the main debug CSS content
    *.rtl.css                            -- Defines the compressed CSS to be used for right-to-left languages
    *.rtl.css.uncompressed.css           -- Defines the debug CSS to be used for right-to-left languages
    *.<locale>.css                       -- Defines the compressed CSS content for a specific language
    *.<locale>.css.uncompressed.css      -- Defines the debug CSS content for a specific language
  The following section defines an alternative way. You can use either of those variations, but not in a mixed fashion.
    *.min.css                            -- Defines the main compressed CSS content
    *.css                                -- Defines the main debug CSS content
    *.rtl.min.css                        -- Defines the compressed CSS to be used for right-to-left languages
    *.rtl.css                            -- Defines the debug CSS to be used for right-to-left languages
    *.<locale>.min.css                   -- Defines the compressed CSS content for a specific language
    *.<locale>.css                       -- Defines the debug CSS content for a specific language
    
  *.html                                 -- HTML resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.html                               -- Defines the main HTML content
    *.rtl.html                           -- Defines the HTML to be used for right-to-left languages
    *.<locale>.html                      -- Defines the HTML content for a specific language

  /<device-class>                        -- (optional) allows to scope resources by device class (only one individual device class, no equation support)
    Same rule for files apply here as for the parent directory


単純モジュール - モジュール定義 - Head コントリビューション (日本語)
******************************************************

「head」フォルダーには、リソース統合機能フレームワークを通じて head コントリビューションとして使用されるファイルが
含まれています。これらのリソースは、マークアップの head タグとして現れてブラウザーに使用されます。

次のセクションでは、head セクション内でサポートされるファイルの完全なリストを示します

/head                                    -- このディレクトリーに保管されているファイルは、head セクションに使用されます
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

  *.css                                  -- アルファベット順で使用される CSS リソース。それらは、ファイル名別に
                                            グループ化されており、ファイル名が同じであれば同じグループに属します。
                                            各グループ内には、次の拡張子の種類が存在します。
    *.css                                -- メインの圧縮 CSS コンテンツを定義します
    *.css.uncompressed.css               -- メインのデバッグ CSS コンテンツを定義します
    *.rtl.css                            -- 右から左に記述する言語に使用される圧縮 CSS を定義します
    *.rtl.css.uncompressed.css           -- 右から左に記述する言語に使用されるデバッグ CSS を定義します
    *.<locale>.css                       -- 特定の言語の圧縮 CSS コンテンツを定義します
    *.<locale>.css.uncompressed.css      -- 特定の言語のデバッグ CSS コンテンツを定義します
  次のセクションでは、代替の方法を定義します。これらのいずれかの種類を使用することができますが、これらを混用することはできません。
    *.min.css                            -- メインの圧縮 CSS コンテンツを定義します
    *.css                                -- メインのデバッグ CSS コンテンツを定義します
    *.rtl.min.css                        -- 右から左に記述する言語に使用される圧縮 CSS を定義します
    *.rtl.css                            -- 右から左に記述する言語に使用されるデバッグ CSS を定義します
    *.<locale>.min.css                   -- 特定の言語の圧縮 CSS コンテンツを定義します
    *.<locale>.css                       -- 特定の言語のデバッグ CSS コンテンツを定義します

  *.html                                 -- アルファベット順に使用される HTML リソース。それらは、ファイル名別に
                                            グループ化されており、ファイル名が同じであれば同じグループに属します。
                                            各グループ内には、次の拡張子の種類が存在します。
    *.html                               -- メインの HTML コンテンツを定義します
    *.rtl.html                           -- 右から左に記述する言語に使用される HTML を定義します
    *.<locale>.html                      -- 特定の言語の HTML コンテンツを定義します

  /<device-class>                        -- (オプション) デバイス・クラスによるリソースのスコープ設定が可能です (1 つの個別デバイス・クラスのみ。式をサポートしない)
    ここでは、親ディレクトリーの場合と同じファイルに対するルールが適用されます


Қарапайым модульдер - Модуль анықтамасы - Тақырып үлесі (Ағылшын)
******************************************************

'тақырып' қалтасы ресурсты біріктіруші құрылымы арқылы тақырып үлесі ретінде қызмет еткен файлдарды қамтиды. Түзетулердің тақырып тегінде пайда болатын ресурстар шолғышқа қызмет етеді.

Келесі бөлім тақырып бөлімі ішінде қолдауға ие болған файлдардың толық тізімін қамтамасыз етеді

/head                                    -- Осы каталогта сақталған файлдар тақырып бөлімінде қызмет етеді
  *.js                                   -- Javascript ресурстары әліпбилік ретте қызмет етеді. Олар файл атауы бойынша топтасып және бірдей атты иеленгендіктен бір топқа жатады.
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

  *.css                                  -- CSS ресурстары әліпбилік ретте қызмет етеді. Олар файл атауы бойынша топтасып және бірдей атты иеленгендіктен бір топқа жатады.
                                            Топ ішінде келесі кеңейтім түрлері бар:
    *.css                                -- Негізгі қысылған CSS мазмұнын анықтайды
    *.css.uncompressed.css               -- Негізгі жөндеу CSS мазмұнын анықтайды Негізгі жөндеу CSS мазмұнын анықтайды
    *.rtl.css                            -- Қысылған CSS файлын оңнан солға жазылатын тілдерде қолданылуы үшін анықтайды
    *.rtl.css.uncompressed.css           -- Жөндеу CSS файлын оңнан солға жазылатын тілдер үшін қолданылуы үшін анықтайды
    *.<locale>.css                       -- Қысылған CSS мазмұнын арнайы тіл үшін анықтайды
    *.<locale>.css.uncompressed.css      -- Жөндеу CSS мазмұнын арнайы тіл үшін анықтайды
  Келесі бөлім баламаны анықтайды. Сол нұсқаларды қолдана аласыз, бірақ араластырып қолдануға болмайды.
    *.min.css                            -- Негізгі қысылған CSS мазмұнын анықтайды
    *.css                                -- Негізгі жөндеу CSS мазмұнын анықтайды
    *.rtl.min.css                        -- Қысылған CSS файлын оңнан солға жазылатын тілдер үшін қолданылуы үшін анықтайды
    *.rtl.css                            -- Жөндеу CSS файлын оңнан солға жазылатын тілдер үшін қолданылуы үшін анықтайды
    *.<locale>.min.css                   -- Қысылған CSS мазмұнын арнайы тіл үшін анықтайды
    *.<locale>.css                       -- Жөндеу CSS мазмұнын арнайы тіл үшін анықтайды

  *.html                                 -- HTML ресурстары әліпбилік ретте қызмет етеді. Олар файл атауы бойынша топтасып және бірдей атты иеленгендіктен бір топқа жатады.
                                            Топ ішінде келесі кеңейтім түрлері бар:
    *.html                               -- Негізгі HTML мазмұнын анықтайды
    *.rtl.html                           -- HTML элементінің оңнан солға жазылатын тілдерде қолданылуы үшін анықтайды
    *.<locale>.html                      -- HTML мазмұнын арнайы тіл үшін анықтайды

  /<device-class>                        -- (міндетті емес) ресурстарды құрал классы арқылы ауқымдау үшін рұқсат береді(тек бір жеке құрал классы, өрнек қолдауы жоқ)
    Файлдар үшін осындай ережелер бастапқы каталог үшін ретінде қабылданады


단순 모듈 - 모듈 정의 - 헤드 기고
******************************************************

'head' 폴더에 자원 수집자 프레임워크를 통해 헤드 기고로 제공되는
파일이 포함되어 있습니다. 해당 자원은 브라우저에 제공되는 마크업의 헤드 태그에 표시됩니다.

다음 섹션에서는 헤드 섹션 내의 지원되는 전체 파일 목록을 제공합니다.

/head                                    -- 이 디렉토리에 저장된 파일이 이 헤드 섹션에 제공됩니다.
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

  *.css                                  -- CSS 자원이 알파벳순으로 제공됩니다. 이 자원은 파일 이름별로
                                            그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
                                            그룹 내에 다음 확장자 변형이 있습니다.
    *.css                                -- 기본 압축 CSS 컨텐츠 정의
    *.css.uncompressed.css               -- 기본 디버그 CSS 컨텐츠 정의
    *.rtl.css                            -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 압축 CSS 정의
    *.rtl.css.uncompressed.css           -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 디버그 CSS 정의
    *.<locale>.css                       -- 특정 언어의 압축 CSS 컨텐츠 정의
    *.<locale>.css.uncompressed.css      -- 특정 언어의 디버그 CSS 컨텐츠 정의
  다음 섹션에서는 대안을 정의합니다. 혼합 방식이 아니라 다음 확장자 변형 중에서 사용할 수 있습니다.
    *.min.css                            -- 기본 압축 CSS 컨텐츠 정의
    *.css                                -- 기본 디버그 CSS 컨텐츠 정의
    *.rtl.min.css                        -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 압축 CSS 정의
    *.rtl.css                            -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 디버그 CSS 정의
    *.<locale>.min.css                   -- 특정 언어의 압축 CSS 컨텐츠 정의
    *.<locale>.css                       -- 특정 언어의 디버그 CSS 컨텐츠 정의

  *.html                                 -- HTML 자원이 알파벳순으로 제공됩니다. 이 자원은 파일 이름별로
                                            그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
                                            그룹 내에 다음 확장자 변형이 있습니다.
    *.html                               -- 기본 HTML 컨텐츠 정의
    *.rtl.html                           -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 HTML 정의
    *.<locale>.html                      -- 특정 언어의 HTML 컨텐츠 정의

  /<device-class>                        -- (선택사항) 디바이스 클래스로 자원의 범위를 지정할 수 있음(하나의 개별 디바이스 클래스, 등식 지원 없음)
    상위 디렉토리에서는 파일의 동일한 규칙이 여기에 적용됨


Eenvoudige modules - Moduledefinitie - Aanlevering voor kop
***********************************************************

De map 'head' bevat bestanden die kunnen worden gebruikt als aanlevering voor de kop, via het framework van de
resourceaggregator. Deze resources worden afgebeeld in de hoofdtag van de markup die wordt aangeboden voor de browser.

In de onderstaande sectie vindt een volledige lijst van de ondersteunde bestanden binnen de sectie head

/head                                    -- De bestanden in deze directory worden aangeboden voor de sectie head
  *.js                                   -- Javascript-resources worden in alfabetische volgorde aangeboden. Deze zijn
                                            gegroepeerd op bestandsnaam en zolang zij maar dezelfde naam hebben behoren ze tot                                                       dezelfde groep.
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

  *.css                                  -- CSS-resources die in alfabetische volgorde worden aangeboden. Deze zijn
                                            gegroepeerd op bestandsnaam en zolang zij maar dezelfde naam hebben behoren ze tot                                                       dezelfde groep.
                                            Binnen een groep zijn de volgende extensievarianten beschikbaar:
    *.css                                -- Definitie van de hoofdcontent van de gecomprimeerde CSS
    *.css.uncompressed.css               -- Definitie van de hoofdcontent van CSS voor foutopsporing
    *.rtl.css                            -- Definitie van de gecomprimeerde CSS voor 'rechts-naar-links'-talen
    *.rtl.css.uncompressed.css           -- Definitie van de CSS voor foutopsporing voor 'rechts-naar-links'-talen
    *.<locale>.css                       -- Definitie van de gecomprimeerde CSS-content voor een bepaalde taal
    *.<locale>.css.uncompressed.css      -- Definitie van de CSS-content voor foutopsporing voor een bepaalde taal
  In de volgende sectie wordt een alternatief manier gedefinieerd. U kunt beide varianten gebruiken, maar niet in een gemengde vorm.
    *.min.css                            -- Definitie van de hoofdcontent van de gecomprimeerde CSS
    *.css                                -- Definitie van de hoofdcontent van CSS voor foutopsporing
    *.rtl.min.css                        -- Definitie van de gecomprimeerde CSS voor 'rechts-naar-links'-talen
    *.rtl.css                            -- Definitie van de CSS voor foutopsporing voor 'rechts-naar-links'-talen
    *.<locale>.min.css                   -- Definitie van de gecomprimeerde CSS-content voor een bepaalde taal
    *.<locale>.css                       -- Definitie van de CSS-content voor foutopsporing voor een bepaalde taal

  *.html                                 -- HTML-resources die in alfabetische volgorde worden aangeboden. Deze zijn
                                            gegroepeerd op bestandsnaam en zolang zij maar dezelfde naam hebben behoren ze tot                                                       dezelfde groep.
                                            Binnen een groep zijn de volgende extensievarianten beschikbaar:
    *.html                               -- Definitie van de hoofd-HTML-content
    *.rtl.html                           -- Definitie van de HTML om te gebruiken voor 'rechts-naar-links'-talen
    *.<locale>.html                      -- Definitie van de HTML-content voor een bepaalde taal

  /<device-class>                        -- (optioneel) hiermee kunnen resources worden ingedeeld per apparatuurcategorie (alleen één                                             afzonderlijke apparatuurcategorie, geen ondersteuning voor vergelijkingen)
    Voor bestanden geldt hier dezelfde regel als voor de bovenliggende directory


Enkle moduler - Moduldefinisjon - Head-bidrag (norsk)
*****************************************************

Mappen 'head' inneholder filer som leveres som head-bidrag gjennom
Resource Aggregator-rammeverket. Disse ressursene vises i head-koden i kodingen som leveres til nettleseren.

Nedenfor finner du en fullstendig liste over støttede filer i head-seksjonen

/head                                    -- Filer lagret i denne katalogen blir bidratt i head-seksjonen
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

  *.css                                  -- CSS-ressurser i alfabetisk rekkefølge. De er gruppert etter
                                            filnavn, og så lenge de har samme navn, tilhører de samme gruppe.
                                                  Innenfor en gruppe finnes følgende filtypevarianter:
          *.css                                -- Definerer komprimert CSS-hovedinnhold
          *.css.uncompressed.css               -- Definerer CSS-hovedinnhold for feilsøking
          *.rtl.css                            -- Definerer komprimert CSS som skal brukes for høyre-til-venstre-språk
          *.rtl.css.uncompressed.css           -- Definerer CSS for feilsøking som skal brukes for høyre-til-venstre-språk
          *.<locale>.css                       -- Definerer komprimert CSS-innhold for et bestemt språk
          *.<locale>.css.uncompressed.css      -- Definerer CSS-innhold for feilsøking for et bestemt språk
        Følgende seksjon definerer et alternativ. Du kan bruke hvilken variant du vil, men ikke blande dem.
          *.min.css                            -- Definerer komprimert CSS-hovedinnhold
          *.css                                -- Definerer CSS-hovedinnhold for feilsøking
          *.rtl.min.css                        -- Definerer komprimert CSS som skal brukes for høyre-til-venstre-språk
          *.rtl.css                            -- Definerer CSS for feilsøking som skal brukes for høyre-til-venstre-språk
          *.<locale>.min.css                   -- Definerer komprimert CSS-innhold for et bestemt språk
          *.<locale>.css                       -- Definerer CSS-innhold for feilsøking for et bestemt språk

  *.html                                 -- HTML-ressurser i alfabetisk rekkefølge. De er gruppert etter
                                            filnavn, og så lenge de har samme navn, tilhører de samme gruppe.
                                            Innenfor en gruppe finnes følgende filtypevarianter:
    *.html                               -- Definerer HTML-hovedinnhold
    *.rtl.html                           -- Definerer HTML som skal brukes for høyre-til-venstre-språk
    *.<locale>.html                      -- Definerer HTML-innhold for et bestemt språk

  /<device-class>                        -- (valgfritt) gjør det mulig å bestemme ressursområder etter enhetsklasse (bare en enkelt enhetsklasse, ikke støtte for ligninger)
    Samme regel for filer her som for den overordnede katalogen


Moduły proste - definicja modułu - element wnoszony head (polski)
******************************************************

Folder head zawiera pliki, które są udostępniane jako element wnoszony nagłówka
za pomocą środowiska agregatora zasobów. Zasoby te pojawiają się w znaczniku head języka znaczników
udostępnianego przeglądarce. 

Następująca sekcja zawiera pełną listę plików obsługiwanych w sekcji head. 

/head                                 -- Pliki zapisane w tym katalogu będą udostępniane w sekcji head.
*.js                                  -- Zasoby JavaScript udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do
tej samej grupy. W ramach grupy występują następujące wersje rozszerzenia:
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

 *.css                                -- Zasoby CSS udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy. W
ramach grupy występują następujące wersje rozszerzenia:
 *.css                                -- Definiuje główną treść skompresowaną CSS.
 *.css.uncompressed.css               -- Definiuje główną treść CSS debugowania.
 *.rtl.css                            -- Definiuje skompresowane arkusze CSS do użycia dla języków z zapisem od prawej do lewej.
 *.rtl.css.uncompressed.css           -- Definiuje arkusze CSS debugowania do użycia dla języków z zapisem od prawej do lewej.
 *.<ustawienia narodowe>.css          -- Definiuje skompresowaną treść CSS dla konkretnego języka.
 *.<ustawienia narodowe>.css.uncompressed.css      -- Definiuje treść CSS debugowania dla konkretnego języka.

Następująca sekcja definiuje alternatywne metody. Istnieje możliwość użycia dowolnej z tych wersji, lecz nie można ich mieszać.
 *.min.css                            -- Definiuje główną treść skompresowaną CSS.
 *.css                                -- Definiuje główną treść CSS debugowania.
 *.rtl.min.css                        -- Definiuje skompresowane arkusze CSS do użycia dla języków z zapisem od prawej do lewej.
 *.rtl.css                            -- Definiuje arkusze CSS debugowania do użycia dla języków z zapisem od prawej do lewej.
 *.<ustawienia narodowe>.min.css      -- Definiuje skompresowaną treść CSS dla konkretnego języka.
 *.<ustawienia narodowe>.css          -- Definiuje treść CSS debugowania dla konkretnego języka.

 *.html                               -- Zasoby HTML udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy. W
ramach grupy występują następujące wersje rozszerzenia:
 *.html                               -- Definiuje główną treść HTML.
 *.rtl.html                           -- Definiuje kod HTML do użycia dla języków z zapisem od prawej do lewej.
 *.<ustawienia narodowe>.html         -- Definiuje treść HTML dla konkretnego języka. 

/<klasa urządzeń>                     -- (opcjonalna) Umożliwia określenie dla
zasobu zasięgu będącego klasą urządzeń. (Tylko pojedyncza klasa urządzeń,
równania nie są obsługiwane). Tutaj dla plików ma zastosowanie ta sama reguła co dla katalogu macierzystego. 


Módulos simples - Definição de módulo - Contribuição Head (Português)
******************************************************

A pasta 'head' contém ficheiros que são apresentados como contribuição head através da
estrutura do agregador de recursos. Esses recursos aparecem no controlo head da marcação fornecida ao navegador.

A secção que se segue apresenta uma lista completa de ficheiros suportados na secção head

/head                                    -- Os ficheiros armazenados neste directório serão apresentados na secção head
  *.js                                   -- Recursos Javascript apresentados por ordem alfabética. Estão agrupados
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

  *.css                                  -- Recursos CSS apresentados por ordem alfabética. Estão agrupados
                                            por nome de ficheiro e, desde que tenham o mesmo nome, pertencem ao mesmo grupo.
                                            Dentro de um grupo, existem as seguintes variações de extensão:
    *.css                                -- Define o conteúdo CSS comprimido principal
    *.css.uncompressed.css               -- Define o conteúdo CSS de depuração principal
    *.rtl.css                            -- Define o CSS comprimido a utilizar para idiomas da direita para a esquerda
    *.rtl.css.uncompressed.css           -- Define o CSS de depuração a utilizar para idiomas da direita para a esquerda
    *.<locale>.css                       -- Define o conteúdo CSS comprimido para um idioma específico
    *.<locale>.css.uncompressed.css      -- Define o conteúdo CSS de depuração para um idioma específico
  A secção que se segue define uma forma alternativa. Pode utilizar qualquer uma destas variações, mas não de forma mista.
    *.min.css                            -- Define o conteúdo CSS comprimido principal
    *.css                                -- Define o conteúdo CSS de depuração principal
    *.rtl.min.css                        -- Define o CSS comprimido a utilizar para idiomas da direita para a esquerda
    *.rtl.css                            -- Define o CSS de depuração a utilizar para idiomas da direita para a esquerda
    *.<locale>.min.css                   -- Define o conteúdo CSS comprimido para um idioma específico
    *.<locale>.css                       -- Define o conteúdo CSS de depuração para um idioma específico

  *.html                                 -- Recursos HTML apresentados por ordem alfabética. Estão agrupados
                                            por nome de ficheiro e, desde que tenham o mesmo nome, pertencem ao mesmo grupo.
                                            Dentro de um grupo, existem as seguintes variações de extensão:
    *.html                               -- Define o conteúdo HTML principal
    *.rtl.html                           -- Define o HTML a utilizar para idiomas da direita para a esquerda
    *.<locale>.html                      -- Define o conteúdo HTML para um idioma específico

  /<device-class>                        -- (opcional) permite definir o âmbito de recursos por classe de dispositivo (apenas uma classe de dispositivo individual, sem suporte de equação)
    É aplicável aqui a mesma regra para ficheiros que para o directório ascendente


O Chefe Contribuição – Módulos Definição – Simple (Inglês) ******************************************************

A pasta 'cabeça' contém arquivos que são entregues como chefe de contribuição por meio da estrutura do agregador de recursos. Os recursos aparecem na tag cabeçalho da marcação servido até o navegador.

A seção a seguir fornece uma lista completa de arquivos suportados dentro da seção head

/head -- Os arquivos armazenados nesse diretório serão servidos na seção head *.js -- Javascript recursos atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                            Em um grupo as seguintes variações de extensão existe: *.js, Define a *.js.uncompressed.js conteúdo javascript compactado principais -- Define a *.rtl.js o conteúdo principal de depuração javascript -- Define o javascript compactado para ser utilizado para idiomas lidos da direita para *.rtl.js.uncompressed.js -- Define o javascript de depuração a ser utilizado para a esquerda idiomas *.<locale>.js -- Define o conteúdo javascript compactado para um idioma específico *.<locale>.js.uncompressed.js -- Define o conteúdo javascript de depuração para um idioma específico A seção a seguir define uma alternativa. Você pode utilizar uma dessas variações, mas não em um modo misto.
    *.min.js -- Define o conteúdo javascript principal compactado *.js -- Define a *.rtl.min.js o conteúdo principal de depuração javascript -- Define o javascript compactado para ser utilizado para idiomas lidos da direita para *.rtl.js -- Define o javascript de depuração a ser utilizado para a esquerda idiomas *.<locale>.min.js -- Define o conteúdo javascript compactado para um idioma específico *.<locale>.js -- Define o conteúdo javascript de depuração para um idioma específico

  *.css -- recursos CSS atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                            Em um grupo as seguintes variações de extensão existe: *.css -- Define a principal compactado CSS conteúdo *.css.uncompressed.css -- Define a *.rtl.css de conteúdo CSS principal de depuração -- Define a compactado para ser utilizado para os idiomas lidos da CSS *.rtl.css.uncompressed.css -- Define a depuração CSS a ser utilizado para a esquerda idiomas *.<locale>.css -- Define o conteúdo CSS compactado para um idioma específico *.<locale>.css.uncompressed.css -- Define o conteúdo CSS de depuração para um idioma específico A seção a seguir define uma maneira alternativa. Você pode utilizar uma dessas variações, mas não em um modo misto.
    *.min.css -- Define o conteúdo compactado CSS *.css principal -- Define a *.rtl.min.css de conteúdo CSS principal de depuração -- Define o CSS compactado para ser utilizado para *.rtl.css idiomas lidos da direita -- Define a depuração CSS a ser utilizado para a esquerda idiomas *.<locale>.min.css -- Define o conteúdo CSS compactado para um idioma específico *.<locale>.css -- Define o conteúdo CSS de depuração para um idioma específico
    
  *.html -- HTML recursos atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                            Em um grupo as seguintes variações de extensão existe: *.html, Define a *.rtl.html conteúdo HTML principal -- Define o HTML seja usada para idiomas lidos da direita *.<locale>.html -- Define o conteúdo HTML para um idioma específico

  /<device-class>                        -- (opcional) permite colocar em escopo  recursos por classe de dispositivo (somente uma classe de dispositivo individual, sem suporte de equação)
    A mesma regra para arquivos se aplica aqui como para o diretório-pai


Module simple - Definţie modul - Contribuţie head (Engleză)
******************************************************

Folderul 'head' conţien fişiere care sunt servite ca şi contribuţii head prin
cadrul de lucru agregator resursă. Aceste resurse apar în tagul head al marcajului servit browser-ului.

Secţiunea următoare furnizează o listă completă de fişiere suportate din secţiunea head

/head                                    -- Fişierele memorate în acest director vor fi servite în secţiunea head
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

  *.css                                   -- Resursele CSS servite în ordine alfabetică. Ele sunt grupate
                                            după numele fişierului şi atâta timp cât au acelaşi nume aparţin aceluiaşi grup.
                                            Într-un grup există variaţiile de extensie următoare:
    *.css                                -- Defineşte conţinutul CSS principal comprimat
    *.css.uncompressed.css               -- Defineşte conţinutul CSS principal depanare
    *.rtl.css                            -- Defineşte CSS-ul comprimat pentru a fi utilizat pentru limbile de la dreapta la stânga
    *.rtl.css.uncompressed.css           -- Defineşte CSS-ul depanare pentru a fi utilizat pentru limbile de la dreapta la stânga
    *.<locale>.css                       -- Defineşte conţinutul CSS comprimat pentru o limbă specifică
    *.<locale>.css.uncompressed.css      -- Defineşte conţinutul CSS depanare pentru o limbă specifică
  Această secţiune defineşte un mod alternativ. Puteţi utiliza oricare dintre aceste variaţii, dar nu în mod amestecat.
    *.min.css                             -- Defineşte conţinutul CSS principal comprimat
    *.css                                 -- Defineşte conţinutul CSS principal depanare
    *.rtl.min.css                         -- Defineşte CSS-ul comprimat pentru a fi utilizat pentru limbile de la dreapta la stânga
    *.rtl.css                             -- Defineşte CSS-ul depanare pentru a fi utilizat pentru limbile de la dreapta la stânga
    *.<locale>.min.css                    -- Defineşte conţinutul CSS comprimat pentru o limbă specifică
    *.<locale>.css                        -- Defineşte conţinutul CSS depanare pentru o limbă specifică

  *.html                                 -- Resurse HTML servite în ordine alfabetică. Ele sunt grupate
                                            după numele fişierului şi atâta timp cât au acelaşi nume aparţin aceluiaşi grup.
                                            Într-un grup există variaţiile extensie următoare:
    *.html                               -- Defineşte conţinutul HTML principal
    *.rtl.html                           -- Defineşte HTML-ul utilizat pentru limbile de la dreapta la stânga
    *.<locale>.html                      -- Defineşte conţinutul HTML pentru o limbă specifică

  /<device-class>                        -- (opţional) permite definirea domeniului resurselor de către clasa dispozitiv (doar o clasă dispozitiv individuală, niciun suport ecuaţie)
    Aceeaşi regulă se aplică aici pentru directorul părinte


Простые модули - Определение модуля - Дополнение заголовка
******************************************************

Папка 'head' содержит файлы, которые выполняют роль дополнения
заголовка в среде агрегатора ресурсов. Эти ресурсы расположены в
теге head текста на языке описания, предоставляемого браузеру. 

Ниже приведен полный список файлов, поддерживаемых в разделе head

      /head                                    -- Файлы из этого каталога обрабатываются в разделе head
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

  *.css                                 -- Предоставляемые ресурсы CSS в алфавитном порядке. Они
                                            группируются по имени файла. Ресурсы с одинаковыми именами
                                            принадлежат одной группе.
                                            В группе допустимы следующие расширения:
    *.css                                 -- Основное сжатое содержимое CSS
    *.css.uncompressed.css                 -- Основное содержимое CSS для отладки
    *.rtl.css                             -- Сжатое содержимое CSS для языков с направлением текста справа налево
    *.rtl.css.uncompressed.css             -- Сжатое содержимое CSS для языков с направлением текста слева направо
    *.<locale>.css                        -- Сжатое содержимое CSS для конкретных языков
    *.<locale>.css.uncompressed.css        -- Сжатое содержимое CSS для конкретного языка.
В следующем разделе описан альтернативный вариант. Можно использовать любые варианты, однако их не следует смешивать.
          *.min.css                             -- Основное сжатое содержимое CSS
          *.css                                 -- Основное содержимое CSS для отладки
          *.rtl.min.css                         -- Сжатое содержимое CSS для языков с направлением текста справа налево
          *.rtl.css                             -- Сжатое содержимое CSS для языков с направлением текста слева направо
          *.<локаль>.min.css                    -- Сжатое содержимое CSS для конкретных языков
          *.<локаль>.css                        -- Сжатое содержимое CSS для конкретного языка

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


Jednoduché moduly - definícia modulu - kontribúcia head (slovenčina)
******************************************************

Zložka 'head' obsahuje súbory, ktoré sa poskytujú ako kontribúcia head cez kostru agregátora prostriedkov. Tieto prostriedky sa zobrazia v značke head značky, ktorá sa poskytne prehliadaču. 

Nasledujúca sekcia uvádza úplný zoznam podporovaných súborov v sekcii head.

/head                                    - Súbory uložené v tomto adresári sa poskytnú v sekcii head.
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

  *.css                                  - Prostriedky CSS poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny. V skupine existujú tieto varianty prípony:
    *.css                                - Definuje hlavný komprimovaný obsah CSS
    *.css.uncompressed.css               - Definuje hlavný obsah ladenia CSS
    *.rtl.css                            - Definuje komprimovaný CSS na použitie v jazykoch so smerom sprava doľava
    *.rtl.css.uncompressed.css           - Definuje ladenie CSS na použitie v jazykoch so smerom sprava doľava
    *.<locale>.css                       - Definuje komprimovaný obsah CSS pre konkrétny jazyk
    *.<locale>.css.uncompressed.css      - Definuje obsah ladenia CSS pre špecifický jazyk
  Nasledujúce sekcie definujú alternatívny spôsob. Môžete použiť obe variácie, ale nemôžete ich kombinovať.
    *.min.css                            - Definuje hlavný komprimovaný obsah CSS
    *.css                                - Definuje hlavný obsah ladenia CSS
    *.rtl.min.css                        - Definuje komprimovaný CSS na použitie v jazykoch so smerom sprava doľava
    *.rtl.css                            - Definuje ladenie CSS na použitie v jazykoch so smerom sprava doľava
    *.<locale>.min.css                   - Definuje komprimovaný obsah CSS pre konkrétny jazyk
    *.<locale>.css                       - Definuje obsah ladenia CSS pre špecifický jazyk

  *.html                                 - Prostriedky HTML poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny. V skupine existujú tieto varianty prípony:
    *.html                               - Definuje hlavný obsah HTML
    *.rtl.html                           - Definuje HTML na použitie v jazykoch so smerom sprava doľava
    *.<locale>.html                      - Definuje obsah HTML pre špecifický jazyk

  /<device-class>                        - (voliteľné) Umožňuje nastaviť rozsah prostriedkov podľa triedy zariadenia (iba jedna individuálna trieda zariadenia, bez podpory rovníc)
    Platí tu rovnaké pravidlo pre súbory ako pre rodičovský adresár


Preprosti moduli – Definicija modulov – Prispevek Head (slovenščina)
******************************************************

Mapa 'head' vsebuje datoteke, ki so podane kot prispevek head prek ogrodja
združevalnika virov. Ti viri se pojavijo v oznaki head označb, ki jih od strežnika prejme brskalnik.

Naslednji razdelek ponuja celoten seznam podprtih datotek v okviru razdelka head

/head                                    -- Datoteke, shranjene v tem imeniku, bodo podane v razdelku head
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

  *.css                                  -- Viri CSS, podani v abecednem vrstnem redu. Združeni so v skupine
                                            po imenih datotek in vsi, ki imajo isto ime, spadajo v isto skupino.
                                            Znotraj skupine obstajajo naslednje različne pripone:
    *.css                                -- Definira glavno stisnjeno vsebino CSS
    *.css.uncompressed.css               -- Definira glavno razhroščevalno vsebino CSS
    *.rtl.css                            -- Definira stisnjeni CSS, namenjen za jezike, ki se pišejo od desne proti levi
    *.rtl.css.uncompressed.css           -- Definira razhroščevalni CSS, namenjen za jezike, ki se pišejo od desne proti levi
    *.<locale>.css                       -- Definira stisnjeno vsebino CSS za določen jezik
    *.<locale>.css.uncompressed.css      -- Definira razhroščevalni CSS za določen jezik
  Naslednji razdelek definira nadomestno možnost. Uporabljate lako katero koli od obeh možnosti, vendar jih ne smete združiti.
    *.min.css                            -- Definira glavno stisnjeno vsebino CSS
    *.css                                -- Definira glavno razhroščevalno vsebino CSS
    *.rtl.min.css                        -- Definira stisnjeni CSS, namenjen za jezike, ki se pišejo od desne proti levi
    *.rtl.css                            -- Definira razhroščevalni CSS, namenjen za jezike, ki se pišejo od desne proti levi
    *.<locale>.min.css                   -- Definira stisnjeno vsebino CSS za določen jezik
    *.<locale>.css                       -- Definira razhroščevalni CSS za določen jezik

  *.html                                 -- Viri HTML, podani v abecednem vrstnem redu. Združeni so v skupine
                                            po imenih datotek in vsi, ki imajo isto ime, spadajo v isto skupino.
                                            Definira vsebino HTML za določen jezik                                           Znotraj skupine obstajajo naslednje različne pripone:
    *.html                               -- Definira glavno vsebino HTML
    *.rtl.html                           -- Definira HTML za uporabo z jeziki, ki se pišejo od desne proti levi
    *.<locale>.html                      -- Definira vsebino HTML za določen jezik 

  /<device-class>                        -- (Izbirno) omogoča dodeljevanje dosega virom glede na razred naprave (le za en posamezen razred naprave, brez podpore enačb)
    Tukaj veljajo enaka pravila za datoteke kot v nadrejenem imeniku 


Enkla moduler - Moduldefinition - Head-bidrag (svenska)
******************************************************

Mappen head innehåller filer som tillhandahålls som head-bidrag via ramverket för resursaggregering. Resurserna visas i head-märkordet för den märkkod som tillhandahålls av webbläsaren.

I följande lista finns en fullständig lista över filer som hanteras i head-avsnittet.

/head                                    -- Filer som lagras i den här katalogen tillhandahålls i head-avsnittet
  *.js                                   -- JavaScript-resurser som tillhandahålls i bokstavsordning. De är grupperade
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

  *.css                                  -- CSS-resurser som tillhandahålls i bokstavsordning. De är grupperade
                                            efter filnamn och om de har samma namn tillhör de samma grupp.
                                            Inom en grupp finns det följande tilläggsvarianter:
    *.css                                -- Definierar det komprimerade CSS-huvudinnehållet
    *.css.uncompressed.css               -- Definierar CSS-huvudinnehållet för felsökning
    *.rtl.css                            -- Definierar den komprimerade CSS som används för höger-till-vänster-språk
    *.rtl.css.uncompressed.css           -- Definierar CSS för felsökning som används för höger-till-vänster-språk
    *.<locale>.css                       -- Definierar det komprimerade CSS-innehållet för ett visst språk
    *.<locale>.css.uncompressed.css      -- Definierar CSS-innehållet för felsökning för ett visst språk
  I följande avsnitt definieras ett alternativt sätt. Du kan använda vilken variant du vill, men inte blanda dem.
    *.min.css                            -- Definierar det komprimerade CSS-huvudinnehållet
    *.css                                -- Definierar CSS-huvudinnehållet för felsökning
    *.rtl.min.css                        -- Definierar det komprimerade CSS-innehåll som ska användas för höger-till-vänster-språk
    *.rtl.css                            -- Definierar CSS för felsökning som ska användas för höger-till-vänster-språk
    *.<locale>.min.css                   -- Definierar det komprimerade CSS-innehållet för ett visst språk
    *.<locale>.css                       -- Definierar CSS-innehållet för ett visst språk

  *.html                                 -- HTML-resurser som tillhandahålls i bokstavsordning. De är grupperade
                                            efter filnamn och om de har samma namn tillhör de samma grupp.
                                            Inom en grupp finns det följande tilläggsvarianter:
    *.html                               -- Definierar HTML-huvudinnehållet
    *.rtl.html                           -- Definierar HTML som ska användas för höger-till-vänster-språk
    *.<locale>.html                      -- Definierar HTML-innehållet för ett visst språk

  /<device-class>                        -- (valfritt) tillåter att resursomfattningar bestäms av enhetsklassen (endast en enskild enhetsklass utan ekvationsstöd)
    Samma regel tillämpas på regler här som för den överordnade katalogen


Simple Modules - Module Definition - Head Contribution (English)
******************************************************

The 'head' folder contains files that are served up as head contribution through the
resource aggregator framework. Those resources appear in the head tag of the markup served up to the browser.

The following section provides a complete list of supported files within the head section

/head                                    -- Files stored in this directory will be served up in the head section
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

  *.css                                  -- CSS resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.css                                -- Defines the main compressed CSS content
    *.css.uncompressed.css               -- Defines the main debug CSS content
    *.rtl.css                            -- Defines the compressed CSS to be used for right-to-left languages
    *.rtl.css.uncompressed.css           -- Defines the debug CSS to be used for right-to-left languages
    *.<locale>.css                       -- Defines the compressed CSS content for a specific language
    *.<locale>.css.uncompressed.css      -- Defines the debug CSS content for a specific language
  The following section defines an alternative way. You can use either of those variations, but not in a mixed fashion.
    *.min.css                            -- Defines the main compressed CSS content
    *.css                                -- Defines the main debug CSS content
    *.rtl.min.css                        -- Defines the compressed CSS to be used for right-to-left languages
    *.rtl.css                            -- Defines the debug CSS to be used for right-to-left languages
    *.<locale>.min.css                   -- Defines the compressed CSS content for a specific language
    *.<locale>.css                       -- Defines the debug CSS content for a specific language
    
  *.html                                 -- HTML resources served up in alphabetical order. They are grouped
                                            by filename and as long as they have the same name they belong to the same group.
                                            Within a group the following extension variations exists:
    *.html                               -- Defines the main HTML content
    *.rtl.html                           -- Defines the HTML to be used for right-to-left languages
    *.<locale>.html                      -- Defines the HTML content for a specific language

  /<device-class>                        -- (optional) allows to scope resources by device class (only one individual device class, no equation support)
    Same rule for files apply here as for the parent directory


Yalın Modüller - Modül Tanımlaması - Head Katkısı (Türkçe)
**********************************************************

'head' klasörü, kaynak toplayıcı çerçevesi aracılığıyla head katkısı olarak
sunulan dosyaları içerir. Bu kaynaklar, tarayıcıya sunulan biçimleme dilinin head etiketinde görünür. 

Aşağıda, head kısmındaki desteklenen dosyaların tam bir listesi verilmiştir:

/head                                    -- Bu dizinde saklanan dosyalar, kaynak toplayıcının head kısmında sunulur.
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

  *.css                                  -- Alfabetik sırayla sunulan CSS kaynakları. Bunlar dosya adına
                                            göre gruplanır ve adları aynı olduğu sürece aynı gruba ait olur.
                                            Bir grup içinde aşağıdaki uzantı çeşitlemeleri vardır:
    *.css                                -- Sıkıştırılmış ana CSS içeriğini tanımlar
    *.css.uncompressed.css               -- Ana hata ayıklama CSS içeriğini tanımlar
    *.rtl.css                            -- Sağdan sola dillerde kullanılacak sıkıştırılmış CSS'yi tanımlar
    *.rtl.css.uncompressed.css           -- Sağdan sola dillerde kullanılacak hata ayıklama CSS'yi tanımlar
    *.<ülke-değeri>.css                  -- Belirli bir dile ilişkin sıkıştırılmış CSS içeriğini tanımlar
    *.<ülke-değeri>.css.uncompressed.css -- Belirli bir dile ilişkin hata ayıklama CSS içeriğini tanımlar
  Aşağıdaki kısımda bir alternatif tanımlanır. Bu çeşitlemelerden herhangi birini kullanabilirsiniz, ancak bunları karma olarak kullanamazsınız.
    *.min.css                            -- Sıkıştırılmış ana CSS içeriğini tanımlar
    *.css                                -- Ana hata ayıklama CSS içeriğini tanımlar
    *.rtl.min.css                        -- Sağdan sola dillerde kullanılacak sıkıştırılmış CSS'yi tanımlar
    *.rtl.css                            -- Sağdan sola dillerde kullanılacak hata ayıklama CSS'yi tanımlar
    *.<ülke-değeri>.min.css              -- Belirli bir dile ilişkin sıkıştırılmış CSS içeriğini tanımlar
    *.<ülke-değeri>.css                  -- Belirli bir dile ilişkin hata ayıklama CSS içeriğini tanımlar

  *.html                                 -- Alfabetik sırayla sunulan HTML kaynakları. Bunlar dosya adına
                                            göre gruplanır ve adları aynı olduğu sürece aynı gruba ait olur.
                                            Bir grup içinde aşağıdaki uzantı çeşitlemeleri vardır:
    *.html                               -- Ana HTML içeriğini tanımlar
    *.rtl.html                           -- Sağdan sola dillerde kullanılacak HTML'i tanımlar
    *.<ülke-değeri>.html                 -- Belirli bir dile ilişkin HTML içeriğini tanımlar

  /<aygıt-sınıfı>                        -- (İsteğe Bağlı) Kaynakların aygıt sınıfı kapsamında olmasını sağlar (tek bir aygıt sınıfı, eşitlik desteği yok)
    Burada, üst dizin için geçerli olan kural, dosyalar için de geçerlidir.


Прості модулі - Визначення модулів - Доповнення Head (українська)
******************************************************

Папка head містить файли, які надаються як доповнення head через середовище агрегатора
ресурсів. Ці ресурси відображаються як тег head розмітки, що надається браузеру.

У наступному розділі наведено повний список підтримуваних файлів із розділу head

/head                                    -- Файли, що зберігаються в цьому каталозі, надаються в розділі head
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

  *.css                                 -- Ресурси CSS, що надаються, в алфавітному порядку. Їх згруповано за
                                            іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть
                                            до однієї групи.
                                            У межах однієї групи існують такі варіанти розширень:
    *.css                                -- визначає вміст головного стиснутого файлу CSS;
    *.css.uncompressed.css               -- визначає вміст головного файлу відлагодження CSS;
    *.rtl.css                            -- визначає вміст стиснутого файлу CSS для мов із письмом справа наліво;
    *.rtl.css.uncompressed.css           -- визначає вміст файлу відлагодження CSS для мов із письмом справа наліво;
    *.<locale>.css                       -- визначає вміст стиснутого файлу CSS для вказаної мови;
    *.<locale>.css.uncompressed.css      -- визначає вміст файлу відлагодження CSS для вказаної мови.
  У наступному розділі наведено альтернативний спосіб. Можна вибрати перший або другий варіанти, проте поєднувати їх не можна.
    *.min.css                            -- визначає вміст головного стиснутого файлу CSS;
    *.css                                -- визначає вміст головного файлу відлагодження CSS;
    *.rtl.min.css                        -- визначає вміст стиснутого файлу CSS для мов із письмом справа наліво;
    *.rtl.css                            -- визначає вміст файлу відлагодження CSS для мов із письмом справа наліво;
    *.<locale>.min.css                   -- визначає вміст стиснутого файлу CSS для вказаної мови;
    *.<locale>.css                       -- визначає вміст файлу відлагодження CSS для вказаної мови.

  *.html                                -- Ресурси HTML, що надаються, в алфавітному порядку. Їх згруповано за
                                            іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть
                                            до однієї групи.
                                            У межах однієї групи існують такі варіанти розширень:
    *.html                               -- визначає вміст головного файлу HTML;
    *.rtl.html                           -- визначає вміст файлу HTML для мов із письмом справа наліво;
    *.<locale>.html                      -- визначає вміст файлу HTML для вказаної мови.

  /<device-class>                       -- (необов'язково) дозволяє визначити область дії ресурсів за класом пристроїв (лише один окремий клас пристроїв, без підтримки рівнянь)
    Для файлів застосовується тут те саме правило, що й для батьківського каталогу


简单模块 - 模块定义 - 头添加项（中文版）
******************************************************

“head”文件夹包含通过资源聚集器框架作为头添加项提供的文件。这些资源显示在为浏览器提供的标记的头标签中。

以下部分提供了 head 部分中受支持文件的完整列表

/head                                    -- head 部分中将提供存储在此目录中的文件
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

  *.css                                  -- 按字母顺序提供的 CSS 资源。按文件名进行分组，只要这些资源的名称相同，它们就属于同一组。
                                            组中存在以下扩展名变体：
    *.css                                -- 定义了 CSS 主压缩内容
    *.css.uncompressed.css               -- 定义了 CSS 主调试内容
    *.rtl.css                            -- 定义了从右至左显示的语言所要使用的压缩 CSS
    *.rtl.css.uncompressed.css           -- 定义了从右至左显示的语言所要使用的调试 CSS
    *.<locale>.css                       -- 定义了特定语言的 CSS 压缩内容
    *.<locale>.css.uncompressed.css      -- 定义了特定语言的 CSS 调试内容
  以下部分定义了替代方法。您可以使用任一变体，但不能以混合方式使用。
    *.min.css                            -- 定义了 CSS 主压缩内容
    *.css                                -- 定义了 CSS 主调试内容
    *.rtl.min.css                        -- 定义了从右至左显示的语言所要使用的压缩 CSS
    *.rtl.css                            -- 定义了从右至左显示的语言所要使用的调试 CSS
    *.<locale>.min.css                   -- 定义了特定语言的 CSS 压缩内容
    *.<locale>.css                       -- 定义了特定语言的 CSS 调试内容

  *.html                                 -- 按字母顺序提供的 HTML 资源。按文件名进行分组，只要这些资源的名称相同，它们就属于同一组。
                                            组中存在以下扩展名变体：
    *.html                               -- 定义了 HTML 主内容
    *.rtl.html                           -- 定义了从右至左显示的语言所要使用的 HTML
    *.<locale>.html                      -- 定义了特定语言的 HTML 内容

  /<device-class>                        -- （可选）允许按设备类（仅限单个设备类，不支持公式）查看资源。
    此处应用的文件规则与父目录规则相同


簡式模組 - 模組定義 - head 要素項（繁體中文）
******************************************************

'head' 資料夾包含透過資源聚集器架構顯示為 head 要素項的檔案。
這些資源出現在瀏覽器中顯示之標記的 head 標籤中。

下列小節提供 head 區段中受支援檔案的完整清單。

/head                                    -- 儲存在此目錄中的將在 head 區段顯示
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

  *.css                                  -- 按字母順序顯示的 CSS 資源。這些資源
                                                  依檔名分組，並且只要它們的名稱相同，就屬於相同的群組。
                                                  在群組中，有下列延伸變體：
          *.css                                -- 定義主要壓縮 CSS 內容
          *.css.uncompressed.css               -- 定義主要除錯 CSS 內容
          *.rtl.css                            -- 定義要用於從右向左語言的壓縮 CSS
          *.rtl.css.uncompressed.css           -- 定義要用於從右向左語言的除錯 CSS
          *.<locale>.css                       -- 定義特定語言的壓縮 CSS 內容
          *.<locale>.css.uncompressed.css      -- 定義特定語言的除錯 CSS 內容
        列區段定義替代方式。您可以使用這些變體之一，但是不能混合使用。
          *.min.css                            -- 定義主要壓縮 CSS 內容
          *.css                                -- 定義主要除錯 CSS 內容
          *.rtl.min.css                        -- 定義要用於從右向左語言的壓縮 CSS
          *.rtl.css                            -- 定義要用於從右向左語言的除錯 CSS
          *.<locale>.min.css                   -- 定義特定語言的壓縮 CSS 內容
          *.<locale>.css                       -- 定義特定語言的除錯 CSS 內容

        *.html                                 -- 按字母順序顯示的 HTML 資源。這些資源
                                                  依檔名分組，並且只要它們的名稱相同，就屬於相同的群組。
                                                  在群組中，有下列延伸變體：
          *.html                               -- 定義主要 HTML 內容
          *.rtl.html                           -- 定義要用於從右向左語言的 HTML 內容
          *.<locale>.html                      -- 定義特定語言的 HTML 內容

  
/<device-class>                        -- （選用）容許您依裝置類別設定資源的範圍（僅一個個別的裝置類別，不支援方程式）
          在這裡，上層目錄的相同檔案規則適用


