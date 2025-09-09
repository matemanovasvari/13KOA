void main(){
  String falvedo = 
"""
báj álom frász folyton fojtom
lelkem parázs sem szunnyadoz
lényed sugár izzította
élteti lágy fuvallata

balga szikrám tűsörtékként
benned szúrt át lélektörvényt
elmém döbbent szörnyű létkép
lelkem szellem könnyt fűz vétkén

Isten kémje füllentgetett?
mígnem mélyen lüktethetett
örömet zseng szíved lelked
köszönet cseng dísszel neked

léted érved szerény lázad
tér ledéren e fény áztat
nem kérelem kínvágy talon
temérdeken hínár halom

plazma varázs tachion köd
bármi csudás higgs felhődön
szerelmesés univerzum
lélekmesén kozmológunk

kín édes bók rám ront gyöngén
paradox mód mámort nyögvén
felém szállong örök szellőd
reám hömpölyg öröm felhőd

tíz és hét gyöngy auguszta rég
fűznék gyöngyöt nem buborék
eddig jöttöm eddig vallék
felfüggesztöm végetlen lét""";

  print(falvedo);
  print("\n");
  print(falvedo.toLowerCase());
  print("\n");
  print(falvedo.toUpperCase());
  print("\n");
  print(falvedo.trim());
  print("\n");
  print(falvedo.replaceAll(" ", "-"));
  print("\n");

  String fromFifthCharacter = "... " + falvedo.substring(5);
  print(fromFifthCharacter);
  print("\n");

  print(falvedo.substring(0, 3).codeUnits);
  print("\n");

  String fromTenthCharacter = falvedo.substring(10) + " ...";
  print(fromTenthCharacter);
}
