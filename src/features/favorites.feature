Feature: U2-U3-U4-U7 Hantera favoriter
  Som användare vill jag kunna markera och avmarkera böcker som favoriter
  så att jag kan samla dem under Mina böcker.

  Scenario: U2 - Markera en bok som favorit
    Given jag öppnar startsidan
    When jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska synas i mina böcker

  Scenario: U3 - Ta bort en bok från favoriter
    Given jag öppnar startsidan
    When jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska synas i mina böcker
    When jag klickar på "catalog"
    And jag avmarkerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska inte längre synas i mina böcker

  Scenario: U4 – Favoritknappen fungerar förutsägbart vid flera klick (slutar som favorit)
    Given jag öppnar startsidan
    When jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag avmarkerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska synas i mina böcker

  Scenario: U4 – Favoritknappen fungerar förutsägbart vid flera klick (slutar avmarkerad)
    Given jag öppnar startsidan
    When jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag avmarkerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag avmarkerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska inte längre synas i mina böcker

  Scenario: U7 – Lägg till en ny bok och favoritmarkera både den och en befintlig bok
    Given jag öppnar startsidan
    When jag klickar på "add-book"
    And jag fyller i titel "Clean Code" och författare "Robert C. Martin"
    And jag klickar på "add-submit"
    And jag klickar på "catalog"
    And jag markerar boken "Clean Code" som favorit
    And jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Clean Code" ska synas i mina böcker
    And boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska synas i mina böcker

