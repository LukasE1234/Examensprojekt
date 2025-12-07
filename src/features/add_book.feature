Feature: U5-U6 Lägga till ny bok
  Som en användare vill jag kunna lägga till en ny bok med titel och författare
  så att den syns i katalogen och kunna favo.

  Scenario Outline: U5a – Lägg till ny bok med olika indata
    Given jag öppnar startsidan
    When jag klickar på "add-book"
    And jag fyller i titel "<title>" och författare "<author>"
    And jag klickar på "add-submit"
    Then boken "<title>" ska synas i katalogen

    # Edge cases
    Examples:
      | title                                                     | author          |
      | Testdriven utveckling                                     | Kent Beck       |
      | ABC                                                         | Öö               |
      | En väldigt väldigt väldigt lång titel som testar gränserna| FörfattareX     |
      | !@#$%^&*()_+=                                             | SpecialChar     |
      | <script>alert("XSS")</script>                             | Hacker          |
      | "Citat" inom titel                                        | QuoteUser       |
      | Titel med å ä ö                                           | Nordisk         |
      | Emoji 😀📚                                               | Emojiförfattare |

  Scenario: U5b – Lägg till och favoritisera en ny bok
    Given jag öppnar startsidan
    When jag klickar på "add-book"
    And jag fyller i titel "Clean Code" och författare "Robert C. Martin"
    And jag klickar på "add-submit"
    Then boken "Clean Code" ska synas i katalogen
    When jag markerar boken "Clean Code" som favorit
    And jag klickar på "favorites"
    Then boken "Clean Code" ska synas i mina böcker

  Scenario: U5c – Lägg till och avmarkera en ny bok
    Given jag öppnar startsidan
    When jag klickar på "add-book"
    And jag fyller i titel "Refactoring" och författare "Martin Fowler"
    And jag klickar på "add-submit"
    Then boken "Refactoring" ska synas i katalogen
    When jag markerar boken "Refactoring" som favorit
    And jag klickar på "favorites"
    Then boken "Refactoring" ska synas i mina böcker
    When jag klickar på "catalog"
    And jag avmarkerar boken "Refactoring" som favorit
    And jag klickar på "favorites"
    Then boken "Refactoring" ska inte längre synas i mina böcker

  Scenario: U6 – Försök lägga till bok utan titel
    Given jag öppnar startsidan
    When jag klickar på "add-book"
    And jag fyller i titel "" och författare "Anonym"
    Then knappen "add-submit" ska vara inaktiv

  Scenario: U6 – Försök lägga till bok utan författare
    Given jag öppnar startsidan
    When jag klickar på "add-book"
    And jag fyller i titel "Namnlös bok" och författare ""
    Then knappen "add-submit" ska vara inaktiv