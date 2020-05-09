module DMoney

--Enumerated types, reprezentacja waluty jako mozliwe wartosci PLN, USD, itd...
data Currency = PLN | USD | GBP

-- Dependent Type, Typ ktory zalezy od innej wartosci 
data DMoney : Currency -> Type where
  Money : Double -> (currency : Currency) -> DMoney currency

getAmount : DMoney currency -> Double
getAmount (Money amount' currency) = amount' 

addMoney : DMoney currency -> DMoney currency -> DMoney currency
addMoney m1 m2 = let newAmount = getAmount m1 + getAmount m2 in
                     Money newAmount currency

--test-1
plnData : DMoney PLN
plnData = Money 5 PLN

usdData : DMoney USD
usdData = Money 10 USD

gbpData : DMoney GBP 
gbpData = Money 7 GBP

addSameCurrency : Bool -- to sie skompiluje
addSameCurrency = let calculated = addMoney plnData plnData in
                      getAmount calculated == 10

---to sie nie skompiluje
{-
addDiffrentCurrency : Bool
addDiffrentCurrency = let calculated = addMoney plnData usdData in
                          getAmount calculated == 15

-}
