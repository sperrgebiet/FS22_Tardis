# Tardis for FS22
**This is a revamp of the good old Tardis from FS17**

For beginners: With Tardis you can teleport yourself or your vehicles to any location on the map.
Besides that it has a couple of additional functionalities. See below.

Feedback, this readme and additional information incl. source code can be find at: https://github.com/sperrgebiet/FS22_Tardis

**Please download the latest version directly from GitHub**
[Latest version](https://github.com/sperrgebiet/FS22_Tardis/blob/main/FS22_Tardis.zip?raw=true)

### Features
* Teleport yourself (the player) to any location on the map
* Enter a vehicle to teleport yourself AND the vehicle (incl. implements, trailers) to any location on the map
* Reset a crashed/turned over vehicle. Reset in this case means to turn it over again
* Set up to 5 map hotspots to easily teleport yourself and/or vehicles to one of those spots. Those hotspots obviously get saved & restored.
* Integration with Vehicle Explorer (https://github.com/sperrgebiet/FS22_VehicleExplorer)
  

### Known issues
* You can't teleport goods like pallets on a trailer. Filllevels work though


### Incompatible Mods
* No known ones

## Default Keybinding
|Key Combo|Action|
|:---:|---|
|LAlt + t|Activate Tardis|
|LAlt + Backspace|Reset|
|LAlt + LShift + KeyPad 1 - 5|Set or visit the map hotspot|
|LAlt + LShift + Backspace|Delete a map hotspot in a 25m range|
|LAlt + LShift + R|Camera reset - Workaround for a bug with AD|
|Mouse Left|Teleport|


## Note that the current version does NOT support multiplayer!
Quite frankly, I've no idea about the MP code needed and also no possibility to test it. Actually I think it shouldn't be a big deal, and maybe it already works by just changing
the MP setting in the moddesc.xml from false to true. I assume just the parking possibility has an impact to MP.

## Credits
TyKonKet, fcelsa for Tardis on FS17. That brought the idea and the initial code base. Although the majority was altered for this FS19 version.
Also Kudos to the guys and gals from CoursePlay, VehicleInspector, VehicleFruitHud, EnhancedVehicle and many more for some inspiration and ideas.
Additionally Ifko[nator] for the RegisterSpecialization script.


## Latest Version
0.1.0.0 - I wouldn't call it beta anymore, but I won't make it a v1 before MP is working.

-----


# Tardis für LS22
**Dies ist eine Reinkarnation von Tardis aus LS17**

Für Neueinsteiger: Mit Tardis kannst du dich selbst oder eines deiner Fahrzeuge zu jeder Lokation teleportieren.

Feedback, dieses ReadMe und weitere Informationen sowie der Quelltext findet sich unter: https://github.com/sperrgebiet/FS22_Tardis

**Bitte lade die letzte Version direkt von bei GitHub herunter**
[Letzte Version](https://github.com/sperrgebiet/FS22_Tardis/blob/main/FS22_Tardis.zip?raw=true)

### Funktionen
* Teleportiere dich (den Spieler) an jeden Ort auf der Karte
* Besteige ein Fahrzeug um dich UND das Fahrzeug (inkl. angehängter Geräte, Anhänger) an jeden Ort zu teleportieren
* Wieder aufrichten von umgekippten Fahrzeugen
* Setze bis zu 5 Hotspots auf der Karte um dich und/oder Fahrzeuge an diese Orte zu teleportieren. Diese werden natürlich gespeichert und geladen.
* Integration mit VehicleExplorer (https://github.com/sperrgebiet/FS22_VehicleExplorer)


### Bekannte Probleme
* Man kann keine Güter wie Paletten teleportieren. Inhalte von Anhängern (Filllevels) funktioniert jedoch.

### Inkompatible Mods
* Keine bekannt

## Standard Tastenbelegung
|Key Kombi|Aktion|
|:---:|---|
|LAlt + t|Tardis aktivieren (funktioniert nur auf der MiniMap)|
|LAlt + Rücktaste|Fahrzeug aufrichten|
|LAlt + LUmschalt + NumPad 1 - 5|Setzen/besuchen der Hotspots|
|LAlt + LUmschalt + Rücktaste|Löschen eines Mapspots in der Nähe (25m)|
|LAlt + LUmschalt + R|Zurücksetzen der Kameras - Workaround zu nem Bug mit AD|
|Linke Maustaste|An diese Position teleportieren|


## Beachte, dass die jetzige Version kein Multiplayer unterstützt!
Ehrlich gesagt habe ich keine Ahnung was für MP Code notwendig wäre und auch keine Möglichkeit es zu testen. Vielleicht funktioniert es einfach nur in de moddesc.xml von false auf true zu wechseln.
Ich glaube nur das parken von Fahrzeugen sollte einen Einfluss auf MP haben.

## Credits
TyKonKet, fcelsa für Tardis in LS17. Initiale Idee und Logik, wenn auch der Grossteil des Codes mittlerweile geändert wurde.
Auch Kudos an die Jungs und Mädls von CoursePlay, VehicleInspector, VehicleFruitHud, EnhancedVehicle und vielen anderen für Inspirationen und Ideen.
Des weiteren noch Ifko[nator] für das RegisterSpecialization Skript.

## Letzte Version
0.9.2.1 - Ich nenn es nicht mehr Beta, da es bei mir sehr gut funktioniert. Jedoch werde ich erst eine v1. draus machen wenn ich mal Zeit für MP hab.


# Screenshots
YouTube Vorstellung in Deutsch: https://www.youtube.com/watch?v=w2LY9rmA4-g&t=7s

![FS19_Tardis_1](https://user-images.githubusercontent.com/20586786/53123931-7bb06f80-355a-11e9-87c5-3373f0e49519.png)
![FS19_Tardis_2](https://user-images.githubusercontent.com/20586786/53123933-7bb06f80-355a-11e9-9416-7ff49150004b.png)
![FS19_Tardis_3](https://user-images.githubusercontent.com/20586786/53123934-7bb06f80-355a-11e9-8965-6c13951ac5fb.png)
![FS19_Tardis_4](https://user-images.githubusercontent.com/20586786/53123935-7bb06f80-355a-11e9-951e-6eb95f6ad5cf.png)
![FS19_Tardis_5](https://user-images.githubusercontent.com/20586786/53123936-7c490600-355a-11e9-93e2-fdda079be63d.png)
