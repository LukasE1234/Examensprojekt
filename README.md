# Examensprojekt – UI‑tester

## Vad som har testats
Detta projekt innehåller automatiserade tester, byggda med Behave och Playwright. Testerna täcker både positiva och negativa användarflöden och är skrivna i Gherkin för tydlighet.

- **Navigering (U1):**  
  Säkerställer att användaren kan öppna startsidan och navigera mellan olika vyer i applikationen. Testerna kontrollerar att länkar och knappar fungerar som förväntat och att rätt innehåll visas vid navigering.

- **Favoriter (U2–U4):**  
  Testar att böcker kan markeras som favoriter och att dessa dyker upp i vyn *Mina böcker*.  
  Verifierar även att avmarkerade böcker försvinner från listan.

- **Lägg till bok (U5):**  
  Kontrollerar att en ny bok kan läggas till genom formuläret med titel och författare. När båda fälten är ifyllda ska knappen *add-submit* vara aktiv och boken ska synas i katalogen efter tillägget.
- Här testas även **säkerhet och edge cases** som specialtecken, ovanliga strängar och validering av inmatning för att undvika fel eller injektioner.  

- **Ännu mer Edge cases vid "lägg till bok" (U6):**  
  Testar validering av formuläret när fälten är ofullständiga:  
  - Titel saknas → knappen ska vara inaktiv.  
  - Författare saknas → knappen ska vara inaktiv.  
  - Både titel och författare saknas (helt tomt) → knappen ska vara inaktiv.  
  Detta säkerställer att inga ofullständiga böcker kan läggas till.  
  Dessutom finns ett positivt fall där båda fälten är ifyllda och knappen ska vara aktiv.

- **Samlad vy (U7):**  
  Verifierar att *Mina böcker* visar en kombination av både fördefinierade böcker och nyinlagda böcker som markerats som favoriter.  
  Testet lägger till en ny bok via *"Lägg till ny bok"*-knappen, markerar den som favorit. Sedan markerar den även en redan existerande bok som favorit och kontrollerar att båda syns i listan. Detta bevisar att vyn fungerar som en samlad lista över alla favoriter.

# Hur du startar testet
```commandline
cd src
behave
```