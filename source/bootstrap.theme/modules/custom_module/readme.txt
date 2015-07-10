Simple Modules - Module Definition (English)
**********************************

The getting started module is a pre-defined module that you can use as starting platform to
quickly inject your own resources into the current theme. Simply add your Javascript, CSS
or markup file inside one of the subfolders (config or head) and your resources will be picked
up by WebSphere Portal. Please note that you need to invalidate the resource aggregator cache
for WebSphere Portal to pick up the changes.
You can do this by going to Administration -> Theme Analyzer -> Utilities -> Control Center.
On the Control Center page click the link under 'Invalidate Cache'.

The following section provides a complete list of features of Simple Modules:

Directory Structure
    /<module-id>                               -- each directory below /modules defines a new module (no support for versions)
       prereqs.properties                      -- Optional file defining the prereqs of this module.
         The file content consist of one module id per new line. Module versions are not supported. Example:
         <module-id>
         <module-id>
       capabilities.properties                 -- Optional file defining the capabilities of this module.
         The file content consist of a properties like style with the name and value separated by an equal sign, one per new line.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Optional file defining title and description of this module.
         The file content consist of a properties like style like shown below.
         title.<locale>=<title>
         description.<locale>=<description>
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

      /menu                                    -- Files stored in this directory will be made available to the menu framework
        /*.json                                -- JSON resources containing the menu definition served up in alphabetical order


وحدات البرامج البسيطة - تعريف وحدة برامج (العربية)
****************************************

تعد وحدة برامج البدء وحدة برامج معرفة مسبقا يمكنك استخدامها كبيئة تشغيل البدء لادراج المصادر الخاصة بك بطريقة سريعة في النسق الرئيسي الحالي.  قم باضافة ملف علامات تكويد أو Javascript أو CSS داخل أحد الحافظات الفرعية (config أو head) وسيتم احضار المصادر الخاصة بك بواسطة WebSphere Portal. برجاء ملاحظة أنه يجب  أن تقوم بالغاء فاعلية الذاكرة الوسيطة لأداة تجميع المصادر الى WebSphere Portal لاحضار التغييرات.
يمكنك القيام بذلك من خلال الذهاب الى الادارة -> أداة تحليل النسق الرئيسي -> الوظائف -> مركز التحكم.
في صفحة مركز التحكم اضغط على الوصلة أسفل 'الغاء فعالية الذاكرة الوسيطة'.

يقدم القسم التالي كشف كامل لخصائص وحدات البرامج البسيطة: 

هيكل الدليل
    /<module-id>                               -- كل دليل أسفل /modules يعرف وحدة برامج جديدة (لا يوجد دعم للنسخ)
       prereqs.properties                      -- ملف اختياري يعرف المتطلبات لوحدة البرامج هذه.
         تتكون محتويات الملف من كود وحدة برامج واحدة بكل سطر. لا يتم دعم نسخ وحدة البرامج. مثال:
         <module-id>
         <module-id>
       capabilities.properties                 -- ملف اختياري يعرف امكانيات وحدة البرامج هذه.
         تتكون محتويات الملف من نمط يماثل الخصائص مع فصل الاسم والقيمة بواسطة علامة يساوي، ووضع كل منها بسطر جديد.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- ملف اختياري يعرف العنوان والوصف لوحدة البرامج هذه.
         تتكون محتويات الملف من نمط يماثل الخصائص يتم توضيحه بأسفل.
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- الملفات التي يتم تخزينها في هذا الدليل سيتم تقديمها في قسم head
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

      /menu                                    -- الملفات التي يتم تخزينها في هذا الدليل سيتم اتاحتها لاطار عمل القائمة
        /*.json                                -- مصادر JSON التي تحتوي على تعريف القائمة يتم تقديمها بترتيب أبجدي 


Mòduls simples - Definició de mòdul (Anglès)
**********************************

El mòdul Com començar és un mòdul predefinit que podeu utilitzar com a plataforma d'inici per incloure ràpidament els recursos propis al tema actual.
Només heu d'afegir el fitxer Javascript, CSS o d'etiquetatge dins d'una de les subcarpetes (config o head) i el WebSphere Portal agafarà els recursos. Tingueu en compte que és necessari invalidar la memòria cau de l'agregador de recursos del WebSphere Portal per obtenir els canvis.
Ho podeu fer a Administració -> Analitzador de temes -> Utilitats -> Centre de control.
A la pàgina Centre de control, feu clic a l'enllaç a sota de 'Invalida la memòria cau'.

A la següent secció es proporciona una llista completa de les funcions de mòduls simples:

Estructura de directoris
    /<module-id>                               -- cada directori o mòdul defineix un mou mòdul (sense suport per a versions)
       prereqs.properties                      -- Fitxer opcional que defineix els requisits previs d'aquest mòdul.
         El contingut del fitxer consta d'un ID de mòdul per a cada nova línia. No se suporten les versions de mòdul. Exemple:
         <module-id>
         <module-id>
       capabilities.properties                 -- Fitxer opcional que defineix les capacitats d'aquest mòdul.
         El contingut del fitxer consta d'un estil de propietats amb el nom i el valor separats per un signe d'igual, un per a cada nova línia.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Fitxer opcional que defineix el títol i la descripció d'aquest mòdul.
         El contingut del fitxer consta d'un estil de propietats com el que es mostra a continuació.
         title.<locale>=<title>
         description.<locale>=<description>
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
    S'aplica la mateixa regla als fitxers que al directori pare/config                                  -- Els fitxers emmagatzemats a aquest directoriserviran a la secció de configuració de l'agregador de recursos. Normalment això és just abans de l'etiqueta de tancament del cos.*.js                                   -- Recursos Javascript servits en ordre alfabètic. S'agrupen per nom de fitxer i quan tenen el mateix nom, pertanyen al mateix grup.
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
    *.<locale>.html                      -- Defineix el contingut HTML per a un idioma concret/<device-class>                        -- (opcional) permet definit l'àmbit dels recursos per classe de dispositiu (només una classe de dispositiu individual, sense suport d'equació)
    S'aplica la mateixa regla als fitxers que al directori pare

      /menu                                    -- Els fitxers emmagatzemats en aquest directori es posaran a disposició a l'estructura de menú
        /*.json                                -- Els recursos JSON que contenen la definició de menú servida en ordre alfabètic


Jednoduché moduly - definice modulů (anglicky)
**********************************

Modul Začínáme je předdefinovaný modul, který můžete použít jako počáteční platformu k rychlému
vložení vlastních prostředků do aktuálního motivu. Jednoduše přidejte soubor skriptu Javascript, CSS nebo
soubor markupu do jedné z podsložek (config nebo head) a portál WebSphere Portal si tyto prostředky
vyzvedne. Mějte na zřeteli, že k vyzvednutí změn je třeba zrušit platnost mezipaměti agregátoru prostředků pro portál
WebSphere Portal.
To provedete tak, že přejdete na volbu Administrace -> Analyzátor motivů -> Pomůcky -> Řídicí centrum.
Na stránce Řídicí centrum klepněte na odkaz v sekci 'Zrušit platnost mezipaměti'.

V následující sekci je uveden úplný seznam funkcí jednoduchých modulů:

Adresářová struktura
    /<id-modulu>                               -- Každý adresář pod adresářem /modules definuje nový modul (bez podpory verzí)
       prereqs.properties                      -- Volitelný soubor, který definuje nezbytné součásti tohoto modulu.
         Obsah souboru se skládá z jednoho ID modulu na každém novém řádku. Verze modulů nejsou podporovány. Příklad:
         <id-modulu>
         <id-modulu>
       capabilities.properties                 -- Volitelný soubor, který definuje schopnosti tohoto modulu.
         Obsah souboru tvoří názvy a hodnoty oddělené znakem rovnítka ve stylu vlastností, a to vždy jeden název a hodnota na řádek.
         <název>=<hodnota>
         <název>=<hodnota>
       localization.properties                 -- Volitelný soubor, který definuje nadpis a popis tohoto modulu.
         Obsah souboru má styl vlastností podobně jako v níže uvedené ukázce.
         title.<národní_prostředí>=<nadpis>
         description.<národní_prostředí>=<popis>
      /head                                    -- Soubory uložené v tomto adresáři budou poskytnuty v sekci head.
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

      /menu                                    -- Soubory uložené v tomto adresáři budou dostupné pro rámec nabídky
        /*.json                                -- Prostředky JSON obsahující definici nabídky poskytnutou v abecedním pořadí


Enkle moduler - moduldefinition
*******************************

Modulet Kom godt i gang er et foruddefineret modul, du kan bruge som udgangspunkt for hurtigt
at indsætte dine egne ressourcer i det aktuelle temaer. Du skal blot tilføje din Javascript-,
CSS- eller markup-fil i en af underfolderne (config eller head). Så bliver dine ressourcer
opsamlet af WebSphere Portal. Bemærk, at du skal ugyldiggøre cachen til
ressourceaggregatoren til WebSphere Portal for at hente ændringerne. Det kan du gøre
ved at gå til Administration -> Temaanalyse -> Hjælpeprogrammer -> Kontrolcenter. Klik på linket
under 'Ugyldiggør cache' på siden i Kontrolcenter.

I følgende afsnit vises en komplet liste over funktioner i de enkle moduler: 

Biblioteksstruktur
    /<modul-id>                                -- Alle biblioteker under /modules definerer et nyt modul (versioner understøttes ikke)
       prereqs.properties                      -- Valgfri fil, der definerer modulets prereqs (forudsætninger).
         Filindholdet består af én modul-id pr. ny linje. Modulversioner understøttes ikke. Eksempel:
         <modul-id>
         <modul-id>
       capabilities.properties                 -- Valgfri fil, der definerer modulets funktioner.
         Filindholdet består af en egenskabsagtig typografi, hvor navn og værdi er adskilt af et lighedstegn, én pr. ny linje.
         <navn>=<værdi>
         <navn>=<værdi>
       localization.properties                 -- Valgfri fil, der definerer modulets titel og beskrivelse.
         Filindholdet består af en egenskabsagtig typografi som vist herunder.
         title.<sprogkonvention>=<titel>
         description.<sprogkonvention>=<beskrivelse>
      /head                                    -- Filer, der er lagret i dette bibliotek, bliver leveret i head-afsnittet
        *.js                                   -- JavaScript-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                                  filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                                I en gruppe findes der følgende filtypevariationer:
    *.js                                       -- Definerer det primære komprimerede JavaScript-indhold
    *.js.uncompressed.js                       -- Definerer det primære JavaScript-fejlfindingsindhold
    *.rtl.js                                   -- Definerer det komprimerede JavaScript, der skal bruges til højre mod venstre-sprog
    *.rtl.js.uncompressed.js                   -- Definerer det JavaScript-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.js                     -- Definerer det komprimerede JavaScript-indhold for et bestemt sprog
    *.<sprogkonvention>.js.uncompressed.js     -- Definerer JavaScript-fejlfindingsindholdet for et bestemt sprog
  Følgende afsnit definerer et alternativ. Du kan bruge en af disse variationer, men ikke blandet.
    *.min.js                                   -- Definerer det primære komprimerede JavaScript-indhold
    *.js                                       -- Definerer det primære JavaScript-fejlfindingsindhold
    *.rtl.min.js                               -- Definerer det komprimerede JavaScript, der skal bruges til højre mod venstre-sprog
    *.rtl.js                                   -- Definerer det JavaScript-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.min.js                 -- Definerer det komprimerede JavaScript-indhold for et bestemt sprog
    *.<sprogkonvention>.js                     -- Definerer JavaScript-fejlfindingsindholdet for et bestemt sprog

   *.css                                      -- CSS-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                                  filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                                I en gruppe findes der følgende filtypevariationer:
    *.css                                      -- Definerer det primære komprimerede CSS-indhold
    *.css.uncompressed.css                     -- Definerer det primære CSS-fejlfindingsindhold
    *.rtl.css                                  -- Definerer det komprimerede CSS, der skal bruges til højre mod venstre-sprog
    *.rtl.css.uncompressed.css                 -- Definerer det CSS-fejlfindingsindhold, der skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.css                    -- Definerer det komprimerede CSS-indhold for et bestemt sprog
    *.<sprogkonvention>.css.uncompressed.css   -- Definerer CSS-fejlfindingsindholdet for et bestemt sprog
  I følgende afsnit defineres en alternativ metode.Du kan bruge en af disse variationer, men ikke blandet.
    *.min.css                                  -- Definerer det primære komprimerede CSS-indhold
    *.css                                      -- Definerer det primære CSS-fejlfindingsindhold
    *.rtl.min.css                              -- Definerer det komprimerede CSS, der skal bruges til højre mod venstre-sprog
    *.rtl.css                                  -- Definerer det CSS-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.min.css                -- Definerer det komprimerede CSS-indhold for et bestemt sprog
    *.<sprogkonvention>.css                    -- Definerer CSS-fejlfindingsindholdet for et bestemt sprog
    *.html                                    -- HTML-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                                  filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                                I en gruppe findes der følgende filtypevariationer:
    *.html                                     -- Definerer det primære HTML-indhold
    *.rtl.html                                 -- Definerer den HTML, der skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.html                   -- Definerer HTML-indholdet for et bestemt sprog

        /<enhedsklasse>                       -- (Valgfrit) Gør det muligt at angive omfang af ressourcer efter enhedskasse (kun individuel enhedsklasse, ligninger understøttes ikke)
    Der gælder samme regel for filer her som for det overordnede bibliotek
/config                                       -- Filer, der er lagret i dette bibliotek, bliver leveret i config-afsnittet af ressourcenaggregatoren. Det indsættes normalt lige før body-slutkoden.
  *.js                                       -- Javascript-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                                  filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                                I en gruppe findes der følgende filtypevariationer:
    *.js                                      -- Definerer det primære komprimerede JavaScript-indhold
    *.js.uncompressed.js                      -- Definerer det primære JavaScript-fejlfindingsindhold
    *.rtl.js                                  -- Definerer det komprimerede JavaScript, der skal bruges til højre mod venstre-sprog
    *.rtl.js.uncompressed.js                  -- Definerer det JavaScript-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.js                    -- Definerer det komprimerede JavaScript-indhold for et bestemt sprog
    *.<sprogkonvention>.js.uncompressed.js    -- Definerer JavaScript-fejlfindingsindholdet for et bestemt sprog
  Følgende afsnit definerer et alternativ. Du kan bruge en af disse variationer, men ikke blandet.
    *.min.js                                  -- Definerer det primære komprimerede JavaScript-indhold
    *.js                                      -- Definerer det primære JavaScript-fejlfindingsindhold
    *.rtl.min.js                              -- Definerer det komprimerede JavaScript, der skal bruges til højre mod venstre-sprog
    *.rtl.js                                  -- Definerer det JavaScript-fejlfindingsindhold, skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.min.js                -- Definerer det komprimerede JavaScript-indhold for et bestemt sprog
    *.<sprogkonvention>.js                    -- Definerer JavaScript-fejlfindingsindholdet for et bestemt sprog

        *.html                               -- HTML-ressourcer leveret i alfabetisk rækkefølge. De er grupperet efter
                                                 filnavn, og så længe de har samme navn, hører de til samme gruppe.
                                                I en gruppe findes der følgende filtypevariationer:
    *.html                                    -- Definerer det primære HTML-indhold
    *.rtl.html                                -- Definerer den HTML, der skal bruges til højre mod venstre-sprog
    *.<sprogkonvention>.html                  -- Definerer HTML-indholdet for et bestemt sprog
/<enhedsklasse>                               -- (Valgfrit) Gør det muligt at angive omfang af ressourcer efter enhedskasse (kun individuel enhedsklasse, ligninger understøttes ikke)
    Der gælder samme regel for filer her som for det overordnede bibliotek

      /menu                                  -- Filer, der er lagret i dette bibliotek, stilles til rådighed for menustrukturen
        /*.json                               -- JSON-ressourcer, der indeholder menudefinitionen leveret i alfabetisk rækkefølge


Einfache Module - Moduldefinition (Deutsch)
**********************************

Das Einführungsmodul ist ein vordefiniertes Modul, das Sie als Ausgangsplattform für die schnelle Injizierung ihrer eigenen Ressourcen in das aktuelle Motiv verwenden können. Fügen Sie einfach ihre Javascript-, CSS- oder Markup-Datei in einen der Unterordner ("config" oder "head") ein, damit Ihre Ressourcen von WebSphere Portal berücksichtigt werden. Beachten Sie, dass Sie den Cachespeicher des Ressourcenaggregators inaktivieren müssen, damit WebSphere Portal die Änderungen berücksichtigt.
Wählen Sie hierfür "Verwaltung -> Motivanalysefunktion -> Dienstprogramme -> Steuerzentrale" aus.
Klicken Sie auf der Seite "Steuerzentrale" auf den Link unter "Cachespeicher inaktivieren".

Der folgende Abschnitt enthält eine vollständige Liste der Funktionen einfacher Module:

Verzeichnisstruktur
    /<module-id>                               -- Jedes Verzeichnis unter /modules definiert ein neues Modul (Versionen werden nicht unterstützt)
       prereqs.properties                      -- Optionale Datei, die die Voraussetzungen für dieses Modul definiert.
         Der Dateiinhalt besteht aus einer Modul-ID in jeweils einer neuen Zeile. Modulversionen werden nicht unterstützt. Beispiel:
         <module-id>
         <module-id>
       capabilities.properties                 -- Optionale Datei, die die Funktionen dieses Moduls definiert.
         Der Inhalt dieser Datei besteht aus Eigenschaften wie dem Stil mit dem Namen und dem Wert, getrennt durch ein Gleichheitszeichen (eine Eigenschaft in jeweils einer neuen Zeile).
         <Name>=<Wert>
         <Name>=<Wert>
       localization.properties                 -- Optionale Datei, die  den Titel und die Beschreibung dieses Moduls definiert.
         Der Dateiinhalt besteht aus einer Eigenschaft wie z. B. dem Stil (siehe unten).
         title.<Ländereinstellung>=<Titel>
         description.<Ländereinstellung>=<Beschreibung>
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
    Für die Dateien hier gilt dieselbe Regel wie für Dateien im übergeordneten Verzeichnis/config                                  -- Dateien, die in diesem Verzeichnis gespeichert sind, werden im Abschnitt "config" des Ressourcenaggregators bereitgestellt. Normalerweise steht dieser Eintrag direkt vor dem Endtag für den Hauptteil. *.js                                   -- Javascript-Ressourcen, die in alphabetischer Reihenfolge bereitgestellt werden. Diese sind nach Dateinamen gruppiert und solange sie denselben Namen aufweisen, gehören sie zur gleichen Gruppe.
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
    *.<Ländereinstellung>.html                      -- Definiert den HTML-Inhalt für eine bestimmte Sprache/<device-class>                        -- (optional) Ermöglicht die Definition eines Bereichs für Ressourcen nach Einheitenklasse (nur eine einzelne Einheitenklasse, ohne Unterstützung von Gleichungen)
    Für die Dateien hier gilt dieselbe Regel wie für Dateien im übergeordneten Verzeichnis

      /menu                                    -- Dateien, die in diesem Verzeichnis gespeichert sind, werden im Menüframework bereitgestellt
        /*.json                                -- JSON-Ressourcen, die die Menüdefinition enthalten und in alphabetischer Reihenfolge bereitgestellt werden


Απλές λειτουργικές μονάδες - Ορισμός λειτουργικής μονάδας (Ελληνικά)
*********************************************************

Η λειτουργική μονάδα getting_started_module είναι μια προκαθορισμένη λειτουργική μονάδα που μπορείτε να
χρησιμοποιήσετε ως σημείο εκκίνησης για τη γρήγορη προσθήκη των δικών σας πόρων στο τρέχον θέμα. Απλά προσθέστε
το αρχείο Javascript, CSS ή κώδικα μορφοποίησης που επιθυμείτε σε έναν από τους υποφακέλους (config ή head)
και οι πόροι σας θα ανακτηθούν και θα χρησιμοποιηθούν από το WebSphere Portal. Θα πρέπει να ακυρώσετε τη
λανθάνουσα μνήμη της λειτουργίας συγκρότησης πόρων προκειμένου το WebSphere Portal να εφαρμόσει
τις αλλαγές. Για το σκοπό αυτό, επιλέξτε Διαχείριση -> Λειτουργία ανάλυσης θεμάτων -> Βοηθήματα -> Κέντρο ελέγχου.
Στη σελίδα Κέντρο ελέγχου, πατήστε στη διασύνδεση στην ενότητα 'Ακύρωση λανθάνουσας μνήμης'.

Η ακόλουθη ενότητα περιέχει μια πλήρη λίστα των λειτουργιών των απλών λειτουργικών μονάδων:

Δομή καταλόγων
    /<module-id>                               -- Κάθε κατάλογος κάτω από τον /modules ορίζει μια νέα λειτουργική μονάδα
                                                  (δεν παρέχεται υποστήριξη για εκδοχές)
       prereqs.properties                      -- Προαιρετικό αρχείο που ορίζει τα προαπαιτούμενα για αυτή τη λειτουργική μονάδα.
         Το αρχείο περιέχει μία ταυτότητα λειτουργικής μονάδας ανά γραμμή. Δεν υποστηρίζονται εκδοχές λειτουργικών μονάδων. Παράδειγμα:
         <module-id>
         <module-id>
       capabilities.properties                 -- Προαιρετικό αρχείο που ορίζει τις δυνατότητες αυτής της λειτουργικής μονάδας.
         Το αρχείο περιέχει ιδιότητες, μία σε κάθε γραμμή, όπου το όνομα και η τιμή διαχωρίζονται με ένα χαρακτήρα ίσον.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Προαιρετικό αρχείο που ορίζει τον τίτλο και την περιγραφή αυτής της λειτουργικής μονάδας.
         Το αρχείο περιέχει ιδιότητες όπως αυτή που εμφανίζεται παρακάτω.
         title.<locale>=<title>
         description.<locale>=<description>
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

      /config                                  -- Τα αρχεία σε αυτό τον κατάλογο παρέχονται στην ενότητα config της λειτουργίας συγκρότησης πόρων. Συνήθως βρίσκεται ακριβώς πριν από το τελικό προσδιοριστικό body.
*.js                                           -- Πόροι Javascript που παρέχονται σε αλφαβητική σειρά. Ομαδοποιούνται κατά
                                            όνομα αρχείου και, αν έχουν το ίδιο όνομα αρχείου, ανήκουν στην ίδια ομάδα.
                                                  Σε μια ομάδα υπάρχουν οι ακόλουθες παραλλαγές προεκτάσεων:
    *.js                                       -- Ορίζει το κύριο συμπιεσμένο περιεχόμενο javascript
    *.js.uncompressed.js                       -- Ορίζει το κύριο περιεχόμενο εντοπισμού σφαλμάτων javascript
    *.rtl.js                                   -- Ορίζει τη συμπιεσμένη javascript που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.rtl.js.uncompressed.js                   -- Ορίζει τη javascript εντοπισμού σφαλμάτων που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.js                              -- Ορίζει το συμπιεσμένο περιεχόμενο javascript για μια συγκεκριμένη γλώσσα
    *.<locale>.js.uncompressed.js              -- Ορίζει το περιεχόμενο javascript εντοπισμού σφαλμάτων για μια συγκεκριμένη γλώσσα
  Η ακόλουθη ενότητα ορίζει μια εναλλακτική παραλλαγή. Μπορείτε να χρησιμοποιήσετε οποιαδήποτε από τις δύο παραλλαγές, αλλά όχι ένα συνδυασμό τους.
    *.min.js                                   -- Ορίζει το κύριο συμπιεσμένο περιεχόμενο javascript
    *.js                                       -- Ορίζει το κύριο περιεχόμενο εντοπισμού σφαλμάτων javascript
    *.rtl.min.js                               -- Ορίζει τη συμπιεσμένη javascript που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.rtl.js                                   -- Ορίζει τη javascript εντοπισμού σφαλμάτων που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.min.js                          -- Ορίζει το συμπιεσμένο περιεχόμενο javascript για μια συγκεκριμένη γλώσσα
    *.<locale>.js                              -- Ορίζει το περιεχόμενο javascript εντοπισμού σφαλμάτων για μια συγκεκριμένη γλώσσα

        *.html                                 -- Πόροι HTML που παρέχονται σε αλφαβητική σειρά. Ομαδοποιούνται κατά
                                            όνομα αρχείου και, αν έχουν το ίδιο όνομα αρχείου, ανήκουν στην ίδια ομάδα.
                                                  Σε μια ομάδα υπάρχουν οι ακόλουθες παραλλαγές προεκτάσεων:
    *.html                                     -- Ορίζει το κύριο περιεχόμενο HTML
    *.rtl.html                                 -- Ορίζει το περιεχόμενο HTML που χρησιμοποιείται για γλώσσες διπλής κατεύθυνσης
    *.<locale>.html                            -- Ορίζει το περιεχόμενο HTML για μια συγκεκριμένη γλώσσα

/<device-class>                                -- (προαιρετικά) επιτρέπει τον ορισμό εμβελειών πόρων με βάση την κλάση συσκευών (μόνο μεμονωμένες κλάσεις συσκευών, δεν υποστηρίζονται συνδυασμοί)
    Ισχύουν οι ίδιοι κανόνες σχετικά με τα αρχεία που ισχύουν και για το γονικό κατάλογο.

      /menu                                    -- Τα αρχεία σε αυτό τον κατάλογο θα γίνουν διαθέσιμα στο πλαίσιο μενού
        /*.json                                -- Πόροι JSON με τους ορισμούς μενού που παρέχονται σε αλφαβητική σειρά


Módulos simples - Definición de módulo
**************************************

El módulo de iniciación es un módulo predefinido que puede utilizar como plataforma de partida para insertar rápidamente sus propios recursos en el tema actual. Simplemente añada su archivo Javascript, CSS
o de marcación a una de las subcarpetas (config o head) y WebSphere Portal tomará sus recursos. Tenga en cuenta que debe invalidar la memoria caché del agregador de recursos para que WebSphere Portal adopte los cambios.
Para ello vaya a Administración -> Analizador de temas -> Programas de utilidad -> Centro de control.
En la página Centro de control, pulse el enlace que hay bajo 'Invalidar memoria caché'.

La siguiente sección proporciona una lista completa de las funciones de los módulos simples:

Estructura de directorios
    /<module-id>                               -- cada directorio que hay bajo /modules define un módulo web (no hay soporte para versiones)
       prereqs.properties                      -- Archivo opcional que define los requisitos previos de este módulo.
         El contenido del archivo consta de un ID de módulo por cada línea nueva. Lo se da soporte a versiones del módulo. Ejemplo:
         <module-id>
         <module-id>
       capabilities.properties                 -- Archivo opcional que define las posibilidades de este módulo.
         El contenido del archivo consta de un estilo de tipo propiedades con el nombre y el valor separados por un signo igual, uno por cada línea nueva.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Archivo opcional que define el título y la descripción de este módulo.
         El contenido del archivo consta de un estilo de tipo propiedades como el que se muestra a continuación.
         title.<locale>=<title>
      description.<locale>=<description>
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

      /menu                                    -- Los archivos guardados en este directorio estarán disponibles para la infraestructura de menús
        /*.json                                -- Recursos JSON que contienen la definición del menú proporcionados en orden alfabético


Yksinkertaiset moduulit - Moduulin määritys
**********************************

getting_started_module on ennalta määritetty moduuli, jonka avulla voit nopeasti lisätä
omia resursseja nykyiseen teemaan. Lisää Javascript-, CSS- tai markup-tiedosto yhteen alikansioista (config-kansio tai pääkansio).
WebSphere-portaali hakee tämän jälkeen resurssit. Muista, että sinun täytyy mitätöidä
resurssikoostimen välimuisti, jotta WebSphere-portaali ottaa muutokset käyttöön.
Voit tehdä tämän valitsemalla Hallinta -> Teeman analysointitoiminnot -> Apuohjelmat -> Ohjaustoiminnot.
Valitse Ohjaustoiminnot-sivulla linkki kohdassa Mitätöi välimuisti.

Alla on luettelo yksinkertaisten moduulien ominaisuuksista:

Hakemistorakenne
    /<module-id>                               -- jokainen hakemisto kohdan /modules alapuolella määrittää uuden moduulin (ei versiotukea)
       prereqs.properties                      -- valinnainen tiedosto tämän moduulien edellytyksien määrittämiseen.
         Tiedosto sisältää yhden moduulitunnuksen jokaisella uudella rivillä. Moduuliversioita ei tueta. Esimerkki:
         <module-id>
         <module-id>
       capabilities.properties                 -- valinnainen tiedosto tämän moduulin ominaisuuksien määrittämiseen.
         Tiedosto sisältää ominaisuudet, kuten tyylin nimi ja arvo erotettuna yhtäsuuri-merkillä. Jokainen uusi rivi sisältää yhden ominaisuuden.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- valinnainen tiedosto tämän moduulin otsikon ja kuvauksen määrittämiseen.
         Tiedosto sisältää ominaisuudet, kuten tyylin, alla kuvatulla tavalla.
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- tähän hakemistoon tallennetut tiedostot tulevat otsikko-osaan
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
    Tiedostoja koskee tässä sama sääntö kuin päähakemiston tiedostoja/config                                  -- tähän hakemistoon tallennetut tiedostot tulevat resurssikoostimen kokoonpano-osasta. Tämä tieto sijaitsee yleensä juuri ennen tekstiosan päättävää tunnistetta.
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
    *.<locale>.html                      -- määrittää HTML-sisällön tietylle kielelle/<device-class>                        -- (valinnainen) sallii resurssien rajaamisen laiteluokan mukaan (vain yksi laiteluokka, ei tue
kaavoja)
    Tiedostoja koskee tässä sama sääntö kuin päähakemiston tiedostoja

      /menu                                    -- tähän hakemistoon tallennetut tiedostot tulevat valikkokehykseen
        /*.json                                -- valikkomäärityksen sisältävät JSON-resurssit aakkosjärjestyksessä


Modules simples - Définition de module
**********************************

Le module de mise en route est est un module prédéfini que vous pouvez utiliser en tant que plateforme de départ pour injecter rapidement vos ressources dans le thème en cours. Ajoutez simplement votre fichier Javascript, CSS ou de marquage dans l'un des sous-dossiers (config ou head) et vos ressources seront sélectionnées par WebSphere Portal. Notez que vous devez invalider le cache de l'agrégateur de ressources afin que WebSphere Portal sélectionne vos modifications. Vous pouvez effectuer cette opération en cliquant sur Administration -> Analyseur de thème -> Utilitaires -> Centre de contrôle. Dans la page du Centre de contrôle, cliquez sur le lien sous 'Invalider le cache'.

La section suivante fournit une liste complète des fonctions des modules simples :

Structure de répertoire
    /<ID-module>                               -- Chaque répertoire dans /modules définit un nouveau module (pas de prise en charge pour les versions).
       prereqs.properties                      -- Fichier facultatif définissant les prérequis de ce module.
         Le contenu du fichier se compose d'un ID de module par nouvelle ligne. Les versions de module ne sont pas prises en charge. Exemple :
         <ID-module>
         <ID-module>
       capabilities.properties                 -- Fichier facultatif définissant les fonctionnalités de ce module.
         Le contenu du fichier est constitué d'un style properties dont le nom et la valeur sont séparés par un signe égal, un par ligne.
         <nom>=<valeur>
         <nom>=<valeur>
       localization.properties                 -- Fichier facultatif définissant le titre et la description de ce module.
         Le contenu du fichier est constitué d'un style properties comme présenté ci-dessous.
         title.<paramètres régionaux>=<titre>
         description.<paramètres régionaux>=<description>
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

       *.html                                  -- Ressources HTML traitées dans l'ordre alphabétique. Elles sont regroupées
                                                  par nom de fichier et si elles ont le même nom, elles appartiennent au même groupe.
                                                  Dans un groupe, les variations d'extension suivantes existent :
          *.html                               -- Définit le contenu HTML principal
          *.rtl.html                           -- Définit le contenu HTML à utiliser pour les langues de droite à gauche
          *.<code_langue>.html                 -- Définit le contenu HTML pour une langue spécifique

        /<classe-appareil>                   - - (facultatif) permet de regrouper des ressources par classe d'appareil (une seule classe d'appareil, pas de support d'équation)
           La règle des fichiers s'applique ici pour le répertoire parent
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


      /menu                                    -- Les fichiers stockés dans ce répertoire sont disponibles dans le framework de menu
        /*.json                                -- Les ressources JSON contenant la définition de menu sont traitées par ordre alphabétique


Jednostavni moduli - definicija modula (hrvatski)
**********************************

Početni modul je unaprijed definirani modul koji možete koristiti kao početnu platformu za
brzo umetanje vlastitih resursa u trenutnu temu. Jednostavno dodajte svoju Javascript, CSS
ili markup datoteku u jedan od podfoldera (config ili head) i WebSphere Portal će pokupiti vaše
resurse. Imajte na umu da je potrebno poništiti predmemoriju skupljača resursa da bi
WebSphere Portal pokupio promjene.
To možete napraviti odlaskom u Administracija -> Analizator teme -> Pomoćni programi -> Kontrolni centar.
Na stranici Kontrolnog centra kliknite na vezu pod 'Poništi predmemoriju'.

Sljedeći odjeljak sadrži cjelovitu listu funkcija jednostavnih modula:

Strukture direktorija
    /<module-id>                               -- svaki direktorij pod /modules definira novi modul (nema podrške za verzije)
       prereqs.properties                      -- Opcijska datoteka koja definira preduvjete ovog modula.
         Datoteka sadrži jedan id modula po novom redu. Verzije modula nisu podržane. Primjer:
         <module-id>
         <module-id>
       capabilities.properties                 -- Opcijska datoteka koja definira mogućnosti ovog modula.
         Datoteka sadrži svojstva poput stila, gdje su naziv i vrijednost su odvojeni znakom jednako, jedno svojstvo po novom redu.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Opcijska datoteka koja definira naslov i opis ovog modula.
         Datoteka sadrži svojstva poput stila definirana na način prikazan ispod.
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- Datoteke pohranjene u ovom direktoriju izvodit će se u odjeljku zaglavlja
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
          Ovdje se primjenjuju ista pravila za datoteke kao i za nadređeni direktorij.

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

      /menu                                    -- Datoteke pohranjene u ovom direktoriju bit će dostupne frameworku izbornika
        /*.json                                -- JSON resursi koji sadrže definiciju resursa navedeni u abecednom redoslijedu


Egyszerű modulok - Modulmeghatározás (magyar)
**********************************

Ez a kezdeti lépések modul egy előre meghatározott modul, melyet
kiindulópontként használhat ahhoz, hogy gyorsan beillessze a saját
erőforrásait az aktuális témába. Egyszerűen vegye fel a Javascript, CSS
vagy kódfájlt valamelyik almappába (config vagy head), és a WebSphere
Portal észleli ezeket az erőforrásokat. Vegye figyelembe, hogy
érvénytelenítenie kell az erőforrásösszesítő gyorsítótárat, hogy a
WebSphere Portal felvegye a módosításokat.
Ehhez kattintson az Adminisztráció -> Témaelemző -> Segédprogramok ->
Vezérlőközpont menüpontra.
A Vezérlőközpont oldalon kattintson a 'Gyorsítótár érvénytelenítése'
alatti hivatkozásra. 

Az alábbi szakasz felsorolja az egyszerű modulok összes szolgáltatását: 

Könyvtárszerkezet
    /<modulazonosító>                          -- a /modules alatti minden egyes könyvtár egy-egy új modult határoz meg (nincs verziószám-támogatás)
       prereqs.properties                      -- Nem kötelező fájl, mely meghatározza a modul előfeltételeit.
         A fájl soronként egy modulazonosítót tartalmaz. A modul
verziószámok nem támogatottak. Például:
         <modulazonosító>
         <modulazonosító>
       capabilities.properties                 -- Nem kötelező fájl, mely meghatározza a modul képességeit.
         A fájl a tulajdonságok megadásához hasonló stílusban tartalmaz
név-érték párokat egyenlőségjellel összekapcsolva, soronként egyet.
         <név>=<érték>
         <név>=<érték>
       localization.properties                 -- Nem kötelező fájl, mely
meghatározza a modul címét és leírását.
         A fájl a tulajdonságok megadásához hasonló stílusban tartalmazza
az információkat az alábbiak szerint:
         title.<területi beállítás>=<cím>
         description.<területi beállítás>=<leírás>
      /head                                    -- Az ebben a könyvtárban tárolt fájlokat szolgáltatja a rendszer a head szakaszban
        *.js                                   -- A szolgáltatott Javascript erőforrások ábécérendben. Fájlnév alapján vannak csoportosítva, és az azonos nevűek tartoznak egy-egy csoportba.
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

        *.css                                  -- A szolgáltatott CSS erőforrások ábécérendben. Fájlnév alapján vannak csoportosítva, és az azonos nevűek tartoznak egy-egy csoportba.
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

        /<eszközosztály>                        -- (nem kötelező) lehetővé teszi az erőforrások hatókörének megadását eszközosztály alapján (csak egy eszközosztály adható meg, a kifejezések nem támogatottak)
    Itt ugyanazok a szabályok vonatkoznak a fájlokra, mit a szülő könyvtár esetében.
/config                                         -- Az ebben a könyvtárban tárolt fájlok fognak szerepelni az erőforrásösszesítő config szakaszában. Ez általában a body lezáró címkéje előtt helyes.
  *.js                                         -- A szolgáltatott JavaScript erőforrások ábécérendben. Fájlnév alapján vannak csoportosítva, és az azonos nevűek tartoznak egy-egy csoportba.
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


      /menu                                    -- Az ebben a könyvtárban tárolt fájlok lesznek elérhetőek a menü keretrendszer számára
        /*.json                                -- A szolgáltatott menümeghatározást tartalmazó JSON erőforrások ábécérendben


Moduli semplici - Definizione modulo
**********************************

Il modulo di avvio è un modulo predefinito che è possibile utilizzare come piattaforma di inizio per
inserire rapidamente le risorse nel tema corrente. Aggiungere semplicemente il il file Javascript, CSS
o markup in una delle cartelle secondarie (config o head) e le risorse saranno
selezionate da WebSphere Portal. Si noti che è necessario invalidare la cache dell'aggregatore di risorse per
WebSphere Portal per selezionare le modifiche.
È possibile eseguire ciò andando ad Gestione -> Analizzatore temi -> Utility -> Control Center.
Nella pagina Control Center fare clic sul link in 'Invalida Cache'.

La sezione seguente fornisce un elenco completo di funzioni dei moduli semplici.

Struttura della directory
    /<module-id>                               -- ciascuna directory sotto /modules definisce un nuovo modulo (nessun supporto per le versioni)
       prereqs.properties                      -- File facoltativo che definisce i prereq di questo modulo.
         Il contenuto del file è formato da un id modulo per nuova riga. Le versioni modulo non sono supportate. Esempio:
         <module-id>
         <module-id>
       capabilities.properties                 -- File facoltativo che definisce le capability di questo modulo.
         Il contenuto del file è formato da proprietà come lo stile con il nome e il valore separati da un segno uguale, uno per nuova riga.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- File facoltativo che definisce il titolo e la descrizione di questo modulo.
         Il contenuto del file è formato dalla proprietà come lo stile, come illustrato di seguito.
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- I file memorizzati in questa directory saranno forniti nella sezione head
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

      /menu                                    -- I file memorizzati in questa directory saranno resi disponibili nel framework del menu
        /*.json                                -- Risorse JSON che contengono la definizione menu fornite in ordine alfabetico.


Simple Modules - Module Definition (English)
**********************************

The getting started module is a pre-defined module that you can use as starting platform to
quickly inject your own resources into the current theme. Simply add your Javascript, CSS
or markup file inside one of the subfolders (config or head) and your resources will be picked
up by WebSphere Portal. Please note that you need to invalidate the resource aggregator cache
for WebSphere Portal to pick up the changes.
You can do this by going to Administration -> Theme Analyzer -> Utilities -> Control Center.
On the Control Center page click the link under 'Invalidate Cache'.

The following section provides a complete list of features of Simple Modules:

Directory Structure
    /<module-id>                               -- each directory below /modules defines a new module (no support for versions)
       prereqs.properties                      -- Optional file defining the prereqs of this module.
         The file content consist of one module id per new line. Module versions are not supported. Example:
         <module-id>
         <module-id>
       capabilities.properties                 -- Optional file defining the capabilities of this module.
         The file content consist of a properties like style with the name and value separated by an equal sign, one per new line.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Optional file defining title and description of this module.
         The file content consist of a properties like style like shown below.
         title.<locale>=<title>
         description.<locale>=<description>
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

      /menu                                    -- Files stored in this directory will be made available to the menu framework
        /*.json                                -- JSON resources containing the menu definition served up in alphabetical order


単純モジュール - モジュール定義 (日本語)
**********************************

入門モジュールは、ユーザー独自のリソースを現在のテーマに素早く注入するための開始プラットフォームとして使用できる、
事前定義モジュールです。Javascript、CSS、またはマークアップ・ファイルを
いずれかのサブフォルダー (config または head) に追加するだけで、WebSphere Portal によって
リソースが取得されます。リソース統合機能キャッシュを無効化して、
WebSphere Portal が変更内容を取得するようにする必要があることに注意してください。
これを実行するには、「管理」->「テーマ・アナライザー」->「ユーティリティー」->「コントロール・センター」に移動します。
その後、「コントロール・センター」ページで、「キャッシュの無効化」の下のリンクをクリックします。

次のセクションでは、単純モジュールの機能の完全なリストを示します。

ディレクトリー構造
    /<module-id>                               -- /modules の下の各ディレクトリーは新規モジュールを定義します (バージョンのサポートなし)
       prereqs.properties                      -- このモジュールの前提条件を定義するオプション・ファイル。
         ファイル内容は、新規行あたり 1 つのモジュール ID で構成されます。モジュール・バージョンはサポートされていません。例:
         <module-id>
         <module-id>
       capabilities.properties                 -- このモジュールの機能を定義するオプション・ファイル。
         ファイル内容は、プロパティーに似たスタイルで構成されており、新規行あたり 1 つの名前と値が等号で区切られています。
         <name>=<value>
         <name>=<value>
       localization.properties                 -- このモジュールのタイトルおよび説明を定義するオプション・ファイル。
         ファイル内容は、以下に示すようなプロパティーに似たスタイルで構成されます。
         title.<locale>=<title>
         description.<locale>=<description>
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
    *.<locale>.html                      -- 特定の言語の HTML コンテンツを定義します        /<device-class>                        -- (オプション) デバイス・クラスによるリソースのスコープ設定が可能です (1 つの個別デバイス・クラスのみ。式をサポートしない)
          ここでは、親ディレクトリーの場合と同じファイルに対するルールが適用されます

      /menu                                    -- このディレクトリーに保管されているファイルは、メニュー・フレームワークで使用できます
        /*.json                                -- アルファベット順に使用されるメニュー定義を含む JSON リソース


Қарапайым модульдер - Модуль анықтамасы - (Ағылшын)
**********************************

Басталып кеткен модуль ағымдағы тақырыпқа өзіңіздің ресурстарыңызды жылдам кірістіру үшін арналған бастау тұғыры ретінде қолдана алатын алдын ала анықталған модуль. Javascript, CSS немесе түзету файлын ішкі қалталардың біріне қосыңыз (конфигурация немесе тақырып) және ресурстарыңыз WebSphere порталы арқылы таңдалады. ресурс біріктірушісінің кэшін WebSphere порталы үшін өзгерістерді таңдау үшін жарамсыз етуіңіз керек екенін ескеріңіз. Мұны Әкімші -> Тақырыпты талдаушы -> Қызметтік бағдарламалар -> Басқару орталығына бару арқылы орындай аласыз.
Басқару орталығы бетінде 'Кэшті жарамсыз ету' астындағы байланысты басыңыз.

Келесі бөлім Қарапайым модульдердің мүмкіндіктерінің толық тізімін қамтамасыз етеді:

Каталог құрылымы
    /<module-id>                               -- төмендегі әр бір каталог /модульдер жаңа модульді анықтайды (нұсқалар үшін қолдау жоқ)
       prereqs.properties                      -- Осы модульдің алғышарттарын анықтайтын міндетті емес файл.
         Файл мазмұны жаңа жол үшін бір модуль идентификаторын қамтиды. Модуль нұсқаларына қолдау көрсетілмейді. Мысалы:
         <module-id>
         <module-id>
       capabilities.properties                 -- Осы модульдің мүмкіндіктерін анықтайтын міндетті емес файл.
         Файл мазмұны аты бар мәнер және жаңа жол үшін бір тең белгісімен бөлінген мән сияқты сипаттардан тұрады.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Осы модульдің тақырыбы мен сипаттамасын анықтайтын міндетті емес файл.
         Файл мазмұны төменде көрсетілген мәнер сияқты сипаттардан тұрады.
         title.<locale>=<title>
         description.<locale>=<description>
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
    Файлдар үшін осындай ережелер бастапқы каталог үшін ретінде қабылданады/config                                  -- Осы каталогта сақталған файлдар ресурс біріктірушісінің конфигурация бөлімінде қызмет етеді. Бұл әдетте құжат тегті жабар алдында дұрыс болады.*.js                                   -- Javascript ресурстары әліпбилік ретте қызмет етеді. Олар файл атауы бойынша топтасып және бірдей атты иеленгендіктен бір топқа жатады.
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
    *.<locale>.html                      -- HTML мазмұнын арнайы тіл үшін анықтайды/<device-class>                        -- (міндетті емес) ресурстарды құрал классы арқылы ауқымдау үшін рұқсат береді(тек бір жеке құрал классы, өрнек қолдауы жоқ)
    Файлдар үшін осындай ережелер бастапқы каталог үшін ретінде қабылданады

      /menu                                    -- Осы каталогта сақталған файлдар мәзір құрылымына қол жетімді етеді
*.json                                -- мәщір анықтамасын қамтитын JSON ресурстар әліпбилік ретте қызмет етеді


단순 모듈 - 모듈 정의
**********************************

시작하기 모듈은 현재 테마에 사용자 고유 자원을 빨리 삽입하기 위해 시작 플랫폼으로
사용할 수 있는 미리 정의된 모듈입니다. 하위 폴더(config 또는 head) 중 하나에
Javascript, CSS 또는 마크업 파일을 추가하십시오. WebSphere Portal에서 자원을
선택합니다. 변경사항을 적용하려면 WebSphere Portal의 자원 수집자 캐시를
무효화해야 합니다.
이를 수행하기 위해 관리 -> 테마 분석기 -> 유틸리티 -> Control Center로 이동합니다.
Control Center 페이지에서 '캐시 무효화' 아래에 있는 링크를 클릭하십시오.

다음 섹션에서는 단순 모듈 기능의 전체 목록을 제공합니다.

디렉토리 구조
    /<module-id>                               -- /modules 아래의 각 디렉토리가 새 모듈을 정의합니다(버전 지원 없음).
       prereqs.properties                      -- 이 모듈의 전제조건을 정의하는 선택적 파일입니다.
         파일 컨텐츠는 줄 바꾸기마다 하나의 모듈 ID로 구성됩니다. 모듈 버전이 지원되지 않습니다. 그 예는 다음과 같습니다.
         <module-id>
         <module-id>
       capabilities.properties                 -- 이 모듈의 기능을 정의하는 선택적 파일입니다.
         파일 컨텐츠는 줄 바꾸기마다 하나씩, 이름과 값이 등호로 구분되는 스타일과 같은 특성으로 구성됩니다.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- 이 모듈의 제목과 설명을 정의하는 선택적 파일입니다.
         파일 컨텐츠는 아래에 표시된 스타일과 같은 특성으로 구성됩니다.
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- 이 디렉토리에 저장된 파일이 헤드 섹션에 제공됩니다.
        *.js                                   -- Javascript 자원이 알파벳순으로 제공됩니다. 이 자원은 파일
                                                  이름별로 그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
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

        *.css                                  -- CSS 자원이 알파벳순으로 제공됩니다. 이 자원은 파일
                                                  이름별로 그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
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

        *.html                                 -- HTML 자원이 알파벳순으로 제공됩니다. 이 자원은 파일
                                                  이름별로 그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
                                                  그룹 내에 다음 확장자 변형이 있습니다.
          *.html                               -- 기본 HTML 컨텐츠 정의
          *.rtl.html                           -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 HTML 정의
          *.<locale>.html                      -- 특정 언어의 HTML 컨텐츠 정의

        /<device-class>                        -- (선택사항) 디바이스 클래스로 자원의 범위를 지정할 수 있음(하나의 개별 디바이스 클래스, 등식 지원 없음)
          상위 디렉토리에서는 파일의 동일한 규칙이 여기에 적용됨

      /config                                  -- 이 디렉토리에 저장된 파일이 자원 수집자의 구성 섹션에 제공됩니다. 이는 대개 본문 닫기 태그 바로 앞에 있습니다.
        *.js                                   -- Javascript 자원이 알파벳순으로 제공됩니다. 이 자원은 파일
                                                  이름별로 그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
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

        *.html                                 -- HTML 자원이 알파벳순으로 제공됩니다. 이 자원은 파일
                                                  이름별로 그룹화되며 이름이 동일하면 동일한 그룹에 속합니다.
                                                  그룹 내에 다음 확장자 변형이 있습니다.
          *.html                               -- 기본 HTML 컨텐츠 정의
          *.rtl.html                           -- 오른쪽에서 왼쪽으로 쓰는 언어에 사용할 HTML 정의
          *.<locale>.html                      -- 특정 언어의 HTML 컨텐츠 정의

        /<device-class>                        -- (선택사항) 디바이스 클래스로 자원의 범위를 지정할 수 있음(하나의 개별 디바이스 클래스, 등식 지원 없음)
          상위 디렉토리에서는 파일의 동일한 규칙이 여기에 적용됨

      /menu                                    -- 이 디렉토리에 저장된 파일은 메뉴 프레임워크에서 사용 가능하게 됩니다.
        /*.json                                -- 알파벳순으로 제공되는 메뉴 정의가 포함된 JSON 자원


Eenvoudige modules - Moduledefinitie
************************************

De module Aan de slag is een vooraf gedefinieerde module die u kunt gebruiken als startplatform om snel uw eigen resources aan te brengen in uw huidige thema. Voeg simpelweg uw JavaScript-, CSS- of markupbestand toe aan een van de submappen (config of head) en uw resources worden opgenomen in WebSphere Portal. Merk op dat u de cache voor de resourceaggregator ongeldig moet maken, zodat WebSphere Portal de wijzigingen kan oppikken.
U kunt dit doen door het selecteren van Beheer -> Thema-analyseprogramma -> Hulpprogramma's -> Control Center.
Op de Control Center-pagina klikt u op de link onder 'Cache ongeldig maken'.

In de onderstaande sectie vindt een volledige lijst van de mogelijkheden voor eenvoudige modules:

Directorystructuur
    /<module-id>                               -- elke directory onder /modules definieert een nieuwe module (geen ondersteuning
                                                  voor versies)
       prereqs.properties                      -- Optioneel bestand met de definitie van de prereqs van de module.
         De bestandscontent bestaat uit één module-id per nieuwe regel. Moduleversies worden niet ondersteund. Voorbeeld:
         <module-id>
         <module-id>
       capabilities.properties                 -- Optioneel bestand voor de definities van de mogelijkheden van de module.
         De bestandscontent heeft een op eigenschappen lijkende indeling, in de vorm van een naam en een waarde met een gelijkteken          ertussen, met telkens één item per regel.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Optioneel bestand voor het definiëren van de titel en beschrijving voor de module.
         De bestandscontent heeft een op eigenschappen lijkende indeling, zoals hieronder wordt aangegeven.
         title.<locale>=<title>
         description.<locale>=<description>
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

      /config                                  -- De bestanden in deze directory worden aangeboden voor de sectie config van de resourceaggregator. Deze worden doorgaans aangebracht vlak voor de afsluitende tag voor de corpus.
        *.js                                   -- Javascript-resources die in alfabetische volgorde worden aangeboden. Deze zijn
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

        *.html                                 -- HTML-resources die in alfabetische volgorde worden aangeboden. Deze zijn
                                            gegroepeerd op bestandsnaam en zolang zij maar dezelfde naam hebben behoren ze tot                                                       dezelfde groep.
                                                  Binnen een groep zijn de volgende extensievarianten beschikbaar:
    *.html                               -- Definitie van de hoofd-HTML-content
    *.rtl.html                           -- Definitie van de HTML om te gebruiken voor 'rechts-naar-links'-talen
    *.<locale>.html                      -- Definitie van de HTML-content voor een bepaalde taal

        /<device-class>                        -- (optioneel) hiermee kunnen resources worden ingedeeld per apparatuurcategorie (alleen één                                             afzonderlijke apparatuurcategorie, geen ondersteuning voor vergelijkingen)
    Voor bestanden geldt hier dezelfde regel als voor de bovenliggende directory

      /menu                                    -- De bestanden in deze directory worden beschikbaar gesteld voor het menuframework
        /*.json                                -- JSON-resources die de menudefinitie bevatten worden in alfabetische volgorde                                                   aangeboden.


Enkle moduler - Moduldefinisjon (norsk)
**********************************

Komme i gang-modulen er en forhåndsdefinert modul som du kan bruke som startplattform for raskt å
sette inn dine egne ressurser i det gjeldende temaet. Legg bare din Javascript-, CSS- eller kodefil i en av undermappene (config eller head), så
blir ressursene dine plukket opp av WebSphere Portal. Merk at du må ugyldiggjøre Resource
Aggregator-hurtigbufferen for at WebSphere Portal skal kunne plukke opp endringene.
Du kan gjøre dette ved å gå til Administrasjon -> Temaanalysator -> Funksjoner -> Kontrollsenter.
På siden Kontrollsenter klikker du på linken under 'Ugyldiggjør hurtigbuffer'.

Nedenfor finner du en fullstendig liste over funksjoner for enkle moduler:

Katalogstruktur
    /<module-id>                               -- hver katalog under /modules definerer en ny modul (ikke støtte for versjoner)
       prereqs.properties                      -- Valgfri fil som definerer forhåndskravene for modulen.
         Filinnholdet består av en modul-ID per ny linje. Modulversjoner støttes ikke. Eksempel:
         <module-id>
         <module-id>
       capabilities.properties                 -- Valgfri fil som definerer funksjonene i denne modulen.
         Filinnholdet har en properties-liknende stil med navn og verdi skilt med et likhetstegn, ett navn med verdi per ny linje.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Valgfri fil som definerer tittel og beskrivelse for denne modulen.
         Filinnholdet har en properties-liknende stil som vist nedenfor.
         title.<locale>=<title>
         description.<locale>=<description>
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

      /menu                                    -- Filer som er lagret i denne katalogen, blir gjort tilgjengelige for menyrammeverket
        /*.json                                -- JSON-ressurser som inneholder menydefinisjoner i alfabetisk rekkefølge


Moduły proste - definicja modułu (polski)
**********************************

Moduł pierwszych kroków to predefiniowany moduł, którego można użyć jako punktu wyjścia dla
szybkiego wstawiania własnych zasobów do bieżącej kompozycji. Należy po prostu dodać plik
JavaScript, CSS lub języka znaczników do jednego z podfolderów (config lub head), co spowoduje
wykrycie zasobów przez produkt WebSphere Portal. Należy unieważnić pamięć
podręczną agregatora zasobów produktu WebSphere Portal, aby zmiany zostały uwzględnione. Czynność
tę można wykonać na stronie Administrowanie -> Analizator kompozycji -> Programy narzędziowe
-> Centrum sterowania. Na stronie Centrum sterowania należy kliknąć odsyłacz w sekcji Unieważnianie pamięci podręcznej. 

Następująca sekcja zawiera pełną listę funkcji modułów prostych: 

Struktura katalogów
    /<identyfikator modułu>                    -- Każdy katalog w katalogu /modules definiuje nowy moduł (wersje nie są obsługiwane).
       prereqs.properties                      -- Opcjonalny plik definiujący wymagania wstępne danego modułu.
Treść pliku składa się z identyfikatorów modułów w osobnych wierszach. Wersje modułu nie są obsługiwane. Przykład:
         <identyfikator modułu>
         <identyfikator modułu>
       capabilities.properties                 -- Opcjonalny plik definiujący możliwości danego modułu.
Treść pliku zawiera właściwości, takie jak styl, w postaci nazwy i wartości
rozdzielonych znakiem równości, po jednej właściwości w wierszu.
         <nazwa>=<wartość>
         <nazwa>=<wartość>
       localization.properties                 -- Opcjonalny plik definiujący tytuł i opis danego modułu.
Treść pliku zawiera właściwości, takie jak styl, w postaci przedstawionej poniżej.
         title.<ustawienia narodowe>=<tytuł>
         description.<ustawienia narodowe>=<opis>
      /head                                    -- Pliki zapisane w tym katalogu będą udostępniane w sekcji head.
        *.js                                   -- Zasoby JavaScript udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy.
          W ramach grupy występują następujące wersje rozszerzenia:
          *.js                                 -- Definiuje główną treść skompresowaną JavaScript.
          *.js.uncompressed.js                 -- Definiuje główną treść debugowania JavaScript.
          *.rtl.js                             -- Definiuje skompresowany kod JavaScript do użycia dla języków z zapisem od prawej do lewej.
          *.rtl.js.uncompressed.js             -- Definiuje kod debugowania JavaScript do użycia dla języków z zapisem od prawej do lewej.
          *.<ustawienia narodowe>.js           -- Definiuje skompresowaną treść JavaScript dla konkretnego języka.
          *.<ustawienia narodowe>.js.uncompressed.js   -- Definiuje treść debugowania JavaScript dla konkretnego języka.

W następującej sekcji są zdefiniowane pliki alternatywne. Istnieje możliwość użycia dowolnej z tych wersji, lecz nie można ich mieszać.
          *.min.js                             -- Definiuje główną treść skompresowaną JavaScript.
          *.js                                 -- Definiuje główną treść debugowania JavaScript.
          *.rtl.min.js                         -- Definiuje skompresowany kod JavaScript do użycia dla języków z zapisem od prawej do lewej.
          *.rtl.js                             -- Definiuje kod debugowania JavaScript do użycia dla języków z zapisem od prawej do lewej.
          *.<ustawienia narodowe>.min.js       -- Definiuje skompresowaną treść JavaScript dla konkretnego języka.
          *.<ustawienia narodowe>.js           -- Definiuje treść debugowania JavaScript dla konkretnego języka. 

          *.css                                -- Zasoby CSS udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy.
W ramach grupy występują następujące wersje rozszerzenia:
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
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy.
W ramach grupy występują następujące wersje rozszerzenia:
          *.html                               -- Definiuje główną treść HTML.
          *.rtl.html                           -- Definiuje kod HTML do użycia dla języków z zapisem od prawej do lewej.
          *.<ustawienia narodowe>.html         -- Definiuje treść HTML dla konkretnego języka. 

        /<klasa urządzeń>                      -- (opcjonalna) Umożliwia
określenie dla zasobu zasięgu będącego klasą urządzeń. (Tylko pojedyncza klasa urządzeń, równania nie są obsługiwane).
Tutaj dla plików ma zastosowanie ta sama reguła co dla katalogu macierzystego.
      /config                                  -- Pliki zapisane w tym katalogu
będą udostępniane w sekcji config agregatora zasobów. Zazwyczaj jest to miejsce bezpośrednio przed zamykającym znacznikiem body.
        *.js                                 -- Zasoby JavaScript udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy.
                                               W ramach grupy występują następujące wersje rozszerzenia:
          *.js                                 -- Definiuje główną treść skompresowaną JavaScript.
          *.js.uncompressed.js                 -- Definiuje główną treść debugowania JavaScript.
          *.rtl.js                             -- Definiuje skompresowany kod JavaScript do użycia dla języków z zapisem od prawej do lewej.
          *.rtl.js.uncompressed.js             -- Definiuje kod debugowania JavaScript do użycia dla języków z zapisem od prawej do lewej.
          *.<ustawienia narodowe>.js           -- Definiuje skompresowaną treść JavaScript dla konkretnego języka.
          *.<ustawienia narodowe>.js.uncompressed.js   -- Definiuje treść debugowania JavaScript dla konkretnego języka.

W następującej sekcji są zdefiniowane pliki alternatywne. Istnieje
możliwość użycia dowolnej z tych wersji, lecz nie można ich mieszać.
          *.min.js                             -- Definiuje główną treść skompresowaną JavaScript.
          *.js                                 -- Definiuje główną treść debugowania JavaScript.
          *.rtl.min.js                         -- Definiuje skompresowany kod JavaScript do użycia dla języków z zapisem od prawej do lewej.
          *.rtl.js                             -- Definiuje kod debugowania JavaScript do użycia dla języków z zapisem od prawej do lewej.
          *.<ustawienia narodowe>.min.js       -- Definiuje skompresowaną treść JavaScript dla konkretnego języka.
          *.<ustawienia narodowe>.js           -- Definiuje treść debugowania JavaScript dla konkretnego języka. 

          *.html                               -- Zasoby HTML udostępniane w kolejności alfabetycznej. Są
one pogrupowane według nazwy pliku i o ile mają taką samą nazwę, należą do tej samej grupy.
W ramach grupy występują następujące wersje rozszerzenia:
          *.html                               -- Definiuje główną treść HTML.
          *.rtl.html                           -- Definiuje kod HTML do użycia dla języków z zapisem od prawej do lewej.
          *.<ustawienia narodowe>.html         -- Definiuje treść HTML dla konkretnego języka.

        /<klasa urządzeń>                      -- (opcjonalna) Umożliwia
określenie dla zasobu zasięgu będącego klasą urządzeń. (Tylko pojedyncza klasa
urządzeń, równania nie są obsługiwane). Tutaj dla plików ma zastosowanie ta sama reguła co dla katalogu macierzystego.


      /menu                                    -- Pliki zapisane w tym katalogu będą udostępniane dla środowiska menu.
        /*.json                                -- Zasoby JSON zawierające definicję menu udostępniane w kolejności alfabetycznej. 


Módulos simples - Definição de módulo (Português)
**********************************

O módulo de introdução é um módulo predefinido que pode ser utilizado como uma plataforma de partida para
injectar rapidamente os seus recursos no tema actual. Basta adicionar o ficheiro Javascript, CSS
ou de marcação dentro de uma das subpastas (config ou head) e os recursos serão recolhidos
pelo WebSphere Portal. Tenha em atenção que é necessário invalidar a cache do agregador de recursos
para que o WebSphere Portal recolha as alterações.
Para tal, pode aceder a Administração -> Analisador de temas -> Utilitários -> Control Center.
Na página Control Center, faça clique na ligação sob 'Invalidar cache'.

A secção que se segue apresenta uma lista completa de componentes de Módulos simples:

Estrutura de directórios
    /<module-id>                               -- cada directório abaixo/módulos define um novo módulo (sem suporte de versões)
       prereqs.properties                      -- Ficheiro opcional que define os pré-requisitos deste módulo.
         O conteúdo do ficheiro é constituído por um id de módulo por nova linha. Não são suportadas versões de módulos. Exemplo:
         <module-id>
         <module-id>
       capabilities.properties                 -- Ficheiro opcional que define as capacidades deste módulo.
         O conteúdo do ficheiro é constituído por um estilo semelhante ao das propriedades, com o nome e o valor separados por um sinal de igual, um por nova linha.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Ficheiro opcional que define o título e a descrição deste módulo.
         O conteúdo do ficheiro é constituído por um estilo semelhante ao das propriedades, tal como apresentado abaixo.
         title.<locale>=<title>
         description.<locale>=<description>
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
    É aplicável aqui a mesma regra para ficheiros que para o directório ascendente      /config                                  -- Os ficheiros armazenados neste directório serão apresentados na secção config do agregador de recursos. Geralmente, esta aparece imediatamente antes do controlo de fecho do corpo.*.js                                   -- Recursos Javascript apresentados por ordem alfabética. Estão agrupados
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
    *.<locale>.html                      -- Define o conteúdo HTML para um idioma específico/<device-class>                        -- (opcional) permite definir o âmbito de recursos por classe de dispositivo (apenas uma classe de dispositivo individual, sem suporte de equação)
    É aplicável aqui a mesma regra para ficheiros que para o directório ascendente

      /menu                                    -- Os ficheiros armazenados neste directório serão disponibilizados para a nova estrutura
        /*.json                                -- Recursos JSON que contêm a definição de menu apresentados por ordem alfabética


Módulos Simples – Módulo Definição (Inglês) Atenção**************************************

O iniciar módulo é um módulo pré-definidos que você pode utilizar como plataforma de partida para injetar rapidamente seus próprios recursos no tema atual. Simplesmente adicione seu Javascript, CSS ou de marcação de arquivo dentro de uma das subpastas (config ou cabeçalho) e seus recursos será apanhado pelo WebSphere Portal. Observe que você precisa invalidar a cache do agregador de recurso para o WebSphere Portal para assimilar as alterações.
Você pode fazer isso indo para Administração-> Theme Analyzer-> Utilitários-> Centro de Controle.
Na página centro de controle, clique no link sob 'Invalidar Cache'.

A seção a seguir fornece uma lista completa de recursos de Módulos simples :

Estrutura de Diretórios /<module-id> -- cada diretório abaixo /modules define prereqs.properties um novo módulo (não suporte para versões) -- arquivo opcional que define o prereqs deste módulo.
         O conteúdo do arquivo consistem em um id de módulo por nova linha. versões do Módulo não são suportados. Exemplo: <module-id> <module-id> capabilities.properties -- arquivo opcional definir as capacidades deste módulo.
         O conteúdo do arquivo consistem em um estilo de propriedades com o nome e valor separados por um sinal de igual, um por linha nova.
         <name>=<value> <name>=<value> localization.properties -- arquivo opcional que define o título e a descrição deste módulo.
         O conteúdo do arquivo consistem em um estilo de propriedades como mostrado abaixo.
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- Arquivos armazenados nesse diretório serão entregues na seção de cabeçalho
        *.js                                   -- Recursos Javascript entregues em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                                  Em um grupo as seguintes variações de extensão existe: *.js, Define a *.js.uncompressed.js conteúdo javascript compactado principais -- Define a *.rtl.js o conteúdo principal de depuração javascript -- Define o javascript compactado para ser utilizado para idiomas lidos da direita para *.rtl.js.uncompressed.js -- Define o javascript de depuração a ser utilizado para a esquerda idiomas *.<locale>.js -- Define o conteúdo javascript compactado para um idioma específico *.<locale>.js.uncompressed.js -- Define o conteúdo javascript de depuração para um idioma específico A seção a seguir define uma alternativa. Você pode utilizar uma dessas variações, mas não em um modo misto.
          *.min.js -- Define o conteúdo javascript principal compactado *.js -- Define a *.rtl.min.js o conteúdo principal de depuração javascript -- Define o javascript compactado para ser utilizado para idiomas lidos da direita para *.rtl.js -- Define o javascript de depuração a ser utilizado para a esquerda idiomas *.<locale>.min.js -- Define o conteúdo javascript compactado para um idioma específico *.<locale>.js -- Define o conteúdo javascript de depuração para um idioma específico

        *.css -- recursos CSS atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                                  Em um grupo as seguintes variações de extensão existe: *.css -- Define a principal compactado CSS conteúdo *.css.uncompressed.css -- Define a *.rtl.css de conteúdo CSS principal de depuração -- Define a compactado para ser utilizado para os idiomas lidos da CSS *.rtl.css.uncompressed.css -- Define a depuração CSS a ser utilizado para a esquerda idiomas *.<locale>.css -- Define o conteúdo CSS compactado para um idioma específico *.<locale>.css.uncompressed.css -- Define o conteúdo CSS de depuração para um idioma específico A seção a seguir define uma maneira alternativa. Você pode utilizar uma dessas variações, mas não em um modo misto.
          *.min.css -- Define o conteúdo compactado CSS *.css principal -- Define a *.rtl.min.css de conteúdo CSS principal de depuração -- Define o CSS compactado para ser utilizado para *.rtl.css idiomas lidos da direita -- Define a depuração CSS a ser utilizado para a esquerda idiomas *.<locale>.min.css -- Define o conteúdo CSS compactado para um idioma específico *.<locale>.css -- Define o conteúdo CSS de depuração para um idioma específico
          
        *.html -- HTML recursos atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                                  Em um grupo as seguintes variações de extensão existe: *.html, Define a *.rtl.html conteúdo HTML principal -- Define o HTML seja usada para idiomas lidos da direita *.<locale>.html -- Define o conteúdo HTML para um idioma específico

        /<device-class>                        -- (opcional) permite colocar em escopo  recursos por classe de dispositivo (somente uma classe de dispositivo individual, sem suporte de equação)
    A mesma regra para arquivos se aplica aqui como para o diretório-pai      /config -- Os arquivos armazenados nesse diretório serão servidos na seção config do agregador de recursos. Isso é geralmente razão antes da tag de fechamento do corpo.
        *.js -- Javascript recursos atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                                  Em um grupo as seguintes variações de extensão existe: *.js, Define a *.js.uncompressed.js conteúdo javascript compactado principais -- Define a *.rtl.js o conteúdo principal de depuração javascript -- Define o javascript compactado para ser utilizado para idiomas lidos da direita para *.rtl.js.uncompressed.js -- Define o javascript de depuração a ser utilizado para a esquerda idiomas *.<locale>.js -- Define o conteúdo javascript compactado para um idioma específico *.<locale>.js.uncompressed.js -- Define o conteúdo javascript de depuração para um idioma específico A seção a seguir define uma alternativa. Você pode utilizar uma dessas variações, mas não em um modo misto.
          *.min.js -- Define o conteúdo javascript principal compactado *.js -- Define a *.rtl.min.js o conteúdo principal de depuração javascript -- Define o javascript compactado para ser utilizado para idiomas lidos da direita para *.rtl.js -- Define o javascript de depuração a ser utilizado para a esquerda idiomas *.<locale>.min.js -- Define o conteúdo javascript compactado para um idioma específico *.<locale>.js -- Define o conteúdo javascript de depuração para um idioma específico

        *.html -- HTML recursos atendidos em ordem alfabética. Elas são agrupadas por nome de arquivo e desde que tenham o mesmo nome pertencessem ao mesmo grupo.
                                                  Em um grupo as seguintes variações de extensão existe: *.html, Define a *.rtl.html conteúdo HTML principal -- Define o HTML seja usada para idiomas lidos da direita *.<locale>.html -- Define o conteúdo HTML para um idioma específico
      
/<device-class>                        -- (opcional) permite colocar em escopo  recursos por classe de dispositivo (somente uma classe de dispositivo individual, sem suporte de equação)
    A mesma regra para arquivos se aplica aqui como para o diretório-pai

      /menu -- Os arquivos armazenados nesse diretório serão disponibilizados para o menu estrutura /*.json -- os recursos JSON que contém a definição de menu servido até em ordem alfabética


Module simple - Definţie modul (Engleză)
**********************************

Modulul inţiere este un modul predfinit pe care îl puteţi utiliza ca platformă de pornire pentru a
injecta rapid propriile dumneavoastră resurse în tema curentă. Adăugaţi pur şi simplu Javascript, CSS
sau fişierul marcaj ale dumneavoastră într-un dintre subfoldere (config sau head) şi resursele dumneavoastră vor fi
alese de WebSphere Portal. Vă rugăm notaţi că trebuie să invalidaţi
cache-ul agregator resursă pentru WebSphere Portal pentru a alege modificările.
Puteţi face aceasta prin deplasarea la Administrare -> Analizor temă -> Utilitare -> Centrul de control.
Pe pagina Centrul de control apăsaţi legătura de sub 'Invalidare cache'.

 Secţiunea următoare furnizează o listă completă de caracteristici ale Modulelor simple: 

Structură directoare
    /<module-id>                               -- fiecare director de sub /module defineşte un nou modul (niciun suport pentru versiuni)
       prereqs.properties                      -- Fişierul opţional care defineşte cerinţele preliminare pentru acest modul.
         Conţinutul fişierului constă într-un ID modul pe linie nouă. Versiunile modul nu sunt suportate. Exemplu:
         <module-id>
         <module-id>
       capabilities.properties                 -- Fişier opţional care defineşte capabilităţile acestui modulul.
         Conţinutul fişierului constă într-o proprietate ca stil cu numele şi valoare separate de un semn egal, unul pe o linie nouă.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Fişier opţional care defineşte titlul şi descrierea acestui modul.
         Conţinutul fişierului constă într-o proprietate ca stil afişată mai jos.
         title.<locale>=<title>
         description.<locale>=<description>
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
    Aceeaşi regulă se aplică aici pentru directorul părinte/config                                  -- Fişierele memorate în acest director vor fi servite în secţiunea config a agregatorului resursă. Acesta este chiar înainte de tagul de închidere al corpului.
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
        *.<locale>.html                      -- Defineşte conţinutul HTML pentru o limbă specifică/<device-class>                        -- (opţional) permite definirea domeniului resurselor de către clasa dispozitiv (doar o clasă dispozitiv individuală, niciun suport ecuaţie)
    Aceeaşi regulă se aplică aici pentru directorul părinte

      /menu                                    -- Fişierele memorate în acest director vor fi servite în secţiunea menu
      *.json                                   -- Resursele JSON servite în ordine alfabetică. 


Простые модули - Определение модуля
**********************************

Модуль начала работы - это предопределенный модуль, который можно
использовать в качестве начальной платформы для быстрого добавления
собственных ресурсов в текущую тему. Добавьте файл Javascript, файл
CSS или файл с текстом на языке описания в одну из подпапок (config
или head), чтобы добавить ресурсы в WebSphere Portal. Обратите
внимание, что для применения изменений требуется очистка кэша
агрегатора ресурсов WebSphere Portal. Для этого выберите
Администрирование -> Анализатор темы -> Утилиты -> Центр управления.
На странице Центр управления щелкните на ссылке 'Аннулировать кэш'.

Ниже приведен полный список функций простых модулей: 

Структура каталогов
    /<module-id>                               -- Каждый каталог в папке /modules задает новый модуль (без поддержки версий)
       prereqs.properties                      -- Необязательный файл с описанием предварительных требований модуля.
         Каждая строка файла содержит ИД одного модуля. Версии модулей поддерживаются. Пример:
       <ИД-модуля>
       <ИД-модуля>
       capabilities.properties                 -- Необязательный файл с описанием возможностей модуля.
         Этот файл содержит свойства, такие стиль. Каждое свойство указывается в отдельной строке и
         представляет собой пару из имени и значения, разделенных знаком равенства.
         <имя>=<значение>
         <имя>=<значение>
       localization.properties                 -- Необязательный файл, содержащий заголовок и описание модуля.
         Этот файл содержит свойства, такие стиль.
         title.<локаль>=<заголовок>
         description.<локаль>=<описание>
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

      /menu                                    -- Файлы из этого каталога доступны среде меню.
        /*.json                                -- Ресурсы JSON, содержащие определения меню, в алфавитном порядке. 


Jednoduché moduly - definícia modulu (slovenčina)
**********************************

Modul Začíname je vopred definovaný modul, ktorý môžete použiť ako začiatočnú platformu pre rýchle vkladanie vlastných prostriedkov do aktuálnej témy. Stačí pridať vlastný súbor Javascript, CSS alebo súbor značiek do jednej z podzložiek (config alebo head) a produkt WebSphere Portal použije vaše prostriedky. Upozorňujeme, že musíte anulovať pamäť cache agregátora prostriedkov pre WebSphere Portal, aby sa použili zmeny. Spravíte to výberom položky ponuky Administrácia -> Analyzátor tém -> Pomocné programy -> Riadiace centrum.
Na strane Riadiace centrum kliknite na odkaz pod položkou Anulovať pamäť cache.

Nasledujúca sekcia uvádza úplný zoznam funkcií jednoduchých modulov.

Štruktúra adresára
    /<module-id>                               - Každý adresár pod /modules definuje nový modul (bez podpory verzií)
       prereqs.properties                      - Voliteľný súbor, ktorý definuje požiadavky tohto modulu.
         Obsah súboru obsahuje jedno ID modulu na novom riadku. Nie sú podporované verzie modulu. Príklad:
         <module-id>
         <module-id>
       capabilities.properties                 - Voliteľný súbor, ktorý definuje schopnosti tohto modulu.
         Obsah súboru obsahuje vlastnosti ako sú štýl, pričom názov a hodnota sú oddelené znakom rovnosti a každý pár je na novom riadku.
         <názov>=<hodnota>
         <názov>=<hodnota>
       localization.properties                 - Voliteľný súbor, ktorý definuje nadpis a opis tohto modulu.
         Obsah súboru obsahuje vlastnosti ako sú štýl, ako uvádza príklad nižšie.
         title.<locale>=<nadpis>
         description.<locale>=<opis>
      /head                                    - Súbory uložené v tomto adresári sa poskytnú v sekcii head
        *.js                                   - Prostriedky Javascript poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny. V skupine existujú tieto varianty prípony:
    *.js                                       - Definuje hlavný komprimovaný obsah javascript
    *.js.uncompressed.js                       - Definuje hlavný obsah ladenia javascript
    *.rtl.js                                   - Definuje komprimovaný javascript na použitie v jazykoch so smerom sprava doľava
    *.rtl.js.uncompressed.js                   - Definuje ladenie javascript na použitie v jazykoch so smerom sprava doľava
    *.<locale>.js                              - Definuje komprimovaný obsah javascript pre konkrétny jazyk
    *.<locale>.js.uncompressed.js              - Definuje obsah ladenia javascript pre špecifický jazyk
  Nasledujúce sekcie definujú alternatívu. Môžete použiť obe variácie, ale nemôžete ich kombinovať.
    *.min.js                                   - Definuje hlavný komprimovaný obsah javascript
    *.js                                       - Definuje hlavný obsah ladenia javascript
    *.rtl.min.js                               - Definuje komprimovaný javascript na použitie v jazykoch so smerom sprava doľava
    *.rtl.js                                   - Definuje ladenie javascript na použitie v jazykoch so smerom sprava doľava
    *.<locale>.min.js                          - Definuje komprimovaný obsah javascript pre konkrétny jazyk
    *.<locale>.js                              - Definuje obsah ladenia javascript pre špecifický jazyk

        *.css                                  - Prostriedky CSS poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny. V skupine existujú tieto varianty prípony:
    *.css                                      - Definuje hlavný komprimovaný obsah CSS
    *.css.uncompressed.css                     - Definuje hlavný obsah ladenia CSS
    *.rtl.css                                  - Definuje komprimovaný CSS na použitie v jazykoch so smerom sprava doľava
    *.rtl.css.uncompressed.css                 - Definuje ladenie CSS na použitie v jazykoch so smerom sprava doľava
    *.<locale>.css                             - Definuje komprimovaný obsah CSS pre konkrétny jazyk
    *.<locale>.css.uncompressed.css            - Definuje obsah ladenia CSS pre špecifický jazyk
  Nasledujúce sekcie definujú alternatívny spôsob. Môžete použiť obe variácie, ale nemôžete ich kombinovať.
    *.min.css                                  - Definuje hlavný komprimovaný obsah CSS
    *.css                                      - Definuje hlavný obsah ladenia CSS
    *.rtl.min.css                              - Definuje komprimovaný CSS na použitie v jazykoch so smerom sprava doľava
    *.rtl.css                                  - Definuje ladenie CSS na použitie v jazykoch so smerom sprava doľava
    *.<locale>.min.css                         - Definuje komprimovaný obsah CSS pre konkrétny jazyk
    *.<locale>.css                             - Definuje obsah ladenia CSS pre špecifický jazyk

        *.html                                 - Prostriedky HTML poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny. V skupine existujú tieto varianty prípony:
    *.html                                     - Definuje hlavný obsah HTML
    *.rtl.html                                 - Definuje HTML na použitie v jazykoch so smerom sprava doľava
    *.<locale>.html                            - Definuje obsah HTML pre špecifický jazyk

        /<device-class>                        - (voliteľné) Umožňuje nastaviť rozsah prostriedkov podľa triedy zariadenia (iba jedna individuálna trieda zariadenia, bez podpory rovníc)
    Platí tu rovnaké pravidlo pre súbory ako pre rodičovský adresár

      /config                                  - Súbory uložené v tomto adresári sa poskytnú v sekcii config v agregátore prostriedkov. Zvyčajne sa to umiestni hneď pred zatváraciu značku body.
        *.js                                   - Prostriedky Javascript poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny. V skupine existujú tieto varianty prípony:
    *.js                                       - Definuje hlavný komprimovaný obsah javascript
    *.js.uncompressed.js                       - Definuje hlavný obsah ladenia javascript
    *.rtl.js                                   - Definuje komprimovaný javascript na použitie v jazykoch so smerom sprava doľava
    *.rtl.js.uncompressed.js                   - Definuje ladenie javascript na použitie v jazykoch so smerom sprava doľava
    *.<locale>.js                              - Definuje komprimovaný obsah javascript pre konkrétny jazyk
    *.<locale>.js.uncompressed.js              - Definuje obsah ladenia javascript pre špecifický jazyk
  Nasledujúce sekcie definujú alternatívu. Môžete použiť obe variácie, ale nemôžete ich kombinovať.
    *.min.js                                   - Definuje hlavný komprimovaný obsah javascript
    *.js                                       - Definuje hlavný obsah ladenia javascript
    *.rtl.min.js                               - Definuje komprimovaný javascript na použitie v jazykoch so smerom sprava doľava
    *.rtl.js                                   - Definuje ladenie javascript na použitie v jazykoch so smerom sprava doľava
    *.<locale>.min.js                          - Definuje komprimovaný obsah javascript pre konkrétny jazyk
    *.<locale>.js                              - Definuje obsah ladenia javascript pre špecifický jazyk

        *.html                                 - Prostriedky HTML poskytované v abecednom poradí. Sú zoskupené podľa názvu súboru a kým majú rovnaký názov, patria do rovnakej skupiny. V skupine existujú tieto varianty prípony:
    *.html                                     - Definuje hlavný obsah HTML
    *.rtl.html                                 - Definuje HTML na použitie v jazykoch so smerom sprava doľava
    *.<locale>.html                            - Definuje obsah HTML pre špecifický jazyk

        /<device-class>                        - (voliteľné) Umožňuje nastaviť rozsah prostriedkov podľa triedy zariadenia (iba jedna individuálna trieda zariadenia, bez podpory rovníc)
    Platí tu rovnaké pravidlo pre súbory ako pre rodičovský adresár

      /menu                                    - Súbory uložené v tomto adresári sa sprístupnia pre kostru ponúk
        /*.json                                - Prostriedky JSON v abecednom poradí, ktoré obsahujú poskytovanú definíciu ponuky


Preprosti moduli – Definicija modulov (slovenščina)
**********************************

Začetni modul je vnaprej definiran modul, ki ga lahko uporabljate kot začetno platformo
za hitro vstavljanje lastnih virov v trenutno temo. Preprosto dodate svoj JavaScript, CSS ali
datoteko označb v eno od podmap (config ali head), in portal WebSphere Portal
bo zaznal vire. Ne pozabite, da morate razveljaviti predpomnilnik združevalnika virov,
da bo portal WebSphere Portal upošteval spremembe.
To lahko storite tako, da se pomaknete do možnosti Skrbništvo -> Analizator tem -> Pripomočki -> Nadzorni center.
Na strani nadzornega centra kliknite povezavo pod 'Razveljavi predpomnilnik'.

Naslednji razdelek ponuja celoten seznam funkcij preprostih modulov:

Struktura imenikov
    /<module-id>                               -- vsak imenik pod /modules definira nov modul (ni podpore za različice)
       prereqs.properties                      -- Izbirna datoteka, ki definira predpogoje tega modula
         Vsebina datoteke ima en ID modula v vsaki novi vrstici. Različice modulov niso posprte. Primer:
         <module-id>
         <module-id>
       capabilities.properties                 -- Izbirna datoteka, ki definira zmožnosti tega modula.
         Vsebina datoteke je sestavljena iz lastnosti, kot je slog (eden v vsaki novi vrstici), pri čemer so imena in vrednosti ločena z enačaji.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Izbirna datoteka, ki definira naslov in opis tega modula.
         Vsebina datoteke je sestavljena iz lastnosti, kot je slog, tako kot je prikazano spodaj.
         title.<locale>=<title>
         description.<locale>=<description>
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
          Definira razhroščevalni JavaScript za določen jezik          *.min.js                             -- Definira glavno stisnjeno vsebino JavaScript
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
                                                  Definira vsebino HTML za določen jezik                                                  Znotraj skupine obstajajo naslednje različne pripone:
          *.html                               -- Definira glavno vsebino HTML
          *.rtl.html                           -- Definira HTML za uporabo z jeziki, ki se pišejo od desne proti levi
          *.<locale>.html                      -- Definira vsebino HTML za določen jezik  

        /<device-class>                        -- (Izbirno) omogoča dodeljevanje dosega virom glede na razred naprave (le za en posamezen razred naprave, brez podpore enačb)
          Tukaj veljajo enaka pravila za datoteke kot v nadrejenem imeniku
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
          Definira razhroščevalni JavaScript za določen jezik          *.min.js                             -- Definira glavno stisnjeno vsebino JavaScript
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

      /menu                                    -- Datoteke, shranjene v tem imeniku, bodo na voljo menijskemu ogrodju
        /*.json                                -- Viri JSON, ki vsebujejo menijske definicije, podani v abecednem vrstnem redu 


Enkla moduler - Moduldefinition (svenska)
**********************************

Komma-igång-modulen är en fördefinierad modul som du kan använda som startplattform för att snabbt infoga egna resurser i det aktuella temat. Lägg helt enkelt till din JavaScript-, CSS- eller märkkodsfil i en av undermapparna (config eller head) så plockas dina resurser upp av WebSphere Portal. Observera att du måste ogiltigförklara resursaggregeringscachen så att WebSphere Portal kan plocka upp ändringarna.
Du kan göra detta genom att gå till Administration -> Temaanalys -> Verktyg -> Kontrollcenter.
På sidan Kontrollcenter klickar du på länken under Ogiltigförklara cache.

I följande avsnitt finns en komplett lista över funktioner för enkla moduler: 

Katalogstruktur
    /<module-id>                               -- Varje katalog under /modules definierar en ny modul (utan stöd för versioner)
       prereqs.properties                      -- Valfri fil som definierar förutsättningar för den här modulen.
         Filen innehåller ett modul-ID per ny rad. Modulversioner hanteras inte. Exempel:
         <module-id>
         <module-id>
       capabilities.properties                 -- Valfri fil som definierar modulens funktioner.
         Filen består av egenskaper som style med namn och värde åtskilda av ett likhetstecken med ett par per rad.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Valfri fil som definierar namn och beskrivning för den här modulen.
         Filen innehåller egenskaper som style. Se nedan.
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- Filer som lagras i den här katalogen kommer att tillhandahållas i head-avsnittet
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
    Samma regel tillämpas på regler här som för den överordnade katalogen/config                                  -- Filer som lagras i den här katalogen tillhandahålls i config-avsnittet i resursaggregeringen.  Det är vanligtvis precis före det avslutande märkordet för koden. 
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
    *.<locale>.html                      -- Definierar HTML-innehållet för ett visst språk/<device-class>                        -- (valfritt) tillåter att resursomfattningar bestäms av enhetsklassen (endast en enskild enhetsklass utan ekvationsstöd)
    Samma regel tillämpas på regler här som för den överordnade katalogen

      /menu                                    -- Filer som lagras i den här katalogen görs tillgängliga för menyramverket
        /*.json                                -- JSON-resurser som innehåller menydefinitionen och tillhandahålls i bokstavsordning


Simple Modules - Module Definition (English)
**********************************

The getting started module is a pre-defined module that you can use as starting platform to
quickly inject your own resources into the current theme. Simply add your Javascript, CSS
or markup file inside one of the subfolders (config or head) and your resources will be picked
up by WebSphere Portal. Please note that you need to invalidate the resource aggregator cache
for WebSphere Portal to pick up the changes.
You can do this by going to Administration -> Theme Analyzer -> Utilities -> Control Center.
On the Control Center page click the link under 'Invalidate Cache'.

The following section provides a complete list of features of Simple Modules:

Directory Structure
    /<module-id>                               -- each directory below /modules defines a new module (no support for versions)
       prereqs.properties                      -- Optional file defining the prereqs of this module.
         The file content consist of one module id per new line. Module versions are not supported. Example:
         <module-id>
         <module-id>
       capabilities.properties                 -- Optional file defining the capabilities of this module.
         The file content consist of a properties like style with the name and value separated by an equal sign, one per new line.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- Optional file defining title and description of this module.
         The file content consist of a properties like style like shown below.
         title.<locale>=<title>
         description.<locale>=<description>
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

      /menu                                    -- Files stored in this directory will be made available to the menu framework
        /*.json                                -- JSON resources containing the menu definition served up in alphabetical order


Yalın Modüller - Modül Tanımlaması (Türkçe)
*******************************************

Başlangıç (getting started) modülü, kendi kaynaklarınızı yürürlükteki temaya hızla eklemek
için başlama noktası olarak kullanabileceğiniz önceden tanımlanmış bir modüldür. Javascript,
CSS ya da biçimleme dili dosyanızı alt klasörlerden birine (config ya da head) eklemeniz
yeterlidir; kaynaklarınız WebSphere Portal tarafından alınır. WebSphere Portal'ın değişiklikleri
alması için kaynak toplayıcı önbelleğini geçersiz kılmanız gerektiğini unutmayın. Bunu yapmak için
Denetim -> Tema Analizci -> Yardımcı Programlar -> Denetim Merkezi'ne gidin. Denetim Merkezi
sayfasında 'Önbelleği Geçersiz Kıl' altındaki bağlantıyı tıklatın.

Aşağıda, yalın modüllere ilişkin özelliklerin tam bir listesi verilmiştir:

Dizin Yapısı
    /<modül-tanıtıcısı>                        -- /modules altındaki her dizin yenib ri modül tanımlar (sürüm desteği yoktur)
       prereqs.properties                      -- Bu modüle ilişkin önkoşulları tanımlayan isteğe bağlı dosya
         Dosya, her yeni satır başına tek bir modül tanıtıcısından oluşur. Modül sürümleri desteklenmez. Örnek:
         <modül-tanıtıcısı>
         <modül-tanıtıcısı>
       capabilities.properties                 -- Bu modülün yeteneklerini tanımlayan isteğe bağlı dosya
         Dosya, yeni satır başına 1 tane olmak üzere, adın ve değerin eşittir işaretiyle ayrıldığı, özellikler dosyası benzeri bir biçeme sahiptir.
         <ad>=<değer>
         <ad>=<değer>
       localization.properties                 -- Bu modülün başlığını ve tanımını belirleyen isteğe bağlı dosya
         Dosyanın biçemi, aşağıda gösterildiği gibi, bir özellikler dosyasına benzer.
         title.<ülke-değeri>=<başlık>
         description.<ülke-değeri>=<tanım>
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

      /menu                                    -- Bu dizinde saklanan dosyalar menü çerçevesine sunulur.
         /*.json                               -- Menü tanımlamasının bulunduğu, alfabetik sırayla sunulan JSON kaynakları.


Прості модулі - Визначення модулів (українська)
**********************************

Готовий модуль Початок роботи можна використовувати одразу, щоб швидко вставити власні ресурси в поточну тему. Просто додайте свій
файл Javascript, CSS або файл розмітки в одну з вкладених папок (config або head), і ваші ресурси буде завантажено у WebSphere
Portal. Пам'ятайте: для того щоб зміни набули чинності, необхідно анулювати кеш агрегатора ресурсів WebSphere Portal.
Для цього виберіть Адміністрування -> Аналізатор тем -> Службові програми -> Центр керування.
На сторінці Центру керування перейдіть за посиланням "Анулювати кеш".

У наступному розділі наведено повний список компонентів простих модулів:

Структура каталогів
    /<module-id>                               -- кожен із наведених нижче каталогів/модулів визначає новий модуль (без підтримки версій)
       prereqs.properties                      -- необов'язковий файл; визначає попередні вимоги для цього модуля.
         Файл містить ідентифікатори модулів, кожний в окремому рядку. Версії модулів не підтримуються. Наприклад:
         <module-id>
         <module-id>
       capabilities.properties                 -- необов'язковий файл; визначає функції цього модуля.
         Файл містить властивості типу стилю, імена та значення яких записано    через знак дорівнює, кожна властивість в окремому рядку.
         <name>=<value>
         <name>=<value>
       localization.properties                 -- необов'язковий файл; визначає заголовок та опис цього модуля.
         Файл містить властивості типу стилю, як показано нижче.
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- Файли, що зберігаються в цьому каталозі, надаються в розділі head
        *.js                                   -- Ресурси Javascript, що надаються, в алфавітному порядку. Їх згруповано за
                                                  іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть до
                                                  однієї групи.
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

        *.css                                  -- Ресурси CSS, що надаються, в алфавітному порядку. Їх згруповано за
                                                  іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть до
                                                  однієї групи.
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

        *.html                                 -- Ресурси HTML, що надаються, в алфавітному порядку. Їх згруповано за
                                                  іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть до
                                                  однієї групи.
                                                  У межах однієї групи існують такі варіанти розширень:
          *.html                               -- визначає вміст головного файлу HTML;
          *.rtl.html                           -- визначає вміст файлу HTML для мов із письмом справа наліво;
          *.<locale>.html                      -- визначає вміст файлу HTML для вказаної мови.

        /<device-class>                        -- (необов'язково) дозволяє визначити область дії ресурсів за класом пристроїв
                                                  (лише один окремий клас пристроїв, без підтримки рівнянь)
          Для файлів застосовується тут те саме правило, що й для батьківського каталогу

      /config                                  -- Файли, що зберігаються в цьому каталозі, надаються в розділі config
                                                  агрегатора ресурсів. Зазвичай це прямо перед закриваючим тегом body.
        *.js                                   -- Ресурси Javascript, що надаються, в алфавітному порядку. Їх згруповано за
                                                  іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть до
                                                  однієї групи.
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

        *.html                                -- Ресурси HTML, що надаються, в алфавітному порядку. Їх згруповано за
                                                  іменем файлу. Таким чином, ресурси з однаковим іменем файлу належатимуть до
                                                  однієї групи.
                                                  У межах однієї групи існують такі варіанти розширень:
          *.html                               -- визначає вміст головного файлу HTML;
          *.rtl.html                           -- визначає вміст файлу HTML для мов із письмом справа наліво;
          *.<locale>.html                      -- визначає вміст файлу HTML для вказаної мови.

        /<device-class>                        -- (необов'язково) дозволяє визначити область дії ресурсів за класом пристроїв (лише один окремий клас пристроїв, без підтримки рівнянь)
          Для файлів застосовується тут те саме правило, що й для батьківського каталогу.

      /menu                                    -- Файли, що зберігаються в цьому каталозі, надаються в структурі меню
        /*.json                                -- Ресурси JSON, що містять визначення меню, які надаються в алфавітному порядку.


简单模块 - 模块定义（中文版）
**********************************

入门模块是一种可作为启动平台快速将您自己的资源注入当前主题的预定义模块。仅需在某一子文件夹（config 或 head）中添加 Javascript、CSS 或标记文件，WebSphere Portal 就可识别您的资源。请注意，需要将 WebSphere Portal 的资源聚集器高速缓存设定为无效才能使更改生效。
您可以通过转至管理 -> 主题分析器 -> 实用程序 -> 控制中心来执行上述操作。
在“控制中心”页面上单击“将高速缓存设定为无效”下的链接。

以下部分提供了简单模块功能的完整列表：

目录结构
    /<module-id>                               -- 每个目录下/模块定义一个新的模块（不支持版本）
       prereqs.properties                      -- 用于对应该模块先决条件的可选文件。
         文件内容为每行一个模块标识。不支持模块版本。例如：
         <module-id>
         <module-id>
       capabilities.properties                 -- 用于定义该模块功能的可选文件。
         文件内容的样式类似于属性样式，并以等号将名称和值隔开，每行一个。
         <name>=<value>
         <name>=<value>
       localization.properties                 -- 用于定义该模块标题和描述的可选文件。
         文件内容的样式类似于属性样式，如下所示。
         title.<locale>=<title>
         description.<locale>=<description>
      /head                                    -- head 部分中将提供存储在此目录中的文件
        *.js                                   -- 按字母顺序提供 Javascript 资源。按文件名进行分组，只要这些资源的名称相同，它们就属于同一组。
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
    此处应用的文件规则与父目录规则相同/config                                  -- 资源聚集器的 config 部分中将提供存储在此目录中的文件。通常就位于主体结束标记之前。
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
    *.<locale>.html                      -- 定义了特定语言的 HTML 内容/<device-class>                        -- （可选）允许按设备类（仅限单个设备类，不支持公式）查看资源。
    此处应用的文件规则与父目录规则相同

      /menu                                    -- 菜单框架将可使用存储在此目录中的文件
        /*.json                                -- 包含按字母顺序提供的菜单定义的 JSON 资源


簡式模組 - 模組定義（繁體中文）
**********************************

入門模組是一個預先定義的模組，可使用它作為開始平台，
來快速地將您的專屬資源注入到現行佈景主題中。您只需在其中一個子資料夾（config 或
head）中新增您的 Javascript、CSS 或標記檔案，WebSphere Portal
便會套用您的資源。請注意，您需要使資源聚集器快取失效，
WebSphere Portal 才能套用您的變更。為此，請執行以下動作：
移至「管理」->「佈景主題分析器」->「公用程式」->「控制中心」。
在「控制中心」頁面上，按一下「使快取失效」鏈結。

下列小節提供簡式模組特性的完成清單：

目錄結構
    /<module-id>                               -- /modules 下方的每個目錄定義一個新的模組（不支援版本）
       prereqs.properties                      -- 定義此模組必備項目的選用性檔案。
         檔案內容是每一行包含一個模組 ID。不支援模組版本。範例：
         <module-id>
         <module-id>
       capabilities.properties                 -- 定義此模組功能的選用性檔案。
         檔案內容包含之內容的樣式，與名稱和值以等號區隔的樣式相似，每個名稱/值配對一行。
         <name>=<value>
         <name>=<value>
       localization.properties                 -- 定義此模組的標題和說明的選用性檔案。
         該檔案內容包含類似於下面所示樣式的內容。
         title.<locale>=<title>
         description.<locale>=<description>
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



      /menu                                    -- 儲存在此目錄中的檔案將在功能表架構中可用
        /*.json                                -- 包含功能表定義、將按字母順序顯示的 JSON 資源


