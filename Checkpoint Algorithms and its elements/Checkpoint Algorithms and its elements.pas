program AnalyseMots;

var
  phrase: char;
  longueurPhrase, nombreMots, nombreVoyelles: integer;
  dansMot: boolean;

begin
  longueurPhrase := 0;
  nombreMots := 0;
  nombreVoyelles := 0;
  dansMot := false;

  writeln('Entrez une phrase se terminant par un point:');
  repeat
    read(phrase);
    longueurPhrase := longueurPhrase + 1;
    
    // Vérifier si le caractère est une voyelle
    if (phrase = 'a') or (phrase = 'e') or (phrase = 'i') or (phrase = 'o') or (phrase = 'u') or
       (phrase = 'A') or (phrase = 'E') or (phrase = 'I') or (phrase = 'O') or (phrase = 'U') or
       (phrase = 'é') or (phrase = 'è') or (phrase = 'ê') or (phrase = 'à') or (phrase = 'î') or 
       (phrase = 'ô') or (phrase = 'û') or (phrase = 'É') or (phrase = 'È') or (phrase = 'Ê') or 
       (phrase = 'À') or (phrase = 'Î') or (phrase = 'Ô') or (phrase = 'Û') then
      nombreVoyelles := nombreVoyelles + 1;
    
    // Vérifier si le caractère fait partie d'un mot
    if (phrase <> ' ') and (phrase <> '''') then
    begin
      if (not dansMot) then
      begin
        dansMot := true;
        nombreMots := nombreMots + 1;
      end;
    end
    else
      dansMot := false;

  until (phrase = '.');

  // Exclure le point de la longueurPhrase
  longueurPhrase := longueurPhrase - 1;

  writeln('Longueur de la phrase: ', longueurPhrase, ' caractères');
  writeln('Nombre de mots: ', nombreMots);
  writeln('Nombre de voyelles: ', nombreVoyelles);
end.
