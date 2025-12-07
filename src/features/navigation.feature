Feature: Navigering mellan vyer
  Som en användare vill jag navigera mellan Katalog, Lägg till bok och Mina böcker
  så att jag enkelt hittar rätt funktion.

  Scenario: Gå till Katalog
    Given jag öppnar startsidan
    Then katalogvyn ska visas

  Scenario: Gå till Lägg till bok
    Given jag öppnar startsidan
    When jag klickar på "add-book"
    Then lägg-till-bok-vyn ska visas

  Scenario: Gå till Mina böcker
    Given jag öppnar startsidan
    When jag klickar på "favorites"
    Then mina-böcker-vyn ska visas