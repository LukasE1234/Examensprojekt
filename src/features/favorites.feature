Feature: Hantera favoriter
  Som användare vill jag kunna markera och avmarkera böcker som favoriter
  så att jag kan samla dem under Mina böcker.

  Scenario: Markera en bok som favorit
    Given jag öppnar startsidan
    When jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska synas i mina böcker

  Scenario: Ta bort en bok från favoriter
    Given jag öppnar startsidan
    When jag markerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska synas i mina böcker
    When jag klickar på "catalog"
    And jag avmarkerar boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" som favorit
    And jag klickar på "favorites"
    Then boken "Hur man tappar bort sin TV-fjärr 10 gånger om dagen" ska inte längre synas i mina böcker
