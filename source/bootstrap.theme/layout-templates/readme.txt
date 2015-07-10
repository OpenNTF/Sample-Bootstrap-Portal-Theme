Layouts Overview (English)
****************

This 'layout-templates' folder within WebDAV is a well defined folder by WebSphere Portal to define which layout 
templates exist and can be used on a page from the toolbar. Within this 
folder is one folder with layout.html file per layout - create your own folder for your own layout. You can copy,
rename and modify one of the existing folders in order to see and learn the layout.html syntax that is required.

A summary of the layout.html syntax is as follows:

- There is one hidden container at the top of the file. Your custom layout should always have this one
  hidden container at the top of the file unchanged from what you see in the out-of-the-box layouts.
  The container classes should not be changed, and the container name should remain "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Following the one hidden container is the visible containers, such as:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Here you need to decide how many visible containers your layout will have, and which will be column-like 
  and which will be grid/row-like. Copy or delete container div lines until you have the needed number of 
  containers, and then adjust the container classes and names as needed. Copy a wpthemeCol container div line
  for the ones that will be column-like. Copy a wpthemeRow container div line for the ones that will be
  grid/row-like.
  
  For the classes, reuse the Portal classes as much as possible (as some of them are required), but then you may
  also need to define and add some of your own classes in order to slightly override and adjust certain styles 
  to get the custom layout you desire.
  
  For the names, use our recommended naming convention. There must always be one container named 
  "ibmMainContainer" for the main content of the page: 
  
  - "ibmMainContainer" (the primary, main content of the page)
  
  If there are other containers, we recommend using one of the following other names to offer smooth 
  switching between your layouts and the out-of-the-box layouts: 
  
  - "headline" (header or banner across the page)
  - "secondary" (content that is secondary to the main content, such as a sidebar)
  - "tertiary" (content that is secondary to the secondary content, such as a sidebar)
  - "additional" (content that is secondary or beyond to the tertiary content)
  - "footer" (banner or footer across the bottom of the page). 
  
  If you have repeated similar sections in a layout, it is recommended to append 2 through n to the end of 
  any of the recommended names, such as using "additional2" and "additional3". Using these names and this 
  naming convention will increase the likelihood of having smooth, sensible transitions when switching between 
  layouts using the toolbar.
  	       
You can also create an icon file in your custom layout folder, such as icon.gif.

Once you have your custom layout defined, then you need to register it with the system. Do this
by adding a line into the WebDAV <theme>\system\layouts.json file. Copy and modify an existing
line and make the needed changes to point to your custom layout folder and icon and to give your
custom layout a display name and unique id. Your custom layout will now appear on the toolbar.



مقدمة عن الأشكال العامة (العربية)
**********************

تعد حافظة 'layout-templates' التي توجد في WebDAV حافظة معرفة بواسطة WebSphere Portal لتعريف قوالب الشكل العام الموجودة والتي يمكن استخدامها في صفحة من خط الأدوات.  في هذه الحافظة توجد حافظة تحتوي على الملف layout.html لكل شكل عام - قم بتكوين الحافظة الخاصة بك للشكل العام الخاص بك. يمكنك نسخ واعادة تسمية وتعديل أحد الحافظات الموجودة حاليا حتى يمكن مشاهدة ومعرفة صيغة layout.html المطلوبة. 

فيما يلي ملخص لصيغة layout.html: 

- توجد حاوية تم اخفاءها بأعلى الملف. يجب أن يحتوي الشكل العام المهيأ الخاص بك على هذه الحاوية التي يتم اخفاءها بأعلى الملف بدون أن يتم تغييرها عما تشاهدة بالأشكال العامة التي يتم اتاحتها.
  لا يجب تغيير فئات الحاوية، ويجب أن يظل اسم الحاوية "ibmHiddenWidgets": 

<div class="hiddenWidgetsDiv">
	<!-- عناصر واجهة التعامل في هذه الحاوية تم اخفاءها في واجهة التعامل افتراضيا  --> 	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- فيما يلي الحاوية التي تم اخفاءها في الحاويات المرئية، مثل: 

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  هنا يجب أن تقرر عدد الحاويات المرئية التي ستكون للشكل العام الخاص بك، والحاويات التي ستكون متماثلة والحاويات التي ستكون على شكل خطوط تحديد/صفوف. قم بنسخ أو حذف سطور تقسيم الحاوية حتى يكون لديك العدد المطلوب من الحاويات، ثم قم بضبط فئات وأسماء الحاويات وفقا لما يتطلبه الأمر. نسخ سطر تقسيم حاوية wpthemeCol للحاويات التي ستكون على شكل أعمدة. قم بنسخ سطر تقسيم الحاوية wpthemeRow للحاويات التي ستكون على شكل خطوط تحديد/صفوف.
  بالنسبة للفئات، قم باعادة استخدام فئات Portal بقدر الامكان (حيث يكون بعضهم مطلوبا)، لكن عندئذ قد تحتاج
القيام بتعريف واضافة بعض الفئات الخاصة بك حتى يمكن احلال وضبط أنماط معينة للحصول على الشكل العام المهيأ المطلوب.
  بالنسبة للأسماء، استخدم مصطلحات التسمية التي يفضل استخدامها. يجب أن يكون هناك دائما حاوية بالاسم "ibmMainContainer" للمحتويات الرئيسية للصفحة:

  - "ibmMainContainer" (المحتويات الأولوية والرئيسية للصفحة)

  اذا كان هناك حاويات أخرى، يفضل استخدام أحد الأسماء الأخرى التالية لاتاحة تبديل سهل بين الأشكال العامة الخاصة بك والأشكال العامة التي يتم اتاحتها:
  - "headline" (نص رأس أو شريط اعلاني بالصفحة)
  - "secondary" (المحتويات التي تعد ثانوية بالنسبة للمحتويات الرئيسية، مثل الشريط الجانبي)
  - "tertiary" (المحتويات التي تعد ثانوية بالنسبة للمحتويات الثانوية، مثل الشريط الجانبي)
  - "additional" (المحتويات التي تعد ثانوية أو ما بعد ذلك للمحتويات ذات المرحلة الثالثة)
  - "footer" (شريط اعلاني أو نص طرف بأسفل الصفحة). 
  
  اذا قمت بتكرار أقسام متشابهة في شكل عام، يفضل الحاق 2 الى n بآخر أي اسم من الأسماء المفضلة، مثل استخدام   "additional2" و "additional3". استخدام هذه الأسماء ومصطلحات التسمية هذه سيزيد امكانية انتقال سهل عند التبديل بين الأشكال العامة باستخدام خط الأدوات.  	
يمكنك أيضا تكوين ملف شارات في حافظة الشكل العام المهيأة الخاصة بك، مثل icon.gif.

بمجرد تعريف الشكل العام المهيأ الخاص بك، يجب أن تقوم بتسجيله بالنظام. يمكن القيام بذلك من خلال اضافة سطر في الملف  WebDAV <theme>\system\layouts.json. قم بنسخ وتعديل سطر موجود واجراء التغييرات المطلوبة للاشارة الى شارة وحافظة الشكل العام المهيأ الخاص بك ولتحديد اسم عرض وكود متفرد للشكل العام المهيأ الخاص بك. سيظهر الشكل العام المهيأ الخاص بك الآن في خط الأدوات. 



Visió general de dissenys (Anglès)
****************

La carpeta "layout-templates" de WebDAV és una carpeta ben definida per WebSphere Portal per tal de definir quines plantilles de disseny existeixen i es poden utilitzar en una pàgina des de la barra d'eines.
Dins d'aquesta carpeta hi ha una carpeta amb el fitxer layout.html per dissenyar o crear la vostra pròpia carpeta amb el disseny que vulgueu. Podeu copiar, canviar el nom i modificar una de les carpetes existents per veure i aprendre la sintaxi de layout.html necessària.

A continuació es mostra un exemple de sintaxi de layout.html:

- A la part superior del fitxer hi ha un contenidor ocult. El disseny personalitzat sempre ha de tenir aquest contenidor ocult a la part superior del fitxer igual que es mostra als dissenys predefinits.
Les classes de contenidor no s'han de canviar i el nom del contenidor ha de seguir sent "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- els widgets d'aquest contenidor s'oculten a la IU per defecte -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Després del contenidor ocult hi ha els contenidors visibles, com ara:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Aquí heu de decidir quants contenidors visibles tindrà el disseny, quins tindran forma de columna i quins de graella/fila.
Copieu o suprimiu les línies divisòries del contenidor fins que hi hagi el número de contenidors necessari i, a continuació, ajusteu les classes i els noms de contenidor segons convingui.
Copieu la línia divisòria del contenidor wpthemeCol per als que tinguin forma de columna.
Copieu la línia divisòria de contenidor wpthemeRow per als que tinguin forma de graella/fila.
Per a les classes, torneu a utilitzar les classes del portal tant com sigui possible (algunes són obligatòries), però tingueu en compte que també heu de definir i afegir algunes de les classes per substituir i ajustar determinats estils i obtenir el disseny desitjat.
Per als noms, utilitzeu el convenid de denominació. Hi ha d'haver com a mínim un contenidor "ibmMainContainer" per al contingut principal de la pàgina:
- "ibmMainContainer" (el contingut principal de la pàgina)

  Si hi ha altres contenidors, recomanem utilitzar un dels següents noms per canviar ràpidament entre els vostres dissenys i els dissenys predefinits:
- "headline" (capçalera o bàner a la pàgina)
  - "secondary" (contingut secundari del contingut principal, com ara una barra lateral)
  - "tertiary" (contingut secundari del contingut secundari, com ara una barra lateral)
  - "additional" (contingut secundari o posterior al contingut terciari)
  - "footer" (bàner o peu de pàgina a la part inferior de la pàgina). 
  
  Si heu repetit seccions similars en un disseny, es recomana que afegiu un número del 2 a n al final dels noms recomanats, com ara "additional2" i "additional3". En utilitzar aquests noms i aquest conveni de denominació, la transició entre dissenys serà ràpida i sensible utilitzant la barra d'eines.
També podeu crear un fitxer d'icona a la carpeta de dissenys personalitzats, com ara icon.gif.

Quan hàgiu definit el disseny personalitzat, serà necessari registrar-lo al sistema. Per fer-ho, afegiu una línia al fitxer WebDAV <theme>\system\layouts.json. Copieu i modifiqueu una línia existent i feu els canvis necessaris per apuntar a la carpeta de disseny personalitzat i a la icona i per assignar al disseny personalitzat un nom de visualització i un ID exclusiu.
En acabar, el disseny personalitzat es mostrarà a la barra d'eines.



Přehled rozvržení (anglicky)
****************

Tato složka 'layout-templates' ve WebDAV je dobře definovaná složka portálu WebSphere Portal, která definuje, jaké
šablony existují a mohou být použity na stránce z panelu nástrojů. V této složce se pro každé rozvržení nachází
jedna složka se souborem layout.html, pro vlastní rozvržení tedy vytvořte vlastní složku. Chcete-li
si prohlédnout a pochopit požadovanou syntaxi souboru layout.html, můžete zkopírovat, přejmenovat
a upravit některou z existujících složek.

Souhrn syntaxe souboru layout.html:

- V horní části souboru je jeden skrytý kontejner. Vaše vlastní rozvržení by mělo v horní části souboru vždy
  obsahovat tento skrytý kontejner bez jakékoli změny oproti tomu, co vidíte v předpřipravených rozvrženích. Neměly by se měnit třídy kontejneru a měl by zůstat název kontejneru "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Za skrytým kontejnerem následují viditelné kontejnery, např.:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Zde se musíte rozhodnout, kolik viditelných kontejnerů bude vaše rozvržení obsahovat, a které z nich budou
  sloupcové a které mřížkové/řádkové. Zkopírujte nebo odstraňte řádky příznaku div kontejneru tak, abyste dosáhli
  požadovaného počtu kontejnerů, a poté podle potřeby upravte třídy a názvy kontejnerů. Pro kontejnery, které budou
  sloupcové, zkopírujte řádek příznaku div kontejneru wpthemeCol. Pro kontejnery, které budou mřížkové/řádkové,
  zkopírujte řádek příznaku div kontejneru wpthemeRow.

  Pro třídy v maximální možné míře znovu využívejte třídy portálu (protože některé z nich jsou povinné),
  budete však zřejmě také muset definovat a přidat několik vlastních tříd, abyste mírně přepsali
  a upravili některé styly, a dosáhli tak požadovaného vlastního rozvržení.

  Pro názvy používejte doporučenou konvenci pojmenování. Pro hlavní obsah stránky musí vždy existovat
  jeden kontejner s názvem "ibmMainContainer":

  - "ibmMainContainer" (primární, hlavní obsah stránky)

  Pokud existují další kontejnery, doporučujeme použít jeden z následujících dalších názvů, které umožňují
  bezproblémový přechod mezi vašimi a předpřipravenými rozvrženími:

  - "headline" (nadpis nebo proužek přes celou šířku stránky)
  - "secondary" (sekundární obsah, který je sekundární vůči hlavnímu obsahu, např. postranní panel)
  - "tertiary" (terciální obsah, který je sekundární vůči sekundárnímu obsahu, např. postranní panel)
  - "additional" (další obsah, který je sekundární nebo více než sekundární vůči terciálnímu obsahu)
  - "footer" (proužek nebo zápatí přes celou šířku dolní části stránky). 
  
  Pokud se ve vašem rozvržení opakují podobné sekce, doporučujeme připojit na konec doporučených názvů
  číslo 2 až n, tj. používat např. názvy "additional2" a "additional3". Používání těchto názvů a této
  konvence pojmenování zvýší pravděpodobnost bezproblémového a rozumného přechodu při přepínání mezi
  rozvrženími pomocí panelu nástrojů.
  	
Ve složce vlastního rozvržení také můžete vytvořit soubor ikony, např. icon.gif.

Poté, co vlastní rozvržení nadefinujete, musíte ho registrovat v systému. To provedete
přidáním řádku do souboru WebDAV <motiv>\system\layouts.json. Zkopírujte a upravte existující
řádek a proveďte potřebné změny tak, aby ukazoval na složku a ikonu vašeho vlastního rozvržení a přiděloval
tomuto rozvržení zobrazovaný název a jedinečné ID. Vaše vlastní rozvržení se nyní zobrazí v panelu nástrojů.



Layoutoversigt
**************

Folderen 'layout-templates' i WebDAV kendes fra WebSphere Portal og bruges til at angive, hvilke
layoutskabeloner der findes. Den kan bruges på en side fra værktøjslinjen. I denne folder findes én
folder, der indeholder filen layout.html for hvert layout. Opret din egen folder til dit eget layout.
Du kan kopiere, omdøbe og ændre en af de eksisterende foldere for at se og lære den syntaks, der
bruges i layout.html.

Kort fortalt er syntaksen i layout.html, som følger:

  Der er ét skjult opbevaringssted øverst i filen. Dit tilpassede layout skal altid indeholde dette
  skjulte opbevaringssted, som ikke må ændres i forhold til de færdige layout. Opbevaringsstedsklasserne
  må ikke ændres, og navnet på opbevaringsstedet skal forblive "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Efter dette ene skjulte opbevaringssted står de synlige opbevaringssteder, f.eks.:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Her skal du beslutte, hvor mange synlige opbevaringssteder der skal være i layoutet, og hvilke layout
  der skal have kolonneformat, og hvilke der skal have gitter/rækkeformat. Kopiér eller slet
  inddelingslinjer for opbevaringssteder,indtil du har det ønskede antal opbevaringssteder, og justér
  herefter opbevaringsstedsklasser og -navne efter behov. Kopiér en inddelingslinje til wpthemeCol-
  opbevaringsstedet for dem, der skal have kolonneformat. Kopiér en inddelingslinje til wpthemeRow-
  opbevaringsstedet for dem, der skal have gitter/rækkeformat. Genbrug Portal-klasserne så meget som
  muligt (da nogle af dem er påkrævede), men du skal måske også definere og tilføje dine egne klasser
  for at tilsidesætte og justere visse typografier lidt, så du får det ønskede tilpassede layout.

  Hvad angår navne, skal du bruge vores anbefalede navngivningsregler. Der skal altid være et opbevaringssted
  med navnet "ibmMainContainer" for det overordnede indhold på siden:

- "ibmMainContainer" (sidens hovedindhold, dvs. det primære indhold))

  Hvis der er andre opbevaringssteder, anbefales det, at du bruger et af følgende andre navne for at
  tilbyde smidige skift mellem dine layout og de færdige layout:

  - "headline" (toptekst eller banner på tværs af siden)
  - "secondary" (indhold, der er sekundært i forhold til hovedindholdet, f.eks. en sidelinje)
  - "tertiary" (indhold, der er sekundært i forhold til det sekundære indhold, f.eks. en sidelinje)
  - "additional" (indhold, der er sekundært eller derunder i forhold til det tertiære indhold)
  - "footer" (banner eller bundtekst på tværs af sidens bund). 
  
  Hvis du har afsnit, der ligner hinanden i et layout, anbefales det at tilføje 2 til n til slutningen af
  de anbefalede navne, f.eks. "additional2" og "additional3". Hvis du bruger disse navne og navngivningsregler,
  har du større chance for at sikre en smidig og fornuftig overgang mellem de forskellige layout ved hjælp
  af værktøjslinjen.
  	
Du kan også oprette en ikonfil i din tilpassede layoutfolder, f.eks. icon.gif.

Når du har defineret dit tilpassede layout, skal du registrere det i systemet. Det gør du
ved at tilføje en linje i WebDAV-filen <tema>\system\layouts.json. Kopiér og revidér en
eksisterende linje, og foretag de nødvendige ændringer, så den peger på din tilpassede
layoutfolder og -ikon, og så dit tilpassede layout får et fremvisningsnavn og en
entydig id. Dit tilpassede layout vises nu på værktøjslinjen.



Überblick über Layouts (Deutsch)
****************

Der Ordner "layout-templates" in WebDAV wurde von WebSphere Portal ordnungsgemäß definiert, um festzulegen, welche Layoutschablonen vorhanden sind und von der Symbolleiste aus auf einer Seite verwendet werden können. In diesem Ordner befindet sich ein Ordner, der die Datei layout.html für jedes Layout enthält. Erstellen Sie für Ihr eigenes Layout einen separaten Ordner. Sie können einen der bestehenden Ordner kopieren, umbenennen und ändern, um die erforderliche Syntax der Datei layout.html anzuzeigen und zu erlernen.

Im Folgenden finden Sie eine Zusammenfassung der Syntax der Datei layout.html:

- Am Anfang der Datei befindet sich ein ausgeblendeter Container. Ihr benutzerdefiniertes Layout muss stets diesen ausgeblendeten Container am Anfang der Datei aufweisen, ganz gleich, was Sie in den Standardlayouts sehen.
  Die Containerklassen dürfen nicht geändert werden und der Containername muss weiterhin "ibmHiddenWidgets" lauten:

<div class="hiddenWidgetsDiv">
	<!-- Widgets in diesem Container sind in der Benutzerschnittstelle standardmäßig ausgeblendet --> 	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Auf den einen ausgeblendeten Container folgen die sichtbaren Container. Beispiele:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Hier müssen Sie entscheiden, wie viele sichtbare Container Ihr Layout enthalten soll und welches Layout Spalten oder Raster/Zeilen enthalten sollen. Kopieren oder löschen Sie so viele "div"-Zeilen des Containers, bis die erforderliche Anzahl von Containern vorliegt. Anschließend können Sie die Containerklassen und Namen bei Bedarf anpassen. Kopieren Sie für Spaltenlayouts eine "div"-Zeile im Container "wpthemeCol". Kopieren Sie eine "div"-Zeile im Container "wpthemeRow" für Raster-/Zeilenlayouts.

  Für die Klassen können Sie weitestgehend die Portalklassen wiederverwenden (da einige von ihnen erforderlich sind), doch anschließend müssen Sie möglicherweise auch einige Ihrer eigenen Klassen hinzufügen, um bestimmte Stile für das von Ihnen gewünschte benutzerdefinierte Layout zu überschreiben und etwas anzupassen.

  Verwenden Sie für die Namen unsere empfohlene Namenskonvention. Es muss stets ein Container mit dem Namen "ibmMainContainer" für den Hauptinhalt der Seite vorliegen:
  - "ibmMainContainer" (der primäre Hauptinhalt der Seite)
  Falls weitere Container vorliegen, ist es empfehlenswert, einen der folgenden Namen zu verwenden, um einen reibungslosen Übergang zwischen Ihren Layouts und den Standardlayouts zu ermöglichen:

  - "headline" (Header oder Banner entlang der Seite)
  - "secondary" (sekundärer Inhalt gegenüber dem Hauptinhalt, wie z. B. eine Seitenleiste)
  - "tertiary" (sekundärer Inhalt gegenüber dem sekundären Inhalt, wie z. B. eine Seitenleiste) - "additional" (sekundärer oder nachrangiger Inhalt gegenüber dem tertiären Inhalt)
  - "footer" (Banner oder Fußzeile am unteren Rand der Seite). 
  
  Wenn wiederkehrende ähnliche Abschnitte in einem Layout enthalten sind, wird empfohlen, 2 bis n am Ende jedes empfohlenen Namens anzuhängen. Verwenden Sie beispielsweise "additional2" und "additional3". Mithilfe dieser Namen und dieser Namenskonvention erhöht sich die Wahrscheinlichkeit reibungsloser, sensibler Übergänge beim Umschalten zwischen den Layouts mithilfe der Symbolleiste.
  	
Sie können in Ihrem Ordner mit den benutzerdefinierten Layouts auch eine Symboldatei erstellen, wie z. B. icon.gif.

Wenn Sie Ihr benutzerdefiniertes Layout festgelegt haben, müssen Sie es beim System registrieren. Hierzu fügen Sie eine Zeile in die WebDAV-Datei <theme>\system\layouts.json ein. Kopieren Sie eine bestehende Zeile und nehmen Sie die erforderlichen Änderungen vor, um auf den Ordner und das Symbol des benutzerdefinierten Layouts zu  zeigen. Anschließend weisen Sie Ihrem benutzerdefinierten Layout einen Anzeigenamen und eine eindeutige ID zu. Ihr benutzerdefiniertes Layout wird nun in der Symbolleiste angezeigt.



Συνοπτική παρουσίαση διατάξεων (Ελληνικά)
******************************

Αυτός ο φάκελος 'layout-templates' στο WebDAV είναι ένας φάκελος που ορίζεται από το WebSphere Portal και
καθορίζει ποια πρότυπα διάταξης υπάρχουν και μπορούν να χρησιμοποιηθούν σε μια σελίδα από τη γραμμή
εργαλείων. Σε αυτόν το φάκελο υπάρχει ένας φάκελος με ένα αρχείο layout.html για κάθε διάταξη και
μπορείτε να δημιουργήσετε δικούς σας φακέλους για τις δικές σας διατάξεις. Μπορείτε να αντιγράψετε, να
μετονομάσετε και να τροποποιήσετε έναν από τους υπάρχοντες φακέλους για να μάθετε την απαιτούμενη σύνταξη
του αρχείου layout.html.

Ακολουθεί μια σύνοψη της σύνταξης του αρχείου layout.html:

- Υπάρχει μια κρυφή θέση υποδοχής στην αρχή του αρχείου. Οι προσαρμοσμένες διατάξεις θα πρέπει πάντα να έχουν
  αυτή την κρυφή θέση υποδοχής στην αρχή του αρχείου όπως ακριβώς εμφανίζεται στις έτοιμες διατάξεις.
  Οι θέσεις υποδοχής δεν θα πρέπει να τροποποιούνται, και το όνομά τους θα πρέπει να παραμένει "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Μετά από την κρυφή θέση υποδοχής θα πρέπει να υπάρχουν οι ορατές θέσεις υποδοχής, για παράδειγμα:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Εδώ θα πρέπει να αποφασίσετε πόσες ορατές θέσεις υποδοχής θα έχει η διάταξη, και ποιες θα έχουν μορφή στηλών
  ή μορφή γραμμών. Αντιγράψτε ή διαγράψτε γραμμές div μέχρι να υπάρχει ο επιθυμητός αριθμός θέσεων υποδοχής,
  και στη συνέχεια προσαρμόστε τις κλάσεις και τα ονόματα όπως απαιτείται. Αντιγράψτε μια γραμμή div με το
  γνώρισμα wpthemeCol για τις θέσεις υποδοχής που θα έχουν μορφή στηλών. Αντιγράψτε μια γραμμή div με το
  γνώρισμα wpthemeRow για τις θέσεις υποδοχής που θα έχουν μορφή γραμμών.

  Χρησιμοποιήστε τις κλάσεις του Portal όσο το δυνατόν περισσότερο (καθώς ορισμένες από αυτές απαιτούνται),
  αλλά μπορεί να χρειαστεί να ορίσετε και να προσθέσετε ορισμένες δικές σας κλάσεις προκειμένου να τροποποιήσετε
  κάποια στυλ για να διαμορφώσετε την προσαρμοσμένη διάταξη όπως επιθυμείτε.

  Για τα ονόματα, χρησιμοποιήστε τη συνιστώμενη σύμβαση ονοματοθεσίας. Πρέπει πάντα να υπάρχει μία θέση
  υποδοχής με όνομα "ibmMainContainer" για το κύριο περιεχόμενο της σελίδας:

  - "ibmMainContainer" (το κύριο περιεχόμενο της σελίδας)

  Αν υπάρχουν άλλες θέσεις υποδοχής, συνιστάται να χρησιμοποιήσετε ένα από τα ακόλουθα ονόματα για να
  διευκολυνθεί η μετάβαση από τις δικές σας διατάξεις στις έτοιμες διατάξεις:

  - "headline" (κεφαλίδα στο πάνω μέρος της σελίδας)
  - "secondary" (περιεχόμενο δευτερεύον ως προς το κύριο περιεχόμενο, όπως μια πλαϊνή γραμμή)
  - "tertiary" (περιεχόμενο δευτερεύον ως προς το δευτερεύον περιεχόμενο, όπως μια πλαϊνή γραμμή)
  - "additional" (περιεχόμενο σε δευτερεύουσα ή κατώτερη θέση ως προς το τριτεύον ("tertiary") περιεχόμενο
  - "footer" (υποσέλιδο στο κάτω μέρος της σελίδας). 
  
  Αν έχετε επαναλαμβανόμενες παρόμοιες ενότητες σε μια διάταξη, συνιστάται να προσθέσετε έναν αριθμό στο τέλος
  των προτεινόμενων ονομάτων, π.χ. "additional2", "additional3" κλπ. Η χρήση αυτών των ονομάτων και αυτής
  της σύμβασης ονοματοθεσίας θα βοηθήσει να εξασφαλιστεί η ομαλή μετάβαση ανάμεσα σε διατάξεις χρησιμοποιώντας
  τη γραμμή εργαλείων.
  	
Μπορείτε επίσης να δημιουργήσετε ένα αρχείο εικονιδίου στο φάκελο της προσαρμοσμένης διάταξη, π.χ. icon.gif.

Αφού δημιουργήσετε την προσαρμοσμένη διάταξή σας, θα πρέπει να την εγγράψετε στο σύστημα. Για να γίνει αυτό
πρέπει να προσθέσετε μια γραμμή στο αρχείο WebDAV <θέμα>\system\layouts.json. Αντιγράψτε και τροποποιήστε
μια υπάρχουσα γραμμή και κάντε τις απαραίτητες αλλαγές ώστε να παραπέμπει στο φάκελο και στο εικονίδιο της
προσαρμοσμένης διάταξης. Ορίστε επίσης ένα εμφανιζόμενο όνομα και μια μοναδική ταυτότητα για τη διάταξη. 
Η προσαρμοσμένη σας διάταξη θα εμφανίζεται τώρα στη γραμμή εργαλείων.



Visión general de los diseños
*****************************

Esta carpeta 'layout-templates' situada en WebDAV es una carpeta que establece WebSphere Portal para definir las plantillas de
diseño existentes que se pueden utilizar en una página desde la barra de herramientas. Dentro de esta carpeta hay
es una carpeta con un archivo layout.html por diseño; cree su archivo propia carpeta para su propio diseño. Puede copiar, cambiar el
nombre y modificar una de las carpetas existentes para ver la sintaxis de layout.html que hay que utilizar. 

A continuación se muestra un resumen de la sintaxis de layout.html: 

- Hay una contenedor oculto en la parte superior del archivo. El diseño personalizado siempre debe contener este contenedor
oculto en la parte superior del archivo sin modificaciones con respecto al que aparece en los diseños proporcionados. Las clases
de contenedor no se deben modificar el nombre del contenedor debe ser "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Después del contenedor oculto están los contenedores visibles, como en el siguiente ejemplo: 

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Aquí debe decidir el número de contenedores visibles que tendrá el diseño y cuáles serán de tipo columna o cuáles de tipo
  cuadrícula/fila. Copie o suprima líneas div de contenedor hasta que tenga el número deseado de contenedores y luego ajuste   las clases y los nombres de contenedor según sea necesario. Copie una línea div de contenedor wpthemeCol para los que
  vayan a ser de tipo columna. Copie una línea div de contenedor wpthemeRow para los que
  vayan a ser de tipo cuadrícula/fila. Para las clases, reutilice las clases de Portal siempre que sea posible (ya que   algunas de ellas son obligatorias), pero luego es posible que tenga que definir y añadir algunas clases propias para   modificar y ajustar ligeramente ciertos estilos a fin de obtener el diseño personalizado que desea. Para los nombres,
utilice el convenio de denominación recomendado. Siempre debe haber un contenedor denominado "ibmMainContainer" para
  el contenido principal de la página: - "ibmMainContainer" (el contenido principal de la página)

  Si hay otros contenedores, se recomienda utilizar uno de los siguientes nombres para facilitar la conmutación entre sus diseños y los   proporcionados.
  - "headline" (cabecera o mensaje de cabecera de la página)
  - "secondary" (contenido secundario del contenido principal, como por ejemplo una barra lateral)
  - "tertiary" (contenido secundario del contenido secundario, como una barra lateral)
  - "additional" (contenido secundario o por debajo del contenido terciario)
  - "footer" (mensaje o pie de página de la parte inferior de la página). 
  
  Si tiene secciones similares repetidas en un diseño, se recomienda añadir de 2 a n al final de cualquiera de los nombres de recomendados, como por ejemplo "additional2" y "additional3". La utilización de estos nombres y de este convenio de denominación aumenta la probabilidad
de poder conmutar fácilmente entre diseños utilizando la barra de herramientas.
También puede crear un archivo de icono en la carpeta de diseños personalizados, como por ejemplo icon.gif.

Una vez que haya definido el diseño personalizado, deberá registrarlo con del sistema. Para ello, añada una línea en el archivo
WebDAV <theme>\system\layouts.json. Copie y modifique una línea existente y haga los cambios necesarios para que apunte a su carpeta de diseños personalizados y para asignar al diseño personalizado un nombre de visualización y un ID exclusivo. Ahora su diseño
aparecerá en la barra de herramientas



Asettelujen yleiskuvaus
****************

Tätä WebDAV-ohjelman asettelumallipohjien kansiota käytetään WebSphere-portaalissa määritettäessä
käytettäviä asettelumallipohjia, ja sitä voidaan käyttää sivulla työkalurivin toiminnoilla. Tässä kansiossa
on yksi kansio jokaista layout.html-tiedostoa kohti. Luo oma kansio omaa asetteluasi varten.Voit kopioida,
nimetä uudelleen ja muokata aiemmin luotuja kansioita, ja niistä näet myös layout.html-tiedostojen syntaksin.

Yhteenveto layout.html-tiedoston syntaksista:

- Tiedoston yläreunassa on yksi piilotettu säilö.Mukautetuissa asetteluissa täytyy olla tämä sama
piilotettu säilö tiedoston yläreunassa.Säilöluokkia ei voi muuttaa, ja säilön nimen täytyy olla "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Piilotetun säilön jälkeen sijoitetaan näkyvät säilöt seuraavasti:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Tässä sinun on päätettävä kuinka monta näkyvää säilöä asettelussa on sekä määritettävä mitkä niistä ovat saraketyyppisiä
  ja mitkä ruudukko-/rivityyppisiä. Kopioi tai poista säilön erotinviivoja, kunnes sinulla on tarvittava määrä säilöjä.
Säädä sitten tarvittaessa säilöluokkia ja niiden nimiä.Kopioi wpthemeCol-säilön erotinviiva
  saraketyyppisiin säilöihin. Kopioi wpthemeRow-säilön erotinviiva säilöihin, jotka ovat
  ruudukko-/rivityyppisiä.

  Hyödynnä portaalin luokkia mahdollisimman paljon (osa niistä on pakollisia). Sinun täytyy ehkä määrittää myös
  omia luokkia, jotka voivat osittain kumota ja muuntaa tiettyjä tyylejä,
  jotta saat aikaan haluamasi asettelun.

  Käytä suositeltua nimeämiskäytäntöä.Sivun pääsisällössä täytyy olla yksi säilö,
  jonka nimi on "ibmMainContainer":

  - "ibmMainContainer" (ensisijainen säilö, sivun pääsisältö)

  Jos käytössä on muita säilöjä, on suositeltavaa käyttää yhtä seuraavista nimistä, jotta voit helpommin
siirtyä mukautetusta asettelusta vakioasetteluun:
  - "headline" (sivun otsikko tai mainospalkki)
  - "secondary" (toissijainen sisältö, kuten sivupalkki)
  - "tertiary" (kolmannen tason sisältö, kuten sivupalkin alisisältö)
  - "additional" (alemman tason sisältö)
  - "footer" (sivun alareunassa oleva mainospalkki tai alatunniste). 
  
  Jos asettelussa on toistuvia osia, on suositeltavaa käyttää jälkiliitettä (2 -> n)
  suositelluissa nimissä, kuten "additional2" ja "additional3". Käyttämällä näitä nimiä ja tätä
nimeämiskäytäntöä helpotat siirtymistä eri asettelujen välillä
työkalurivin toiminnoilla.Voit myös luoda mukautettuun asettelukansioon kuvaketiedoston, kuten icon.gif.

Kun olet luonut mukautetun asettelun, se on rekisteröitävä järjestelmään.Voit tehdä sen
lisäämällä rivin WebDAV-tiedostoon <theme>\system\layouts.json. Kopioi nykyinen rivi ja tee siihen
tarvittvat muutokset, jotka viittaavaat omaan mukautettuun asettelukansioosi ja kuvakkeeseen.
Anna mukautetulle asettelulle nimi ja yksilöllinen tunnus. Mukautettu asettelu näkyy nyt työkalurivissä.



Vue d'ensemble des présentations
***************

Le dossier 'layout-templates' dans WebDAV est un dossier bien défini par WebSphere Portal pour déterminer quels modèles de présentation existent et peuvent être utilisés sur une page à partir de la barre d'outils. Ce dossier contient un dossier avec un fichier layout.html pour chaque présentation - créez votre propre dossier pour votre présentation. Vous pouvez copier, renommer et modifier l'un des dossiers existants pour connaître et apprendre la syntaxe layout.html nécessaire.

Un résumé de la syntaxe layout.html se présente comme suit :

- Un conteneur masqué se trouve au début du fichier. Votre présentation personnalisée doit toujours comporter ce conteneur masqué au début du fichier et ce conteneur doit être identique à celui des présentations prêtes à l'emploi. Les classes du conteneur ne doivent pas être modifiées et le nom du conteneur doit rester "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- les widgets dans ce conteneur sont masqués dans l'interface utilisateur par défaut -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Après le conteneur masqué, se trouvent les conteneurs visibles, tels que :

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Ici vous devez déterminer le nombre de conteneurs visibles de votre présentation et lesquels seront de type colonne ou de type grille/ligne. Copiez ou supprimez les lignes container div jusqu'à ce que vous ayez le nombre de conteneurs nécessaire, puis ajustez les classes et les noms de conteneur selon vos besoins. Copiez une ligne wpthemeCol container div pour les conteneurs qui seront de type colonne. Copiez une ligne wpthemeRow container div pour les conteneurs qui seront de type grille/ligne. Pour les classes, réutilisez les classes du portail autant que possible (car certaines sont nécessaires), mais il se peut que vous deviez également définir et ajouter certaines de vos propres classes afin de légèrement remplacer et ajuster certains styles pour obtenir la présentation personnalisée voulue. Pour les noms, utilisez notre convention de dénomination recommandée. Il doit toujours exister un conteneur nommé "ibmMainContainer" pour le contenu principal de la page :
- "ibmMainContainer" (contenu principal de la page)

  S'il existe d'autres conteneurs, nous vous recommandons d'utiliser l'un des autres noms suivants pour permettre un passage sans heurt entre vos présentations et les présentations prêtes à l'emploi :
- "headline" (en-tête ou bannière en travers de la page)
  - "secondary" (contenu secondaire au contenu principal, comme une barre latérale)
  - "tertiary" (contenu secondaire au contenu secondaire, tel qu'une barre latérale)
  - "additional" (contenu secondaire ou au-delà du contenu tertiaire)
  - "footer" (bannière ou un pied de page au bas de la page). 
  
  Si vous avez répété des sections similaires dans une présentation, il est recommandé d'ajouter 2 à n à la fin des noms recommandés, en utilisant par exemple "additional2" et "additional3". A l'aide de ces noms et de cette convention de dénomination, vous augmentez la probabilité d'obtenir des transitions lisses lorsque vous passez d'une présentation à une autre dans la barre d'outils.
Vous pouvez également créer un fichier icône dans votre dossier de présentation personnalisé, comme icon.gif.

Une fois que votre présentation personnalisée est définie, vous devez l'enregistrer dans le système. Pour ce faire, ajoutez une ligne au fichier WebDAV <thème>\system\layouts.json. Copiez et modifiez une ligne existante, puis apportez les modifications nécessaires pour pointer vers votre dossier et votre icône de présentation personnalisée et pour donner à votre présentation un nom d'affichage et un ID unique. Votre présentation personnalisée va maintenant apparaître dans la barre d'outils.



Pregled izgleda (hrvatski)
****************

Ovaj folder 'layout-templates' unutar WebDAV-a je dobro definirani folder WebSphere Portala koji definira postojeće predloške
izgleda koji se mogu koristiti na stranici pomoću trake s alatima. U tom folderu nalazi se po jedan
folder s datotekom layout.html za svaki izgled - kreirajte folder za svoju definiciju izgleda. Možete kopirati,
preimenovati i modificirati jedan od postojećih foldera da biste vidjeli i naučili sintaksu potrebnu za layout.html.

Sažetak sintakse za layout.html:

- Na vrhu datoteke nalazi se jedan skriveni spremnik. Vaš prilagođeni izgled treba imati taj skriveni
  spremnik na vrhu datoteke i on ne smije biti različit od spremnika u dobivenim definicijama izgleda.
  Klase spremnika se ne smiju mijenjati i naziv spremnika mora ostati "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Nakon tog skrivenog spremnika dolaze vidljivi spremnici, na primjer:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Ovdje trebate odlučiti koliko će biti vidljivih spremnika u vašem izgledu i koji će spremnici biti u obliku
  stupca, a koji u obliku mreže/reda. Kopirajte ili obrišite div redove spremnika dok ne dobijete željeni broj
  spremnika, zatim prilagodite klase i nazive spremnika prema svojim potrebama. Kopirajte div red spremnika wpthemeCol za spremnike koji
  će biti u obliku stupca. Kopirajte div red spremnika wpthemeRow za spremnike koji će biti u obliku
  mreže/reda.

  Za definicije klasa koristite klase portala što je više moguće (jer su neke od njih obavezne), ali ćete možda trebati
  definirati i dodati neke svoje klase da biste promijenili i prilagodili određene stilove i dobili željeni
  prilagođeni izgled.

  Za nazive koristite našu preporučenu konvenciju imenovanja. Uvijek mora postojati jedan spremnik s nazivom
  "ibmMainContainer" za glavni sadržaj stranice:

  - "ibmMainContainer" (primarni, glavni sadržaj stranice)

  Ako postoje drugi spremnici, preporučamo korištenje jednog od sljedećih naziva koji omogućuju jednostavno
  prebacivanje između vaših definicija izgleda i dobivenih definicija izgleda:

  - "headline" (zaglavlje ili uvodnik na stranici)
  - "secondary" (sadržaj koji je sekundaran u odnosu na glavni sadržaj, poput rubne trake)
  - "tertiary" (sadržaj koji je sekundaran u odnosu na sekundarni sadržaj, poput rubne trake)
  - "additional" (sadržaj koji je sekundarni ili na nižoj razini od tercijarnog sadržaja)
  - "footer" (uvodnik ili donje zaglavlje na dnu stranice). 
  
  Ako se u izgledu ponavljaju slični odjeljci, preporuča se dodavanje brojeva od 2 do n na kraj preporučenih
  naziva, na primjer "additional2" i "additional3". Korištenje ovih naziva i konvencije
  imenovanja povećat će mogućnost jednostavne, razumne tranzicije kod prebacivanja izgleda pomoću
  trake s alatima.
  	
U folderu prilagođenog izgleda možete kreirati i datoteku ikone, na primjer icon.gif.

Kada ste definirali prilagođeni izgled, trebate ga registrirati na sistemu. To možete napraviti
dodavanjem reda u datoteku WebDAV <theme>\system\layouts.json file. Kopirajte i modificirajte postojeći
red i napravite promjene potrebne da bi ukazivao na vaš folder prilagođenog izgleda i ikonu, da bi se vašem
prilagođenom izgledu dodao naziv za prikaz i prilagođeni id. Vaš prilagođeni izgled će se sada prikazati na traci s alatima.



Elrendezések bemutatása (angol)
****************

Ez a 'layout-templates' mappa a WebDAV mappán belül a WebSphere Portal
által jól meghatározott mappa, ami meghatározza, hogy mely
elrendezéssablonok léteznek és használhatók egy oldalon az eszköztárból. A
mappán belül elrendezésenként egy layout.html fájl található. A
felhasználó létrehozhatja a saját mappáját a saját elrendezéséhez. 
Megteheti, hogy lemásolja, átnevezi, majd módosítja valamelyik meglévő
mappát, hogy lássa és megismerje a szükséges layout.html szintaxist. 

A layout.html szintaxis összefoglalása: 

- Van egy rejtett tároló a fájl tetején. Az egyéni elrendezésben is mindig
változatlanul meg kell lennie ennek a rejtett tárolónak a fájl tetején,
ugyanúgy, ahogyan a készen szállított elrendezésekben is szerepel. A
tárolóosztályokat nem szabad módosítani és a tároló nevét is meg kell
hagyni ("ibmHiddenWidgets"):

<div class="hiddenWidgetsDiv">
	<!-- az ebben a tárolóban található felületi elemek alapértelmezésben rejtettek a felhasználói felületen -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- A rejtett tároló után következnek a látható tárolók, úgymint: 

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Itt el kell döntenie, hogy hány látható tároló legyen az elrendezésben,
és közülük melyek oszlopszerűek és melyek rács/sorszerűek. Másolja,
illetve törölje a tároló div sorokat mindaddig, amíg meg nincs a szükséges
számú tároló, majd igény szerint állítsa be a tárolóosztályokat és a
neveket. Másoljon le egy-egy wpthemeCol tároló div sort azoknak, amelyek
oszlopszerűek. Másoljon le egy-egy wpthemeRow tároló div sort azoknak,
amelyek rács/sorszerűek. Az osztályoknál lehetőség szerint törekedjen a
Portal osztályok újrafelhasználására (mivel vannak közöttük kötelezőek),
de utána szükség lehet saját osztályok meghatározására és felvételére is
ahhoz, hogy felülbíráljon és kissé igazítson bizonyos stílusokat a kívánt
egyéni elrendezés eléréséhez. A neveknél használja az ajánlott elnevezési
megállapodást. Mindig kell lennie egy "ibmMainContainer" nevű tárolónak,
amelyben az oldal fő tartalma van:
  - "ibmMainContainer" (az oldal elsődleges, fő tartalma)

  Ha további tárolók is vannak, akkor célszerű az alábbi neveket
használni, hogy könnyű legyen a váltás az egyéni elrendezések és a készen
szállított elrendezések között:
  - "headline" (fejléc vagy fejléccsík az oldal tetején)
  - "secondary" (a fő tartalomhoz képest másodlagos tartalom, például oldalsáv)
  - "tertiary" (a másodlagos tartalomhoz képest másodlagos tartalom, például oldalsáv)
  - "additional" (a harmadlagos tartalomhoz képest másodlagos vagy még alacsonyabb szintű tartalom)
  - "footer" (csík vagy lábléc az oldal alján). 
  
  Ha hasonló részek ismétlődnek az elrendezésben, akkor célszerű
hozzáfűzni a 2-n számokat az ajánlott nevek végéhez, így például az
"additional2" vagy az "additional3" nevet használni. Ha ezeket a neveket
és ezt az elnevezési megállapodást használja, akkor sokkal simább lesz az
átmenet, amikor átkapcsol az elrendezések között az eszköztárban.
Ikonfájlt (például icon.gif) is létrehozhat az egyéni elrendezés
mappájában. 

Miután meghatározta az egyéni elrendezést, regisztrálja azt a rendszerbe. 
Ehhez fel kell venni egy sort a WebDAV <téma>\system\layouts.json fájlba. 
Másoljon le és módosítson egy meglévő sort úgy, hogy az egyéni elrendezés
mappájára és ikonjára mutasson, valamint megjelenő nevet és egyedi
azonosítót adjon az egyéni elrendezésnek. Az egyéni elrendezés most már
megjelenik az eszköztárban. 



Panoramica layout
****************

Questa cartella 'layout-templates' in WebDAV è una cartella ben definita da WebSphere Portal per definire quali modelli di layout
esistono e possono essere utilizzati in una pagina dalla barra degli strumenti. In questa cartella è presente una cartella
con il file layout.html per layout - è possibile creare la propria cartella per il proprio layout. È possibile copiare, ridenominare e
modificare una delle cartelle esistenti per visualizzare e conoscere la sintassi layout.html richiesta.

Segue un riepilogo della sintassi layout.html:

- Esiste un contenitore nascosto all'inizio del file. Il layout personalizzato dovrebbe sempre avere un contenitore nascosto
  all'inizio del file non modificato da quello che viene visualizzato nei layout standard.
  Le classi del contenitore non dovrebbero essere modificate e il nome del contenitore dovrebbe essere ridenominato "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- i widget in questo contenitore sono nascosti nell'UI per impostazione predefinita -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Dopo il contenitore nascosto, sono presenti i contenitori visibili, come ad esempio:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Qui è necessario decidere quanti contenitori visibili il layout potrà avere a disposizione e quali saranno come colonne
  e quali come griglia/riga. Copiare o eliminare le righe div del contenitore fino ad ottenere il numero
  necessario di contenitori e quindi modificare le classi e i nomi dei contenitori come richiesto. Copiare una riga div del contenitore wpthemeCol
  per quelli che saranno simili a colonne. Copiare una riga div del contenitore wpthemeRow
  per quelli che saranno simili a griglia/riga.
  
  Per le classi, riutilizzare per quanto possibile le classi del portale (poiché alcune di esse sono necessarie), ma quindi
  potrebbe anche essere necessario definire e aggiungere alcune classi per sovrascrivere leggermente e modificare alcuni stili per ottenere
  il layout personalizzato desiderato.
  
  Per i nomi, utilizzare la convenzione di denominazione consigliata. Deve sempre esserci un contenitore denominato
  "ibmMainContainer" per il contenitore principale della pagina: 
  
  - "ibmMainContainer" (il primario, contenuto principale della pagina)
  
  Se sono presenti altri contenitori, si consiglia l'utilizzo di uno dei seguenti altri nomi per offrire un passaggio semplice
  tra i layout personalizzati e i layout standard: 
  
  - "headline" (intestazione o banner nella pagina)
  - "secondary" (contenuto secondario rispetto al contenuto principale, come ad esempio una barra laterale)
  - "tertiary" (contenuto secondario al contenuto secondario, come ad esempio una barra laterale)
  - "additional" (contenuto secondario o che va oltre il contenuto terziario)
  - "footer" (banner o piè di pagina alla fine della pagina). 
  
  Se sono state ripetute azioni simili in un layout, si consiglia di aggiungere da 2 a un numero a seguire al termine dei
  nomi consigliati, come ad esempio "additional2" e "additional3". L'utilizzo di questi nomi e la convenzione di denominazione aumenterà la probabilità
  di avere transizioni semplici e sensibili quando si passa da un layout all'altro utilizzando la barra degli strumenti.
  	       
È anche possibile creare un file di icone nella cartella di layout personalizzata, come ad esempio icon.gif.

Una volta definito il layout personalizzato, è necessario registrarlo nel sistema. Eseguire questa
operazione aggiungendo una riga al file WebDAV <theme>\system\layouts.json. Copiare e modificare una riga esistente
e apportare le modifiche necessarie per la cartella di layout personalizzata e l'icona per fornire al layout personalizzato un nome di
visualizzazione e un id univoco. Adesso il layout personalizzato verrà visualizzato nella barra degli strumenti.



Layouts Overview (English)
****************

This 'layout-templates' folder within WebDAV is a well defined folder by WebSphere Portal to define which layout 
templates exist and can be used on a page from the toolbar. Within this 
folder is one folder with layout.html file per layout - create your own folder for your own layout. You can copy,
rename and modify one of the existing folders in order to see and learn the layout.html syntax that is required.

A summary of the layout.html syntax is as follows:

- There is one hidden container at the top of the file. Your custom layout should always have this one
  hidden container at the top of the file unchanged from what you see in the out-of-the-box layouts.
  The container classes should not be changed, and the container name should remain "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Following the one hidden container is the visible containers, such as:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Here you need to decide how many visible containers your layout will have, and which will be column-like 
  and which will be grid/row-like. Copy or delete container div lines until you have the needed number of 
  containers, and then adjust the container classes and names as needed. Copy a wpthemeCol container div line
  for the ones that will be column-like. Copy a wpthemeRow container div line for the ones that will be
  grid/row-like.
  
  For the classes, reuse the Portal classes as much as possible (as some of them are required), but then you may
  also need to define and add some of your own classes in order to slightly override and adjust certain styles 
  to get the custom layout you desire.
  
  For the names, use our recommended naming convention. There must always be one container named 
  "ibmMainContainer" for the main content of the page: 
  
  - "ibmMainContainer" (the primary, main content of the page)
  
  If there are other containers, we recommend using one of the following other names to offer smooth 
  switching between your layouts and the out-of-the-box layouts: 
  
  - "headline" (header or banner across the page)
  - "secondary" (content that is secondary to the main content, such as a sidebar)
  - "tertiary" (content that is secondary to the secondary content, such as a sidebar)
  - "additional" (content that is secondary or beyond to the tertiary content)
  - "footer" (banner or footer across the bottom of the page). 
  
  If you have repeated similar sections in a layout, it is recommended to append 2 through n to the end of 
  any of the recommended names, such as using "additional2" and "additional3". Using these names and this 
  naming convention will increase the likelihood of having smooth, sensible transitions when switching between 
  layouts using the toolbar.
  	       
You can also create an icon file in your custom layout folder, such as icon.gif.

Once you have your custom layout defined, then you need to register it with the system. Do this
by adding a line into the WebDAV <theme>\system\layouts.json file. Copy and modify an existing
line and make the needed changes to point to your custom layout folder and icon and to give your
custom layout a display name and unique id. Your custom layout will now appear on the toolbar.



レイアウトの概要 (日本語)
****************

WebDAV 内のこの「layout-templates」フォルダーは、WebSphere Portal によって明確に定義されたフォルダーです。このフォルダーは、存在しているレイアウト・テンプレートと、ページ上で使用できるレイアウト・テンプレートをツールバーから定義するために使用されます。
このフォルダー内には、layout.html ファイルを含むフォルダーがレイアウトごとに 1 つあります。独自のレイアウトには、独自のフォルダーを作成します。既存のフォルダーの 1 つをコピー、名前変更、変更して、必要な layout.html 構文を参照したり学習したりできます。

layout.html 構文の要約は、以下のとおりです。

- このファイルの上部には、非表示のコンテナーが 1 つあります。カスタム・レイアウトでは、デフォルトのレイアウトと同じように、ファイルの上部にこの非表示のコンテナーが必ず 1 つ存在する必要があります。コンテナー・クラスは、変更しないでください。また、コンテナー名は以下のように「ibmHiddenWidgets」のままにしてください。

<div class="hiddenWidgetsDiv">
	<!-- デフォルトでは、このコンテナーのウィジェットは UI で非表示です -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- この 1 つの非表示のコンテナーの後には、以下のような可視のコンテナーがあります。

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  ここで、レイアウトに含める可視のコンテナー数、列の形にするコンテナー、グリッド/行の形にするコンテナーを決定する必要があります。
必要なコンテナー数になるまで、コンテナーの区分線をコピーまたは削除します。その後、必要に応じて、コンテナーのクラスと名前を調整します。
列の形にするコンテナーに対して、wpthemeCol コンテナーの区分線をコピーします。
グリッド/行の形にするコンテナーに対して、wpthemeRow コンテナーの区分線をコピーします。
クラスについては、ポータル・クラスをできるだけ再利用してください (ポータル・クラスのいくつかが必須であるため)。ただし、特定のスタイルを若干上書き、調整して、希望のカスタム・レイアウトを得るためには、独自のクラスをいくつか定義して追加することが必要な場合もあります。
名前については、推奨される命名規則を使用してください。
ページのメイン・コンテンツとして、「ibmMainContainer」という名前のコンテナーが必ず 1 つ存在している必要があります。

- 「ibmMainContainer」(ページの 1 次メイン・コンテンツ)

他のコンテナーがある場合は、以下の他の名前のいずれかを使用して、ユーザーのレイアウトとすぐに使用可能なレイアウトをスムーズに切り替えられるようにすることをお勧めします。

-「headline」(ページのヘッダーまたはバナー)
  -「secondary」(メイン・コンテンツに対する 2 次コンテンツ (サイドバーなど))
  -「tertiary」(2 次コンテンツに対する 2 次コンテンツ (サイドバーなど))
  -「additional」(3 次コンテンツに対する 2 次以上のコンテンツ)
  -「footer」(ページ下部のバナーまたはフッター)。
  
  レイアウトで類似のセクションを繰り返した場合は、推奨名の末尾に 2 から n を付加することをお勧めします (例:「additional2」、「additional3」を使用)。
これらの名前とこの命名規則を使用すると、ツールバーを使用してレイアウトを切り替えるときに、スムーズかつ合理的に遷移を行うことができる可能性が高くなります。
カスタム・レイアウト・フォルダーにアイコン・ファイル (icon.gif など) を作成することもできます。

カスタム・レイアウトを定義したら、それをシステムに登録する必要があります。
これを行うには、WebDAV <theme>\system\layouts.json ファイルに行を追加します。
既存の行をコピーして変更します。また、カスタム・レイアウト・フォルダーとアイコンを指し、カスタム・レイアウトに表示名と固有 ID を付与するように既存の行を変更する必要があります。
これで、カスタム・レイアウトがツールバーに表示されるようになります。



Орналасуларды Шолу (Ағылшын)
****************

Бұл WebDAV ішіндегі 'орналасу үлгілері' қалтасы қай орналасу үлгілерінің бар екенін және құралдар тақтасан алынған бетте қолданылатынын анықтайтын WebSphere порталы арқылы жақсы анықталған қалта. Осы қалта ішінде орналасу үшін .html файлы орналасуымен бір қалта бар - өз модуліңіз үшін жеке қалтаңызды
құрыңыз. Талап етілетін .html синтаксисін білу және көрудің орнына
бар қалталардың біреуін көшіріп, атын өзгертіп және өңдей аласыз. 

.html синтаксисінің қорытындысы келесідей: 

- Файлдың жоғарғы жағында бір жасырын контейнер бар. Сіздің жалпы орналасуыңыз осы жасырын контейнерді файлдың жоғарғы жағында қораптан тыс орналасуларда не көрсеңіз де содан өзгеріссіз күйінде иеленуі тиіс.  Контейнер класстары өзгермеуі тиіс және контейнер аты "ibmHiddenWidgets" ретінде қалуы тиіс:

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Бір жасырын контейнерден кейін көрінетін контейнерлер болады, мысалы:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Мұнда сіздің орналасуыңыз қанша көрнекі контейнерлерді иеленетінін шешуіңіз керек және қайсысы бағана ретінде,
қайсысы тор/жол ретінде болатынын шешіңіз. Контейнердің div жолдарын олардың нақты санын иеленгенше көшіріп және жойыңыз және содан кейін контейнер класстарын және аттарын қажетінше жетілдіріңіз. wpthemeCol контейнерінің div жолын бағана түрінде болатын біреуіне көшіріңіз. wpthemeRow контейнерінің div жолын тор/жол түрінде болатын біреуіне көшіріңіз. Класстар үшін Портал класстарын мүмкіндігігше (кейбіреулері талап етіледі) қайта қолданып, бірақ содан кейін қалаған жалпы орналасуды алу үшін ағымдағы мәнерлерді қайта жазып жән жетілдірудің орнына өзіңіздің жеке класстарыңызды анықтап және қосу қажет болады.  Аттар үшін біздің ұсынылған ат түрлендіруін қолданыңыз. Мұнда әрдайым беттің негізгі мазмұны үшін "ibmMainContainer" атты бір контейнер болуы керек:  - "ibmMainContainer" (бастапқы, беттің негізгі мазмұны)  Егер мұнда басқа контейнерлер болса, біз сізге сіздің орналасуларыңыз бен қораптан тыс орналасулар арасындағы жеңіл ауысымды ұсыну үшін келесі басқа аттардың бірін қолдануға кеңес береміз:  - "тақырып" (бет ішіндегі тақырып немесе баннер)  - "екінші" (бүйірлік тақта ретіндегі екінші мазмұнға екінші болатын мазмұн)  - "үшінші" (бүйірлік тақта ретіндегі екінші мазмұнға екінші болатын мазмұн)  - "қосымша" (үшінші мазмұнға екінші немесе кейін болатын мазмұн)  - "төменгі деректеме" (беттің төменгі жағындағы баннер немесе тіркелгі деректері). 
  
  Егер сіз орналасуда ұқсас бөлімдерді қайталасаңыз, онда 2 түрін
"additional2" және "additional3" қолдану арқылы ұсынылған аттардың кез келгенінің соңына ұсынылады. Осы аттарды және осы ат түрлендіруін қолдану құралдар тақтасын қолдану арқылы орналасулар арасында ауысқан кезде өтулерге тегіс болуын арттырады.  	
Сіз сонымен қатар icon.gif ретіндегі сіздің жалпы орналасу қалтасындағы файл белгісін құра аласыз.

Жалпы орналасуыңызды бір анықтағаннан кейін оны жүйемен бірге тіркеу керек болады. Оны жолды
WebDAV <theme>\system\layouts.json файлына қосу арқылы орындңыз. Бар жолды көшіріп және өңдеп және жалпы орналасу қалтаңызға көздеу үшін қажетті өзгертулерді жасаңыз және жалпы орналасуыңызға ат және бірегей идентификатор мәнін беріңіз. Сіздің жалпы орналасуыңыз қазір құралдар тақтасында пайда болады.



레이아웃 개요
****************

WebDAV 내의 'layout-templates' 폴더는 도구 모음을 통해 페이지에 사용할 수 있는 레이아웃
템플리트를 정의하도록 WebSphere Portal에서 올바르게 정의된 폴더입니다. 이 폴더 내에 레이아웃당
하나의 폴더(layout.html 파일 포함)가 있습니다. 사용자 고유 레이아웃을 위한 고유 폴더를 작성합니다. 필요한
layout.html 구문을 보고 학습하기 위해 기존 폴더 중 하나를 복사하고, 이름을 바꾸고, 수정할 수 있습니다.

layout.html 구문의 요약은 다음과 같습니다.

- 파일의 맨 위에 숨겨진 컨테이너가 하나 있습니다. 사용자 정의 레이아웃에서는 바로 사용할 수 있는
  레이아웃에 표시되는 내용에서 변경되지 않은 파일의 맨 위에 이 컨테이너가 항상 숨겨져 있어야 합니다.
  컨테이너 클래스를 변경하면 안 되고 컨테이너 이름이 "ibmHiddenWidgets"로 유지되어야 합니다.

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- 숨겨진 하나의 컨테이너 다음에는 여러 컨테이너가 표시됩니다. 그 예는 다음과 같습니다.

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  여기서 레이아웃에 포함될 표시되는 컨테이너의 수 및 열 형태의 컨테이너와 격자/행
  형태의 컨테이너를 결정해야 합니다. 필요한 컨테이너 수가 될 때까지 컨테이너 div 행을
  복사하거나 삭제한 다음, 필요에 따라 컨테이너 클래스와 이름을 조정하십시오. 열 형태가
  될 컨테이너의 wpthemeCol 컨테이너 div 행을 복사하십시오. 격자/행 형태가 될 컨테이너의
  wpthemeRow 컨테이너 div 행을 복사하십시오.

  클래스의 경우, 가능한 한 많은 포털 클래스를 재사용하지만(일부가 필수이므로)
  원하는 사용자 정의 레이아웃을 가져오도록 특정 스타일을 대체하고 조정하려면
  사용자 고유 클래스의 일부를 정의하고 추가해야 합니다.

  이름의 경우, 권장되는 이름 지정 규칙을 사용하십시오. 페이지의 기본
  컨텐츠에 대해 항상 컨테이너 "ibmMainContainer"가 있어야 합니다.

  - "ibmMainContainer" (페이지의 기본 컨텐츠)

  다른 컨테이너가 있는 경우, 사용자의 레이아웃과 바로 사용할 수 있는 레이아웃 사이에서
  쉽게 전환할 수 있도록 다음과 같은 다른 이름 중 하나를 사용하는 것이 좋습니다.

  - "headline"(페이지의 헤더나 배너)
  - "secondary"(사이드바와 같은, 기본 컨텐츠의 2차 컨텐츠)
  - "tertiary"(사이드바와 같은, 2차 컨텐츠의 2차 컨텐츠)
  - "additional"(3차 컨텐츠의 2차 이상의 컨텐츠)
  - "footer"(페이지의 맨 아래에 있는 배너나 푸터). 
  
  레이아웃에서 유사한 섹션을 반복한 경우, 권장되는 이름의 끝에 2 - n의 숫자를
  첨부해야 합니다(예: "additional2"와 "additional3" 사용). 이 이름 및 이름
  지정 규칙을 사용하면 도구 모음을 통해 레이아웃 간에 전환할 때 쉽고 적절한
  슬라이드 전환이 가능해집니다.
  	
또한 사용자 정의 레이아웃 폴더에 아이콘 파일을 작성할 수 있습니다(예: icon.gif).

사용자 정의 레이아웃을 정의하면 시스템에 이를 등록해야 합니다. 등록하려면 WebDAV
<theme>\system\layouts.json 파일에 행을 추가해야 합니다. 기존 행을 복사하고 수정하고,
사용자 정의 레이아웃 폴더와 아이콘을 가리키고 사용자 정의 레이아웃에 표시 이름과
고유 ID를 제공하도록 필요한 사항을 변경하십시오. 사용자 정의 레이아웃이 도구 모음에 표시됩니다.



Layouts - overzicht

De map 'layout-templates' binnen WebDAV is een goed gedefinieerde map van WebSphere Portal voor het definiëren van de bestaande layoutsjablonen en kan worden gebruikt op een pagina vanaf de werkbalk. Binnen deze map is voor elke layout één map met het bestand
layout.html - maak uw eigen map voor uw eigen layout. U kunt een van de bestaande mappen kopiëren, hernoemen en wijzigen, om te kunnen zien hoe de vereiste syntaxis in layout.html werkt.

Een overzicht van de syntaxis in layout.html:

- Bovenin het bestand bevindt zich een verborgen container. In uw aangepaste layout moet deze verborgen container in de ongewijzigde vorm van de meegeleverde layouts aanwezig zijn. De containerklassen moeten niet worden gewijzigd en de containernaam moet "ibmHiddenWidgets" blijven:

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Onder deze verborgen container bevinden zich de zichtbare containers, zoals:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Hier moet u beslissen hoeveel zichtbare containers in uw layout aanwezig moeten zijn, en welke een kolomopmaak dan wel een raster/rij-opmaak moeten hebben. Kopieer of wis de div-regels voor de container totdat u beschikt over het gewenste aantal
containers, en werk vervolgens waar nodig de containerklassen en -namen bij. Kopieer een div-regel wpthemeCol voor de containers die een kolomopmaak moeten hebben. Kopieer een div-regel wpthemeRow voor de containers die een raster/rij-opmaak moeten hebben.

  Voor de klassen maakt u zo veel mogelijk opnieuw gebruik van de Portal-klassen (omdat enkele hiervan verplicht zijn), maar mogelijk moet u ook uw enkele van uw eigen klassen definiëren en toevoegen om bepaalde stijlen enigszins aan te passen, om zodoende de gewenste aangepaste layout te bereiken.

  Gebruik voor de namen de door ons aanbevolen naamgeving. Er moet altijd een container met de naam "ibmMainContainer" aanwezig zijn voor de hoofdcontent van de pagina:

  - "ibmMainContainer" (de primaire hoofdcontent van de pagina)

  Als er andere containers zijn, wordt aangeraden om te werken met een van de volgende andere namen, om het overschakelen tussen uw layouts en de meegeleverde layouts soepeler te laten verlopen:

  - "headline" (koptekst of banner over de breedte van de pagina)
  - "secondary" (content die secundair is ten opzichte van de hoofdcontent, bijvoorbeeld een flankbalk)
  - "tertiary" (content die secundair is ten opzichte van de secundaire content, bijvoorbeeld een flankbalk)
  - "additional" (content die secundair ten opzichte van de de tertiaire content)
  - "footer" (banner of voettekst onderaan de pagina). 
  
  Als in een layout vergelijkbare secties meerdere keren voorkomen, wordt aanbevolen om 2 tot en met n toe te voegen aan het einde van de aanbevolen namen, bijvoorbeeld "additional2" en "additional3". Door gebruik te maken van deze namen en deze naamgeving, vergroot u de kans op soepele overgangen bij het overschakelen tussen layouts via de werkbalk.

Daarnaast kunt u een pictogrammenbestand maken in uw map voor de aangepaste layout, zoals icon.gif.

Zodra u uw aangepaste layout hebt gedefinieerd, moet u deze registreren in het systeem. U kunt dit doen door een regel toe te voegen aan het WebDAV-bestand <theme>\system\layouts.json. Kopieer en wijzig een bestaande regel zodat deze verwijst naar de map voor uw aangepaste layout en pictogram en om voor uw aangepaste layout een weergavenaam en een uniek ID op te geven. Uw aangepaste layout wordt nu vermeld op de werkbalk. 



Oversikt over layouter (norsk)
**********************

Mappen 'layout-templates' i WebDAV er en WebSphere Portal-definert mappe for å definere hvilke
layoutmaler som finnes og kan brukes på en side fra verktøylinjen. I denne mappen finnes det en
mappe med filen layout.html per layout - opprett din egen mappe for din egen layout. Du kan kopiere,
endre navn på og endre en av de eksisterende mappene for å se og lære den nødvendige layout.html-syntaksen.

Sammendrag av layout.html-syntaksen:

- Det finnes en skjult container øverst i filen. Din egendefinerte layout må alltid ha denne
skjulte containeren øverst i filen uendret fra det du ser i de forhåndsdefinerte layoutene.
  Containerklassene må ikke endres, og containernavnet "ibmHiddenWidgets" må beholdes:

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Etter den skjulte containeren følger det synlige containere, for eksempel:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Her må du avgjøre hvor mange synlige containere layouten skal ha, og hvilke som skal være kolonne-formede
  og hvilke som skal være rutenett/rad-formede. Kopier eller slett container-div-linjer til du har riktig antall
  containere, og tilpass deretter containerklassene og navnene slik du ønsker. Kopier en wpthemeCol container-div-linje
  for containerne som skal være kolonne-formede. Kopier en wpthemeRow container-div-linje for containerne som skal
  være rutenett/rad-formede.

  For klassene bør du gjenbruke Portal-klassene så mye som mulig (fordi noen er nødvendige), men du må kanskje
  også definere og legge til noen av dine egne klasser for å overstyre noe og justere enkelte stiler slik at
  du får den tilpassede layouten du ønsker.

  For navn bruker du våre anbefalte navngivningsregler. Det må alltid være en container med navnet
  "ibmMainContainer" for hovedinnholdet på siden:

  - "ibmMainContainer" (det primære hovedinnholdet på siden)

  Hvis det er andre containere, anbefaler vi at du bruker følgende navn for å kunne veksle
  jevnt mellom dine layouter og de forhåndsdefinerte layoutene:

  - "headline" (overskrift eller banner på tvers av siden)
  - "secondary" (innhold som er sekundært til hovedinnholdet, for eksempel en sidelinje)
  - "tertiary" (innhold som er sekundært til det sekundære innholdet, for eksempel en sidelinje)
  - "additional" (innhold som er sekundært til eller underordnet det tertiære innholdet)
  - "footer" (banner eller bunntekst på tvers nederst på siden). 
  
  Hvis du har gjentatte liknende seksjoner i en layout, anbefales det at du tilføyer 2 til n til slutt i
  de anbefalte navnene, for eksempel at du bruker "additional2" og "additional3". Hvis du bruker disse navnene
  og disse navngivningsreglene, øker det sannsynligheten for at du får jevne overganger når du veksler mellom
  layouter som bruker verktøylinjen.
  	
Du kan også opprette en ikonfil i din tilpassede layoutmappe, for eksempel icon.gif.

Når din tilpassede layout er definert, må du registrere den i systemet. Gjør dette ved å legge
til en linje i WebDAV-filen <theme>\system\layouts.json. Kopier og endre en eksisterende linje
og gjør de nødvendige endringene slik at den peker til din tilpassede layoutmappe og ikon, og gi
din tilpassede layout et visningsnavn og en unik ID. Din tilpasset layout blir nå vist på verktøylinjen.



Przegląd układów (język polski)
****************

Folder layout-templates znajduje się w katalogu WebDAV i zawiera pochodzące
z produktu WebSphere Portal poprawne definicje określające, które szablony
układów istnieją i mogą zostać użyte na stronie z poziomu paska narzędzi. W tym
folderze znajduje się folder zawierający plik layout.html, który odpowiada
układowi. W celu utworzenia własnego układu należy utworzyć dodatkowy folder. Aby
zapoznać się z wymaganą składnią pliku layout.html, można kopiować i
modyfikować istniejące foldery oraz zmieniać ich nazwy.

Poniżej przedstawiono podsumowanie składni pliku layout.html:

- Na początku pliku znajduje się ukryty kontener, który musi pozostać
niezmieniony w układzie niestandardowym (i znajdować się na początku pliku). Nie
można zmieniać klas kontenerów ani nazwy kontenera (ibmHiddenWidgets):

<div class="hiddenWidgetsDiv">
	<!-- widgety zawarte w tym kontenerze są domyślnie ukryte w interfejsie użytkownika -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Po deklaracji ukrytego kontenera znajdują się deklaracje widocznych
kontenerów, takich jak:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Należy podjąć decyzję dotyczącą liczby widocznych kontenerów w układzie
niestandardowym oraz określić, które kontenery mają odpowiadać kolumnom, a
które wierszom lub siatce. Należy skopiować lub usunąć linie podziału
kontenerów, aby uzyskać wymaganą liczbę kontenerów, a następnie odpowiednio
dopasować klasy i nazwy kontenerów. W przypadku kontenerów odpowiadających
kolumnom należy skopiować linię podziału kontenera wpthemeCol. W przypadku kontenerów odpowiadających
wierszom lub siatce należy skopiować linię podziału kontenera wpthemeRow.

 Należy w maksymalnym stopniu korzystać z klas portalu
(niektóre z nich są wymagane). Może wystąpić konieczność zdefiniowania i
dodania własnych klas w celu przesłonięcia oraz dopasowania niektórych stylów i
uzyskania odpowiedniego układu niestandardowego.

 Należy używać zalecanej konwencji nazewnictwa. W każdym przypadku musi być
obecny kontener o nazwie ibmMainContainer przeznaczony dla głównej treści
strony:
 - ibmMainContainer (główna treść strony)
 Jeśli występują inne kontenery, zaleca się użycie jednej z następujących
nazw, aby zapewnić płynne przełączanie się między niestandardowymi i
standardowymi układami:

 - headline (nagłówek strony lub baner na stronie)
 - secondary (treść drugorzędna wobec głównej treści, np. pasek
boczny)
 - tertiary (treść o mniejszym znaczeniu wobec treści drugorzędnej, np. pasek
boczny)
 - additional (treść o mniejszym znaczeniu niż treść oznaczona kontenerem o
nazwie tertiary)
 - footer (baner lub stopka na dole strony)
  
  W przypadku powtórzeń podobnych sekcji w układzie zaleca się dodanie liczby
(od 2 do n) na końcu zalecanej nazwy, czyli utworzenie nazw takich jak
additional2 i additional3. Używanie takich nazw i stosowanie opisanej konwencji
nazewnictwa zwiększa prawdopodobieństwo zachowania
płynnych, prawidłowych przejść podczas przełączania się między układami przy
użyciu paska narzędzi.
 	
Można również utworzyć plik ikony (np. icon.gif) w folderze układu
niestandardowego. 

Po zdefiniowaniu układu niestandardowego należy go zarejestrować w
systemie. W tym celu należy dodać wiersz w pliku <theme>\system\layouts.json
znajdującym się w katalogu WebDAV. Kopiując i modyfikując istniejący wiersz,
należy wprowadzić odpowiednie zmiany: utworzyć wskazanie na własną ikonę i
folder układu niestandardowego oraz nadać układowi nazwę
wyświetlaną i unikalny identyfikator. Po wykonaniu tych czynności układ
niestandardowy zostanie wyświetlony na pasku narzędzi.



Descrição geral dos esquemas (Português)
****************

Esta pasta 'layout-templates' no WebDAV é uma pasta bem definida pelo WebSphere Portal, para definir os modelos de
esquema existentes e aqueles que podem ser utilizados numa página a partir da barra de ferramentas. Dentro desta
pasta encontra-se uma pasta com o ficheiro layout.html por esquema - crie a sua própria pasta para o seu esquema. Pode copiar,
mudar o nome e modificar uma das pastas existentes para consultar e aprender a sintaxe de layout.html necessária.

Segue-se um resumo da sintaxe de layout.html:

- Existe um contentor oculto no início do ficheiro. Um esquema personalizado deverá ter sempre este
  contentor oculto no início do ficheiro, inalterado em relação ao que vê nos esquemas prontos a utilizar.
  As classes de contentor não devem ser alteradas e o nome do contentor deve permanecer "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- os mecanismos neste contentor estão ocultos na IU por predefinição -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- A seguir ao contentor oculto estão os contentores visíveis como, por exemplo:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Aqui terá de decidir quantos contentores visíveis terá o esquema e quais deles serão do tipo coluna e do
  tipo grelha/linha. Copie ou elimine linhas div de contentor até ter o número necessário de
  contentores e, em seguida, ajuste as classes e os nomes dos contentores conforme necessário. Copie uma linha div de contentor wpthemeCol
  para os contentores que serão do tipo coluna. Copie uma linha div de contentor wpthemeRow para os contentores que serão
  do tipo grelha/linha.

  Relativamente às classes, reutilize as classes do Portal tanto quanto possível (uma vez que algumas delas são necessárias), mas, em seguida, também poderá
  ser necessário definir e adicionar algumas classes próprias para substituir e ajustar ligeiramente determinados estilos,
  de forma a obter o esquema personalizado pretendido.

  Para os nomes, utilize a nossa convenção de nomenclatura recomendada. Terá de existir sempre um contentor com o nome
  "ibmMainContainer" para o conteúdo principal da página:

  - "ibmMainContainer" (o conteúdo principal da página)

  Se existirem outros contentores, recomendamos a utilização de um dos seguintes nomes para proporcionar uma comutação
  suave entre os seus esquemas e os esquemas prontos a utilizar:

  - "headline" (cabeçalho ou faixa que atravessa a página)
  - "secondary" (conteúdo secundário em relação ao conteúdo principal, como, por exemplo, uma barra lateral)
  - "tertiary" (conteúdo secundário em relação ao conteúdo secundário, como, por exemplo, uma barra lateral)
  - "additional" (conteúdo secundário ou para além de secundário em relação ao conteúdo terciário)
  - "footer" (faixa ou rodapé que atravessa a parte inferior da página). 
  
  Se tiver secções semelhantes repetidas num esquema, é recomendado acrescentar 2 até n no fim de
  qualquer um dos nomes recomendados, tal como utilizar "additional2" e "additional3". A utilização destes nomes e desta
  convenção de nomenclatura irá aumentar a probabilidade de ter transições suaves e sensíveis ao comutar entre os
  esquemas utilizando a barra de ferramentas.
  	
Também pode criar um ficheiro de ícone na pasta do esquema predefinido, como, por exemplo, icon.gif.

Quando tiver o esquema personalizado definido, é necessário registá-lo no sistema. Para tal,
adicione uma linha ao ficheiro <theme>\system\layouts.json do WebDAV. Copie e modifique uma linha
existente e efectue as alterações necessárias para remeter para a pasta do esquema personalizado e para dar
ao esquema personalizado um nomes de apresentação e um ID exclusivo. O esquema personalizado aparecerá agora na barra de ferramentas.



Visão Geral Layouts (Inglês) ****************

" Este layout-templates' dentro da pasta WebDAV é uma pasta bem definido pelo WebSphere Portal para definir quais modelos de layout existe e pode ser utilizado em uma página a partir da barra de ferramentas. Dentro desta pasta é uma pasta com o layout.html por arquivo de layout, criar sua própria pasta para seu próprio layout. Você pode copiar, renomear e modifique uma das pastas existentes para ver e aprender a sintaxe layout.html que é necessário.

Um resumo da sintaxe layout.html é o seguinte:

-Há um contêiner oculto na parte superior do arquivo. O layout customizado deve sempre ter este um contêiner oculto na parte superior do arquivo inalterado desde o que você vê no layouts prontos.
  As classes do contêiner não devem ser alteradas e o nome do contêiner deve permanecer "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv"> <!-- widgets nesse contêiner ficam ocultos na UI por padrão --> <div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div> <div style="clear:both"></div> </div>

-Após a um contêiner está oculta os contêineres visível, como:

<div class="wptheme3Col wptheme1Row"> <div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div> <div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div> <div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div> <div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div> </div>

  Aqui você precisa decidir quantos contêineres seu layout visível terá, e que será coluna como e quais serão grade/row-like. Copiar ou excluir linhas contêiner div até que você tenha o número necessário de contêineres e, em seguida, ajuste o classes de contêiner e nomes conforme necessário. Copie uma linha div do contêiner wpthemeCol para aqueles que serão coluna do tipo. Copie uma linha div do contêiner wpthemeRow para aqueles que serão grade/row-like.
  
  Para as classes, reutilizar as classes do Portal o máximo possível (como alguns deles são necessários), mas você também pode precisar definir e incluir algumas das suas próprias classes para substituir um pouco e ajustar determinados estilos para obter o que deseja layout customizado.
  
  Para os nomes, use a nossa convenção de nomenclatura recomendada. Deve sempre haver um contêiner denominado "ibmMainContainer" para o conteúdo principal da página: 
  
  -"ibmMainContainer" (o primário, o conteúdo principal da página)
  
  Se houver outros contêineres, recomendamos utilizar um dos seguintes nomes diferentes para oferecer uma boa alternar entre os layouts e os layouts prontos : 
  
  - "título" (cabeçalho ou banner na página)
  - "secundário" (conteúdo que é secundário ao conteúdo principal, como uma barra lateral)
  - "terciário" (conteúdo que é secundário ao conteúdo secundário, como uma barra lateral)
  - "adicional" (conteúdo que é secundário ou está além do conteúdo terciário)
  - "rodapé" (banner ou rodapé na parte inferior da página). 
  
  Se você tiver repetido seções semelhantes em um layout, é recomendável para anexar 2 de n para o final de qualquer um dos nomes recomendados, tais como usar "additional2" e "additional3". Utilizando esses nomes e essa convenção de nomenclatura aumentará a probabilidade de ter transições suave, sensível ao alternar entre os layouts utilizando a barra de ferramentas.
  	       
Você também pode criar um arquivo de ícone em seu layout customizado da pasta, como icon.gif.

Depois de ter seu layout customizado definido, então você precisa registrá-lo com o sistema. Faça isso incluindo uma linha no WebDAV <theme>\system\layouts.json do arquivo. Copie e modifique uma linha existente e fazer as alterações necessárias para apontar para seu layout customizado pasta e o ícone e dar seu layout customizado um nome de exibição e o id exclusivo. O layout customizado agora será exibido na barra de ferramentas.



Privire generală a dispunerilor
****************

Acest folder "şabloane de dispunere" din WebDAV este un folder bine definit de WebSphere Portal pentru a defini ce şabloane
de dispunere există şi pot fi utilizate într-o pagină din bara de unelte. În acest
folder este un folder cu fişierul layout.html pe dispunere - creaţi-vă propriul folder pentru dispunerea dumneavoastră. Puteţi copia,
redenumi şi modifica unul dintre folderele existente pentru a vizualiza şi învăţa sintaxa layout.html ce este necesară.

Un sumar al sintaxei layout.html este după cum urmează:

- Există un container ascuns în vârful fişierului. Dispunerea dumneavoastră personalizată ar trebui să aibă întotdeauna acest container ascuns în vârful fişierului, neschimbat de ceea ce vedeţi în dispunerile out-of-the-box.
  Clasele containerului nu ar trebui modificate şi numele containerului ar trebui să rămână "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgeturile din acest container sunt ascunse în UI implicit -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- După containerul ascuns urmează containerele vizibile, cum ar fi:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Aici trebuie să decideţi câte containere vizibile va avea dispunerea dumneavoastră şi care vor fi de forma column-like
  şi care de forma grid/row-like. Copiaţi sau ştergeţi liniile div ale containerului până când aveţi numărul necesar de
  containere şi apoi ajustaţi clasele şi numele containerului după cum este necesar. Copiaţi linia div a unui container wpthemeCol
  pentru cele care vor fi column-like. Copiaţi linia div a containerului wpthemeRow pentru cele care vor fi
  grid/row-like.

  Pentru clase, reutilizaţi clasele Portalului pe cât posibil (deoarece unele dintre ele sunt necesare), dar este posibil să aveţi nevoie să definiţi şi să adăugaţi unele clase ale dumneavoastră pentru a ocoli uşor şi ajusta anumite stiluri pentru a obţine dispunerea personalizată pe care o doriţi.

  Pentru nume, utilizaţi convenţia noastră recomandată de numire. Trebuie să fie întotdeauna un container numit
  "ibmMainContainer" pentru conţinutul principal al paginii:

  - "ibmMainContainer" (conţinutul primar, principal al paginii)

  Dacă există alte containere, recomandăm utilizarea unuia dintre următoarele alte nume pentru a oferi o comutare lină între dispunerile dumneavoastră şi dispunerile out-of-the-box:

  - "headline" (antet sau banner peste pagină)
  - "secondary" (conţinut ce este secundar faţă de principalul conţinut, cum ar fi o bară laterală)
  - "tertiary" (conţinut ce este secundar faţă de conţinutul secundar, cum ar fi o bară laterală)
  - "additional" (conţinut ce este secundar sau mai îndepărtat faţă de conţinutul terţiar)
  - "footer" (banner sau subsol peste partea de jos a paginii). 
  
  Dacă aţi repetat secţiuni similare într-o dispunere, este recomandat să adăugaţi la sfârşit 2 până la n până la sfârşitul  oricăror nume recomandate, cum ar fi utilizarea "additional2" şi "additional3". Utilizarea acestor nume şi a acestei
  convenţii de numire va duce la creşterea probabilităţii de a avea o tranziţie lină, sensibilă la comuntarea între dispuneri utilizând bara de unelte.
  	
Puteţi de asemenea să creaţi un fişier pictogramă în folderul de dispunere personalizat, cum ar fi icon.gif.

După ce aveţi definită dispunerea personalizată, atunci aveţi nevoie să o înregistraţi în sistem. Faceţi asta
prin adăugarea unei linii în fişierul WebDAV <theme>\system\layouts.json. Copiaţi şi modificaţi o linie existentă
şi faceţi modificările necesare pentru a indica înspre folderul dumneavoastră de dispunere personalizat şi pictogramă şi să îi dea dispunerii dumneavoastră personalizate un nume de afişare şi un ID unic. Dispunerea dumneavoastră personalizată va apărea acum în bara de unelte.



Обзор макетов
****************

Папка WebDAV 'layout-templates' описывает набор существующих
шаблонов макетов WebSphere Portal, которые можно использовать на
странице из панели инструментов. В ней расположена одна папка с
файлом layout.html для каждого макета - создайте новую папку для
своего макета. Можно скопировать, переименовать и изменить одну из
существующих папок, чтобы получить общее представление о
синтаксисе файла layout.html.

Ниже приведен обзор синтаксиса файла layout.html: 

- На верхнем уровне файла расположен один скрытый контейнер. В
пользовательском макете этот контейнер должен оставаться без
изменений по сравнению со стандартными макетами. Классы контейнера
"ibmHiddenWidgets" запрещено изменять: 

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- За скрытым контейнером следуют видимые контейнеры: 

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Определите число отображаемых контейнеров в макете, а также их
  формат - столбец или таблица/строка. С помощью строк div добавьте
  требуемое число контейнеров и настройте классы и имена контейнеров.
Для контейнеров в виде столбцов скопируйте строку div wpthemeCol. Для
контейнеров в виде таблиц/строк скопируйте строку div wpthemeRow.
Следует как можно больше повторно использовать классы портала
(некоторые из них являются обязательными), однако для получения
пользовательских макетов может потребоваться добавить собственные
классы для переопределения и настройки отдельных стилей. Используйте
рекомендуемое соглашение об именах. Всегда должен существовать один
контейнер с именем "ibmMainContainer" для основных материалов
страницы:

- "ibmMainContainer" (основное содержимое страницы)

Если планируется использовать другие контейнеры, то
рекомендуется присвоить им следующие имена для
незаметного переключения между макетами и стандартными
макетами:
  - "headline" (заголовок или баннер страницы)
  - "secondary" (вторичные материалы по отношению к первичным материалам, например боковая панель)
  - "tertiary" (третичные материалы по отношению ко вторичным материалам)
  - "additional" (дополнительные материалы по отношению к третичным материалам)
  - "footer" (баннер в нижней части страницы). 
  
  К именам нескольких похожих разделов рекомендуется добавлять номера 2 -
n, например "additional2" и "additional3". Такой подход
позволяет повысить вероятность незаметных переходов при
переключении между макетами с помощью панели инструментов.
Кроме того, в папке пользовательского макета можно создать
файл значка, такой как icon.gif.

После создания пользовательский макет необходимо зарегистрировать в
системе. Для этого добавьте строку в файл WebDAV
<тема>\system\layouts.json. Скопируйте и измените существующую
строку и внесите изменения для указания папки пользовательского
макета и значка, а также для присвоения пользовательскому
макету отображаемого имени и уникального ИД. Теперь
пользовательский макет появится на панели инструментов. 



Prehľad rozložení (slovenčina)
****************

Táto zložka 'layout-templates' vo WebDAV je dobre definovaná zložka produktom WebSphere Portal na definovanie, ktoré šablóny rozloženia existujú a možno použiť na strane z lišty nástrojov. V tejto zložke je jedna zložka so súborom layout.html pre každé rozloženie - vytvorte vlastnú zložku pre vlastné rozloženie. Ak si chcete pozrieť vyžadovanú syntax súboru layout.html a oboznámiť sa s ňou, môžete skopírovať, premenovať a upraviť jednu z existujúcich zložiek. 

Súhrn syntaxe súboru layout.html:

- Na začiatku súboru existuje jeden skrytý kontajner. Vaše vlastné rozloženie by vždy malo obsahovať tento jeden skrytý kontajner na začiatku súboru bez zmeny tak, ako ho vidíte v dodaných rozloženiach. Triedy kontajnera by sa nemali meniť a názov kontajnera by mal zostať "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgety v tomto kontajneri sú predvolene skryté v UI -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Po skrytom kontajneri sú viditeľné kontajnery, napríklad:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Tu musíte rozhodnúť, koľko viditeľných kontajnerov bude vo vašom rozložení, ktoré budú mať štýl stĺpca a ktoré budú mať štýl mriežky/riadka. Kopírujte alebo vymažte riadky div kontajnera, aby ste mali potrebný počet kontajnerov. Potom podľa potreby upravte triedy a názvy kontajnerov. Pre kontajnery, ktoré budú mať štýl stĺpca, skopírujte riadok div kontajnera wpthemeCol. Pre kontajnery, ktoré budú mať štýl mriežky/riadka, skopírujte riadok div kontajnera wpthemeRow.

  Pri triedach sa snažte čo najviac opakovane použiť triedy Portal (niektoré z nich sú povinné). Môžete však potrebovať definovať a pridať aj niektoré vlastné triedy, aby ste mierne nahradili a upravili určité štýly a získali vlastné požadované rozloženie.

  Pre názvy používajte konvencia pomenúvania, ktorú odporúčame. Vždy musí existovať jeden kontajner s názvom "ibmMainContainer" pre hlavný obsah strany:

  - "ibmMainContainer" (primárny, hlavný obsah strany)

  Ak existujú ďalšie kontajnery, odporúčame vám použiť jeden z nasledujúcich názvov kvôli bezproblémovému prechodu medzi vašimi rozloženiami a dodanými rozloženiami:

  - "headline" (hlavička alebo baner cez šírku strany)
  - "secondary" (obsah, ktorý je sekundárny pre hlavný obsah, napríklad bočná lišta)
  - "tertiary" (obsah, ktorý je sekundárny pre sekundárny obsah, napríklad bočná lišta)
  - "additional" (obsah, ktorý je sekundárny alebo na nižšej úrovni ako obsah tertiary)
  - "footer" (baner alebo päta cez šírku spodnej časti strany). 
  
  Ak máte v rozložení opakované podobné sekcie, odporúčame vám pridať čísla 2 až n na koniec ľubovoľného z odporúčaných názvov, napríklad "additional2" a "additional3". Používanie týchto názvov a tejto konvencie pomenúvania zvýši pravdepodobnosť bezproblémových a citlivých prechodov pri prepínaní medzi rozloženiami pomocou lišty nástrojov.

V zložke svojho rozloženia tiež môžete vytvoriť súbory ikony, napríklad icon.gif.

Keď máte definované vlastné rozloženie, musíte ho zaregistrovať v systéme. Spravíte to pridaním riadka do súboru WebDAV <téma>\system\layouts.json. Skopírujte a upravte niektorý existujúci riadok a spravte potrebné zmeny, aby ukazoval na zložku vlastného rozloženia a ikonu. Vášmu rozloženiu tiež musí priradiť zobrazovaný názov a jedinečné ID. Vaše vlastné rozloženie sa teraz zobrazí na lište nástrojov.



Pregled postavitev (slovenščina)
****************

Ta mapa s postavitvami in predlogami 'layout-templates' v WebDAV je dobro definirana mapa izdelka WebSphere Portal, ki določa, katere postavitve
obstajajo in jih je mogoče iz orodne vrstice uporabiti na strani. V tej mapi za vsako postavitev obstaja ena mapa z datoteko
layout.html – izdelajte svojo mapo za lastno postavitev. Eno od obstoječih map lahko prekopirate,
preimenujete ali spremenite ter si tako ogledate in spoznate zahtevano skladnjo datoteke layout.html.

Povzetek skladnje datoteke layout.html:

- Pri vrhu datoteke je en skrit vsebnik. V vaši postavitvi po meri mora biti ta
  skriti vsebnik vedno pri vrhu datoteke v obliki, ki je prikazana v vnaprej pripravljenih postavitvah.
  Razredov vsebnika ne smete spreminjati in ime vsebnika mora ostati "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- gradniki v tem vsebniku so privzeto skriti v uporabniškem vmesniku -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Skritemu vsebniku sledijo vidni vsebniki, kot so na primer:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Na tem mestu se morate odločiti, koliko vidnih vsebnikov bo imela vaša postavitev, kateri vsebniki bodo v obliki stolpcev in
  kateri bodo v obliki mreže oziroma vrstic. Prekopirajte ali izbrišite vrstice div vsebnikov, dokler ne dosežete želenega števila,
  ter nato po potrebi priredite njihove razrede in imena. Za vsebnike, ki bodo v obliki stolpcev,
  prekopirajte vrstico div vsebnika wpthemeCol. Za tiste, ki bodo v obliki mreže oziroma vrstic, prekopirajte vrstico div vsebnika wpthemeRow.

  Za razrede v čim večji meri znova uporabite razrede portala (nekateri od njih so obvezni), vendar boste morda
  morali definirati in dodati tudi nekaj svojih razredov, da boste nekoliko preglasili in priredili nekatere sloge ter tako
  pridobili želeno postavitev po meri.

  Za imena uporabite priporočeni dogovor o poimenovanju. Eden od vsebnikov za glavno vsebino na strani
  mora biti vedno poimenovan "ibmMainContainer":

  - "ibmMainContainer" (primarna, glavna vsebina strani)

  Če obstajajo drugi vsebniki, priporočamo uporabo enega od naslednjih drugačnih imen, da bo zagotovljeno
  gladko preklapljanje med vašimi in vnaprej pripravljenimi postavitvami:

  - "headline" (glava ali pasica čez celotno stran)
  - "secondary" (sekundarna vsebina, ki je po pomenu za glavno vsebino, npr. stranska vrstica)
  - "tertiary" (terciarna vsebina, ki je po pomenu za sekundarno vsebino, npr. stranska vrstica)
  - "additional" (dodatna vsebina, ki je po pomenu za terciarno vsebino)
  - "footer" (pasica ali noga na dnu strani.)
  
  Če v svoji postavitvi ponovite več podobnih razdelkov, je priporočljivo, da priporočenim imenom pripnete
  številke od 2 do n, npr. "additional2" in "additional3". Z uporabo takšnih imen in dogovora o poimenovanju
  bo bolj verjetno, da bo prehod med postavitvami pri preklapljanju z orodno vrstico
  potekal gladko.
  	
V svoji mapi po meri lahko ustvarite tudi datoteko ikone, npr. icon.gif.

Ko je vaša postavitev po meri definirana, jo morate še registrirati v sistem. To storite tako, da
dodate vrstico v datoteko WebDAV <theme>\system\layouts.json. Prekopirajte eno od
obstoječih vrstic ter jo ustrezno spremenite, da bo kazala na vašo mapo s postavitvijo po meri in ikono,
ter da boste postavitvi po meri določili ime za prikaz in unikaten ID. Vaša postavitev po meri se bo zdaj pojavila v orodni vrstici.



Layouter - Översikt (svenska)
****************

Mappen layout-templates i WebDAV är en WebSphere Portal-definierad mapp för att definiera vilka
layoutmallar som finns och som kan användas från verktygsfältet på en sida. I den här mappen
finns en mapp som innehåller en layout.html-fil per layout. Skapa en egen mapp för din egen layout. Du kan kopiera,
byta namn på och ändra dessa befintliga mappar för att se och lär dig den syntax för layout.html som krävs. 

Här följer en sammanfattning av syntaxen för layout.html:

- Det finns en dold behållare överst i filen. Din anpassade layout ska alltid ha denna dolda behållare
  överst i filen på samma sätt som du ser den i de färdiga layouterna. Behållarklasserna får inte ändras och behållarnamnet ska fortsätta att vara "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgetar i den här behållaren döljs som standard i användargränssnittet -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Efter den dolda behållaren följer den synliga behållarna, exempelvis: 

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Här behöver du bestämma dig för hur många synliga behållare det ska finnas i din layout och vilka som ska vara kolumner och vilka som ska vara rutnät/rader. Kopiera eller ta bort behållarrader tills du har det önskade antalet behållare. Justera därefter behållarklasserna och namnet efter behov. Kopiera en wpthemeCol-behållarrad för de behållare som ska bara kolumner. Kopiera en wpthemeRow-behållarrad för de behållare som ska vara rutnät/rader. För klasserna återanvänder du portalklasserna så mycket som möjligt (eftersom vissa av dem är obligatoriska), men du kanske också behöver definiera och lägga till vissa egna klasser för att åsidosätta och justera vissa format så att du får den anpassade layout du vill ha. Följ våra rekommenderade namnregler för namnen. Det måste alltid finnas en behållare med namnet
  "ibmMainContainer" för sidans huvudinnehåll:

  - "ibmMainContainer" (sidans primära, huvudinnehåll)

  Om det finns andra behållare rekommenderar vi att något av följande andra namn används för att ge en mjuk växling mellan dina egna layouter och de färdiga layouterna:

  - "headline" (rubrik eller banderoll tvärs över sidan)
  - "secondary" (innehåll som är sekundärt i förhållande till huvudinnehållet, exempelvis ett sidofält )
  - "tertiary" (innehåll som är sekundärt i förhållande till det sekundära innehållet, exempelvis ett sidofält)
  - "additional" (innehåll som är sekundärt eller är utöver det tertiära innehållet)
  - "footer" (banderoll eller sidfot tvärs över sidans nedre kant). 
  
  Om du har upprepat liknande avsnitt i en layout, rekommenderar vi att du lägger till 2-n i slutet av eventuella rekommenderade namn, exempelvis "additional2" och "additional3". Genom att använda dessa namn och den här namnregeln
  ökar du chansen att få smidiga och begripliga övergångar vid växling mellan layouter med hjälp av verktygsfältet.
  	
Du kan också skapa en ikonfil i din anpassade layoutmapp, t.ex. icon.gif.

När du har definierat din anpassade layout måste du registrera den i systemet. Det gör du genom att lägga till en rad i filen WebDAV <tema>\system\layouts.json. Kopiera och ändra en befintlig rad och göra nödvändiga ändringar för att peka på din anpassade layoutmapp och ge din anpassade layout ett visningsnamn och ett unikt ID. Din anpassade layout kommer nu att visas i verktygsfältet. 



ภาพรวมโครงร่าง (ภาษาไทย)
****************

โฟลเดอร์ 'layout-templates' ภายใน WebDAV คือโฟลเดอร์ที่กำหนดโดย WebSphere Portal เพื่อกำหนดว่าเท็มเพลต
โครงร่างใดที่มีอยู่ และสามารถใช้บนเพจจากแถบเครื่องมือ ภายในโฟลเดอร์
นี้ คือโฟลเดอร์หนึ่งที่มีไฟล์ layout.html ต่อหนึ่งโครงร่าง - สร้างโฟลเดอร์ของคุณเองสำหรับโครงร่างของคุณ คุณสามารถคัดลอก
เปลี่ยนชื่อและแก้ไขหนึ่งในโฟลเดอร์ที่มีอยู่เพื่อดู และเรียนรู้ไวยากรณ์ layout.html ที่จำเป็น

สรุปไวยากรณ์ layout.html เป็นดังนี้:

- มีหนึ่งคอนเทนเนอร์ที่ซ่อนที่ด้านบนของไฟล์ โครงร่างแบบกำหนดเองของคุณควรมีคอนเทนเนอร์
  ที่ซ่อนนี้ที่ด้านบนของไฟล์ที่ไม่เปลี่ยนแปลงจากสิ่งที่คุณเห็นในโครงร่างใหม่จากกล่องเสมอ
  คอนเทนเนอร์คลาสไม่ควรเปลี่ยนแปลง และชื่อคอนเทนเนอร์ควรที่ยังคงเป็น "ibmHiddenWidgets":

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- ต่อจากคอนเทนเนอร์หนึ่งที่ซ่อนคือคอนเทนเนอร์ที่มองเห็นได้ เช่น:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  ที่นี่คุณต้องตัดสินใจว่ามีคอนเทนเนอร์ที่เห็นได้เท่าไหรที่โครงร่างของคุณจะมี และคอนเทนเนอร์ใดที่จะมีคอลัมน์เหมือนกัน
  และคอนเทนเนอร์ใดที่จะมีกริด/แถวเหมือนกัน คัดลอกหรือลบบรรทัด div คอนเทนเนอร์จนกระทั่งคุณมีจำนวนคอนเทนเนอร์
  ที่ต้องการ จากนั้นปรับเปลี่ยนคอนเทนเนอร์คลาส และชื่อตามต้องการ คัดลอกบรรทัด div คอนเทนเนอร์ wpthemeCol
  สำหรับคอนเทนเนอร์ที่จะมีคอลัมน์เหมือนกัน  คัดลอกบรรทัด div คอนเทนเนอร์ wpthemeRow สำหรับคอนเทนเนอร์ที่จะมี
  กริด/แถวเหมือนกัน

  สำหรับคลาสต่างๆ นำคลาส Portal ไปใช้ใหม่ให้ได้มากสุดเท่าที่ทำได้ (เนื่องจากจำเป็นต้องใช้บางส่วน) จากนั้นคุณอาจ
  ต้องกำหนด และเพิ่มบางส่วนของคลาสคุณเองด้วยเพื่อให้แทนที่ และปรับเปลี่ยนสไตล์บางอย่างด้วย
  เพื่อให้ได้โครงร่างแบบกำหนดเองตามที่คุณต้องการ

  สำหรับชื่อ ใช้แนวทางการตั้งชื่อที่แนะนำของเรา โดยต้องมีอย่างน้อยหนึ่งคอนเทนเนอร์ชื่อ
  "ibmMainContainer" สำหรับเนื้อหาหลักของเพจเสมอ:

  - "ibmMainContainer" (เนื้อหาหลักของเพจ)

  ถ้ามีคอนเทนเนอร์อื่นๆ ขอแนะนำให้ใช้หนึ่งในชื่ออื่นๆ ต่อไปนี้เพื่อให้มีการ
  สลับใช้โดยสะดวกระหว่างโครงร่างของคุณ และโครงร่างใหม่จากกล่อง

  - "headline" (ส่วนหัวหรือแถบป้ายของเพจ)
  - "secondary" (เนื้อหารองต่อจากเนื้อหาหลัก เช่นแถบข้าง)
  - "tertiary" (เนื้อหาที่ต่อจากเนื้อหารอง เช่นแถบข้าง)
  - "additional" (เนื้อหาที่ต่อจาก หรือหลังกเนื้อหา tertiary)
  - "footer" (แถบป้ายหรือส่วนท้ายของด้านล่างของเพจ) 
  
  ถ้าคุณมีส่วนคล้ายๆ ซ้ำกันในโครงร่าง ขอแนะนำให้ผนวก 2 ถึง n ที่ท้าย
  ของชื่อที่แนะนำใดๆ เช่นใช้ "additional2" และ "additional3" การใช้ชื่อเหล่านี้ และ
  แนวทางการตั้งชื่อนี้จะช่วยเพิ่มความเข้าใจการส่งผ่านให้ทำได้ราบรื่น เมื่อสลับระหว่าง
  โครงร่างโดยใช้แถบเครื่องมือ
  	
คุณยังสามารถสร้างไฟล์ไอคอนในโฟลเดอร์โครงร่างกำหนดเองของคุณ เช่น icon.gif

เมื่อคุณกำหนดโครงร่างแบบกำหนดเองของคุณแล้ว จากนั้นคุณต้องรีจิสเตอร์กับระบบ ทำเช่นนี้
โดยการเพิ่มบรรทัดในไฟล์ WebDAV <theme>\system\layouts.json  คัดลอก และแก้ไขบรรทัด
ที่มีอยู่ และทำการเปลี่ยนแปลงที่จำเป็นเพื่อให้ชี้ไปยังโฟลเดอร์โครงร่างกำหนดเองของคุณ และไอคอน และให้
โครงร่างกำหนดเองของคุณมีชื่อที่แสดงและ id เฉพาะ โครงร่างแบบกำหนดเองของคุณจะแสดงบนแถบเครื่องมือขณะนี้



Yerleşim Düzenlerine Genel Bakış (Türkçe)
*****************************************

WebDAV içindeki bu 'layout-templates' klasörü, hangi yerleşim düzeni şablonlarının var olduğunu
ve araç çubuğundan bir sayfada kullanılabileceğini tanımlamak için WebSphere Portal tarafından
'iyi' tanımlanmış bir klasördür. Bu klasörde, layout.html dosyasını içeren, yerleşim düzeni başına
tek bir klasör vardır; kendi yerleşim düzeniniz için kendi klasörünüzü yaratın. Gereken layout.html
sözdizimini görmek ve öğrenmek için, var olan klasörlerden birini kopyalayabilir, yeniden
adlandırabilir ve değiştirebilirsiniz.

layout.html sözdizimine ilişkin bir özet:

- Dosyanın başında gizli bir taşıyıcı vardır. Özel yerleşim düzeniniz, dosyanın tepesinde mutlaka
  bu gizli taşıyıcıyı içermeli ve ürünle verilen yerleşim düzenlerindekiyle aynı olmalıdır.
  Taşıyıcı sınıfları değiştirilmemeli ve taşıyıcı adı "ibmHiddenWidgets" olarak bırakılmalıdır:

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Gizi taşıyıcıyı, aşağıdakiler gibi görünür taşıyıcılar izler:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Burada yerleşim düzeninizin kaç görünür taşıyıcı içereceğine ve hangilerinin kolon tipi,
  hangilerinin ızgara/satır tipi olacağına karar vermeniz gerekir. Gereken sayıda taşıyıcı
  elde etmek için, taşıyıcı div satırlarını kopyalayın ya da silin, sonra taşıyıcı sınıfları
  ve adlarını gereksinimlerinize göre ayarlayın. Kolon tipi olacaklar için bir wpthemeCol
  taşıyıcı satırını kopyalayın. Izgara/satır tipi olacaklar için bir wpthemeRow taşıyıcı div
  satırını kopyalayın.

  Sınıflar için, elden geldiğince Portal sınıflarını (bazıları zaten gereklidir) yeniden kullanın;
  ancak, istediğiniz özel yerleşim düzenini elde etmek için, bazı biçemleri biraz değiştirip ayarlayarak
  kendi sınıflarınızı tanımlamanız ve eklemeniz de gerekebilir.

  Adlar için, önerdiğimiz adlandırma kurallarını kullanın. Sayfanın ana içeriği için
  "ibmMainContainer" adlı bir taşıyıcı mutlaka olmalıdır:

  - "ibmMainContainer" (sayfanın birincil, ana içeriği)

  Başka taşıyıcılar varsa, kendi yerleşim düzenleriniz ile ürünle verilen yerleşim düzenleri
  arasında düzgün bir geçiş yapılmasını sağlamak için aşağıdaki diğer adlardan birinin
  kullanılmasını öneririz:

  - "headline" (sayfanın yatay üstbilgisi ya da manşeti)
  - "secondary" (ana içeriğe göre ikincil içerik, örneğin bir kenar çubuğu)
  - "tertiary" (ikincil içeriğe göre ikincil içerik, örneğin bir kenar çubuğu)
  - "additional" (üçüncül içeriğe göre ikincil (ya da ötesi) içerik)
  - "footer" (sayfanın alt kısımındaki yatay altbilgi ya da manşet kısmı)  
  
  Bir yerleşim düzeninde benzeri kısımları yinelediyseniz, önerilen her adın sonuna 2 - n
  arası bir sonek eklemeniz önerilir; "additional2" ve "additional3" gibi. Bu adların
  ve adlandırma kurallarının kullanılmas, araç çubuğunu kullanarak yerleşim düzenleri
  arasında geçiş yapılırken geçişin düzgün ve sorunsuz olma olasılığını artırır.
  	
Özel yerleşim düzeni klasörünüzde bir simge dosyası da (icon.gif gibi) yaratabilirsiniz.

Özel yerleşim düzeninizi tanımladıktan sonra sisteme kaydettirmeniz gerekir. Bunun yapmak
için WebDAV <tema>\system\layouts.json dosyasına bir satır ekleyin. Var olan bir satırı
kopyalayıp değiştirin ve özel yerleşim düzeni klasörünüzü ve simgenizi gösterecek ve özel
yerleşim düzeninize bir görüntü adı ve benzersiz tanıtıcı eklemek için gereken değişiklikleri
yapın. Şimdi özel yerleşim düzeniniz araç çubuğunda görünür. 



Огляд макетів (українська)
****************

Папка layout-templates у WebDAV, чітко визначена у WebSphere Portal, служить для визначення, які шаблони макетів існують і якими з них можна користуватися на сторінці з панелі інструментів. У цій папці для кожного макета є окрема папка з файлом layout.html. Вам потрібно створити власну папку для свого макета. Для цього можна скопіювати, перейменувати та змінити одну з існуючих папок, щоб дізнатися, яким має бути формат файлу layout.html, і навчитися правильно форматувати його.

Узагальнену інформацію про формат файлу layout.html наведено нижче.

- У верхній частині файлу є один прихований контейнер. Створений вами макет має обов'язково містити такий
  самий прихований контейнер, який показано в готових макетах, у верхній частині файлу, без жодних змін.
  Класи контейнера змінювати не можна, ім'я контейнера "ibmHiddenWidgets" слід залишити таким самим:

<div class="hiddenWidgetsDiv">
	<!-- віджети з цього контейнера буде приховано в користувацькому інтерфейсі за замовчуванням -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- Після одного прихованого контейнера містяться видимі контейнери, зокрема:

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  Зараз вам необхідно визначити, скільки саме видимих контейнерів міститиметься у вашому макеті, які
  з них будуть стовпчастими, а які - сітчастими/рядковими. Копіюйте або видаляйте лінії поділу
  контейнерів, поки не отримаєте потрібну кількість контейнерів, після чого налаштуйте класи й
  імена контейнерів відповідним чином. Для стовпчастих контейнерів копіюйте лінію поділу контейнера
  з wpthemeCol, для сітчастих/рядкових контейнерів - із wpthemeRow.

  Для класів використовуйте, наскільки це можливо, класи порталу (які будуть потрібні), а ще радимо
  визначити й додати декілька власних класів, щоби дещо змінити й налаштувати окремі стилі
  та отримати бажаний нестандартний макет.

  Для імен користуйтесь рекомендованою угодою про імена. Один контейнер "ibmMainContainer"
  слід обов'язково передбачити для основного вмісту сторінки:

  - "ibmMainContainer" (головний, основний вміст сторінки)

  Якщо будуть інші контейнери, ми радимо скористатися одним із наведених нижче імен, щоб узгодити
  між собою ваші та готові макети: 
  - "headline" (верхній колонтитул або банер на сторінці),
  - "secondary" (вміст, який є другорядним по відношенню до основного вмісту, наприклад панель вибраного),
  - "tertiary" (вміст, який є другорядним по відношенню до другорядного вмісту, наприклад панель вибраного),
  - "additional" (вміст, який є другорядним по відношенню до або не належить до вмісту "tertiary"),
  - "footer" (банер або нижній колонтитул на сторінці). 
  
  Якщо в макеті повторюються однакові розділи, ми радимо додавати до рекомендованих
  імен цифри від 2 до n, наприклад "additional2", "additional3". Використання таких імен і цієї
  угоди про імена збільшить імовірність ефективних оптимальних переходів у разі переключення
  з одного макета на інший за допомогою панелі інструментів.
  	
У своїй папці макета ви можете також створити файл позначок, наприклад icon.gif.

Коли користувацький макет буде визначено, його потрібно зареєструвати в системі. Для цього додайте відповідний рядок у файл <theme>\system\layouts.json WebDAV. Скопіюйте та змініть існуючий рядок, вносячи необхідні зміни: вкажіть папку користувацького макета та позначку, і надайте користувацькому макету відображуване ім'я й унікальний ідентифікатор. Після цього ваш користувацький макет буде видно на панелі інструментів.



布局概述（中文版）
****************

WebDAV 中的该“layout-templates”文件夹是由 WebSphere Portal 明确定义的文件夹，其中规定了所含的布局模板，以及可在某个页面上使用工具栏中的哪些布局模板。在此文件夹中，每个布局有一个含 layout.html 文件的文件夹 - 为自己的布局创建文件夹。您可以对其中某个现有文件夹进行复制、重命名和修改，以便查看并了解所需的 layout.html 语法。

layout.html 语法摘要如下所示：

- 文件的顶部有一个隐藏的容器。定制布局应该使文件顶部的这个隐藏容器保持不变，与您在现成可用的布局中看到的情况一样。
  不应该更改容器类，容器名称应该依然为“ibmHiddenWidgets”：

<div class="hiddenWidgetsDiv">
	<!-- 缺省情况下，此容器中的窗口小部件隐藏在 UI 中 -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- 一个隐藏容器后面可跟有以下可见容器：

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  您需要在此处确定布局中所含的可见容器数，以及哪些将呈现为柱状，哪些将呈现为网格状/行状。复制或删除容器 div 行，直至达到所需的容器数为止，然后调整容器类和容器名称（如果需要）。为柱状容器复制 wpthemeCol 容器 div 行。为网格状/行状容器复制 wpthemeRow 容器 div 行。

  对于类，请尽可能复用 Portal 类（因为 Portal 类中的部分内容是必需的），但是，稍后您可能还需要定义并添加一些您自己的类，以便对某些样式稍作覆盖和调整，从而获得所需的定制布局。

  对于名称，请使用我们建议的命名约定。页面的主内容必须始终有一个名为“ibmMainContainer”的容器：

  - “ibmMainContainer”（页面的主内容）

  如果存在其他容器，我们建议使用以下某个其他名称，以便在您的布局和现成可用的布局之间能够顺利切换：

  - “headline”（页面中的标题或条幅）
  - “secondary”（重要性低于主要内容的内容，例如侧边栏）
  - “tertiary”（重要性低于次要内容的内容，例如侧边栏）
  - “additional”（重要性低于或高于三级内容的内容）
  - “footer”（页面底部的条幅或页脚）。
  
  如果布局中有相似的重复部分，建议在推荐名称的末尾依次添加数字（从 2 至 N），例如，使用“additional2”和“additional3”。使用此类名称以及此命名约定有助于使用工具栏在布局之间进行顺利切换。
  	
您还可以在定制布局文件夹中创建图标文件，例如 icon.gif。

定义了定制布局之后，即需要向系统进行注册。可通过向 WebDAV <theme>\system\layouts.json 文件添加行来执行此操作。复制并修改现有行，然后进行必要更改以指向定制布局文件夹和图标，并为定制布局提供显示名称和唯一标识。此时，定制布局将显示在工具栏上。



佈置概觀（繁體中文）
****************

WebDAV 中的這個 'layout-templates' 資料夾是 WebSphere Portal 定義良好的資料夾，
用於定義存在哪些佈置範本並可在頁面上從工具列使用。
在此資料夾中，有一個資料夾包含佈置的 layout.html 檔案，每個佈置一個
- 建立用於您的專屬佈置的專屬資料夾。您可以複製、重新命名和修改
現有資料夾之一，以便查看並瞭解所需的 layout.html 語法。

layout.html 語法的摘要如下所示：

- 檔案頂端有一個隱藏的儲存器。在自訂佈置中，檔案頂端的這個隱藏的儲存器應該保持不變，
  它就像在現成佈置中看到的那樣。不應該變更儲存器類別，並且儲存器名稱應該保留為 "ibmHiddenWidgets"：

<div class="hiddenWidgetsDiv">
	<!-- widgets in this container are hidden in the UI by default -->
	<div class="component-container hiddenWidgetsContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="ibmHiddenWidgets"></div>
	<div style="clear:both"></div>
</div>

- 其中一個隱藏的儲存器後跟可見的儲存器，例如：

<div class="wptheme3Col wptheme1Row">
	<div class="component-container wpthemeRow wpthemeHeadlineContainer ibmDndRow wpthemeCol12of12 wpthemeFull" name="headline"></div>
	<div class="component-container wpthemeCol wpthemeSecondaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="secondary"></div>
	<div class="component-container wpthemeCol wpthemePrimaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="ibmMainContainer"></div>
	<div class="component-container wpthemeCol wpthemeTertiaryContainer ibmDndColumn wpthemeLeft wpthemeCol4of12 wpthemeNarrow" name="tertiary"></div>
</div>

  在這裡，您需要決定您的佈置有多少個可見的儲存器，哪些儲存器以直欄形式顯示，
  哪些儲存器以網格/列形式顯示。複製或刪除儲存器分割線，直到您具有所需數目的儲存器為止，
  然後根據需要調整儲存器類別和名稱。複製將以直欄形式顯示之儲存器的 wpthemeCol 儲存器分割線。
  複製將以網格/列形式顯示之儲存器的 wpthemeRow 儲存器分割線。
  對於類別，儘量使用入口網站部分（因為某些類別是必要的），
  但是，您隨後可能要新增某些您的專屬類別，以便略微置換和調整某些樣式以取得您需要的自訂佈置。

  對於名稱，請使用建議的命名慣例。對於頁面的主要內容，一律必須有一個名為
  "ibmMainContainer" 的儲存器：

  - "ibmMainContainer"（頁面的主要內容）

  如果有其他儲存器，則建議您使用下列其中一個名稱，以便可以在佈置與現成的佈置之間順利切換：

  - "headline"（跨越頁面的標頭或橫幅）
  - "secondary"（作用次於主要內容的內容，例如資訊看板）
  - "tertiary"（作用次於次要內容的內容，例如資訊看板）
  - "additional"（作用次於第三層內容或位於第三層內容以外的內容）
  - "footer"（跨越頁面底端的橫幅或標底）。
  
  如果您的佈置中有重複的區段，則建議將 2 到 n 附加至任何建議名稱的末尾，
  例如使用 "additional2" 和 "additional3"。使用此名稱以及此命名慣例
  將提高使用工具列在佈置之間切換的平滑、可感應轉移的可能性。
  	
您也可以在自訂佈置資料夾中建立圖示檔，例如 icon.gif。

定義自訂佈置之後，您需要在系統中註冊它。為此，請在
WebDAV <theme>\system\layouts.json 檔案中新增一行。複製並修改現有行，
進行必要的變更以指向自訂佈置資料夾和圖示，並為
自訂佈置提供顯示名稱和唯一 ID。現在，自訂佈置將會出現在工具列上。



