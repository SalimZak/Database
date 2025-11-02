#1a)
SELECT Produkter.navn,
      Kunder.Fornavn,
      Kunder.Etternavn
      
FROM Produkter,
      Bestillingsprodukter,
      Bestillinger,
      Kunder
      
WHERE (Produkter.ProduktID = Bestillingsprodukter.ProduktID)
  AND (Bestillingsproduker.Bestillingsnummer = Bestillinger.Bestillingsnummer)
  AND (Bestillinger.Kundenummer = Kunder.Kundenummer)
  
ORDER BY Produkt.navn, Kunder.Etternavn, Kunder.Fornavn

#1b)
SELECT Kunder.Etternavn,
      Kunder.Forrnavn,
      SUM(Produkt.Pris),
      COUNT(*) totalsum
      
FROM Produkter,
      Bestillingsprodukter,
      Bestillinger,
      Kunder
      
WHERE (Produkter.ProduktID = Bestillingsprodukter.ProduktID)
  AND (Bestillingsproduker.Bestillingsnummer = Bestillinger.Bestillingsnummer)
  AND (Bestillinger.Kundenummer = Kunder.Kundenummer)
  
GROUP BY Produkt.Pris

HAVING totalsum > 10000

#1c)
SELECT Kunder.Fornavn,
      Kunder.Etternavn,
      F1.Firmanavn = (SELECT(COUNT(F2.Firmanavn))
                      FROM Firma F2
                      WHERE F1.Firmanavn = F2.Firmanavn)
                      
FROM Firma F1,
    Kunder

WHERE Firma.FrimaID = Kunder.FrimaID

ORDER BY Kunder.Etternavn, Kunder.Fornavn DISTINCT 






