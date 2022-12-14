---
weight: 8
---

# Elektronische Signatur

## Voraussetzungen

- ein von ECS unterstützter **aktueller Webbrowser** (Firefox,Chrome,Safari,Edge)

- eine aktuelle **Java** Version, zur Installation für Windows/Mac siehe die [Download-Seite von java.com](https://java.com/de/download/)

- ein Kartenlesegerät zum Anschluss über USB an den Computer

  - Gelistet unter buergerkarte.at:
    - [Cryptoshop - Gemalto IDBridge CT30 ecard](http://www.cryptoshop.com/products/smartcardreader/gemalto-idbridge-ct30-ecard.html)
    - [Cryptoshop - Gemalto IDBridge CT40 ecard](http://www.cryptoshop.com/products/smartcardreader/gemalto-idbridge-ct40-gempc-usb-sl-fur-e-card.html)
  - Liste von anderen [SmartCard Reader im Preisportal Geizhals](https://geizhals.at/?cat=nwpcie&xf=14066_extern+kabelgebunden~16574_Smartcard&sort=p#productlist)

- eine gültige Österreichische Signaturkarte

  - alle österreichischenn E-Cards ausgestellt vor September 2019 können als **Bürgerkarte aktivierte E-Card** zum Signieren verwendet werden

    - Um Ihre E-Card zu aktivieren gehen Sie zur ["Bürgerkarte aktivieren" Seite von buergerkarte.at](https://www.buergerkarte.at/aktivieren-karte.html)
    - Wir empfehlen die _"Persönliche Aktivierung in einer der zahlreichen Registrierungsstellen in ganz Österreich"_

      Voraussetzung: Amtlichen Lichtbildausweis und e-card mitbringen
      Vorteil: Die Aktivierung wird von ausgebildeten Mitarbeitern durchgeführt und Ihre Bürgerkarte ist sofort einsatzbereit.

      [Liste der akzeptierten Lichtbildausweise](https://www.buergerkarte.at/ausweisliste.html)

      [Liste der Registrierungsstellen](https://www.buergerkarte.at/registrierungsstellen.html)

  - eine von **A-Trust ausgestellte Signaturkarte**
    - Um eine A-Trust Signaturkarte zu erwerben gehen Sie auf https://www.a-trust.at/de/preisliste/ und wählen Sie "**a.sign premium (Bürgerkarte)**"
    - Falls Sie vorher eine E-Card mit Mocca benutzt haben, ist nichts einzurichten,der Computer ist signierbereit.
    - Installieren Sie bitte **nicht** den von A-Trust empfohlenen Client, sondern installieren/verwenden Sie die OpenSource Bürgerkarten Software Mocca. Deinstallieren Sie den A-Trust Client falls er installiert ist, wir haben Probleme mit gleichzeitiger Benutzung rückgemeldet bekommen.
    - Für den Mocca Client sind bis jetzt keine Einschränkungen bekannt, die eine gleichzeitige Installation mit den A-Trust Client notwendig machen würden.
  - eventuell weitere österreichische Signaturkarten

- Die Signatursoftware Mocca installiert als **lokale Bürgerkartenumgebung**

## Einrichtung der Signatursoftware Mocca

Verwenden Sie für diese Schritte den Webbrowser welchen Sie später für das ECS zum signieren einsetzen wollen. Je nach Betriebsystem können verschiedene Browser/Java Kombination eventuell nicht funktionieren. Signieren mit Firefox ist auf allen (Windows,Mac,Linux) Platformen funktional. Falls Sie einen weiteren Browser zur Signierung verwenden wollen, wiederholen Sie die Punkte 2 und 3 um den Browser für Mocca zu konfigurieren und zu testen. Deinstallieren Sie den A-Trust Client, falls er installiert ist.

1. [Installation der lokalen Bürgerkartenumgebungs-Software Mocca](https://webstart.buergerkarte.at/mocca/webstart/mocca.jnlp)

2. Mit gestarteter Mocca Software (im ausgewählten Webbrowser):

   - [Bestätigen des lokalen https Zertifikats von Mocca](http://localhost:3495/ca.crt)
   - [Detailinformation zur Zertifikatinstallation](http://localhost:3495/help/help.install.cacert.html)

3. [Testen der elektronischen Signatur mit lokaler BKU](https://www.buergerkarte.at/test-suite-karte.html)

### Im ECS signieren

Benutzer der Gruppe "Signing" haben die Tätigkeiten "Votum Signierung" und Amendment-Antwort Signierung" zu Verfügung. Um signieren zu können, muss die "lokale BKU (Bürgerkartenumgebung)" Software auf den verwendeten Computer gestartet sein.

Die Signierungsseite beinhaltet jeweils eine Vorschau der zu signierten Daten, einen Navigationsblock und ein Signierungsfenster.

Navigationsblock:

- Mit "Zurückwerfen" wird das Votum/die Amendment-Antwort wieder in den Bearbeitungsarbeitsablauf zum letzten Arbeitsschritt vor der Signierung zurück geschickt.

- Mit "Überspringen" wird das Votum/die Amendment-Antwort jetzt nicht signiert, und das ECS schlägt das nächste zu signierende Dokument vor.

- Mit "Abbrechen" wird die aktuelle Signierungstätigkeit abgebrochen und in das Hauptmenü gewechselt

Signierungsfenster:

- Um das dargestellte Votum/die Amendment-Antwort zu signieren, geben Sie den PIN-Code ein sobald das Signierungsfenster dazu hinweist. Nicht erfolgreich signierte Voten/Amendment-Antworten bleiben weiterhin als unsignierte Tätigkeiten im System.

#### Bürgerkartenumgebung wechseln

Um die im ECS verwendete Bürgerkartenumgebung zu ändern gehen Sie auf ihr Profil (Klick auf das Personen Icon rechts oben und dann auf ihren Namen) und dort auf "Profil Bearbeiten".

Als vorletzten Eintrag finden Sie den Punkt "Signatur Umgebung".

- wählen Sie "lokale BKU" für Mocca als lokale BKU aus.

- wählen Sie "Handy Signatur" um statt der Signaturkarte die Handysignatur zu verwenden.

Mit Klick auf "Speichern", speichern Sie Ihre Einstellung.
