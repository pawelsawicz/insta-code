----- POLIMORFIZM (poli - wiele, morphe - 'ksztalt', 'postac')

------ 1. Polimorfizm ad-hoc / przeciazenia
------ 2. Polimorfizm parametryczny
------ 3. Polimorfizm inkluzyjny


-- 1. Polimorfizm ad-hoc / przeciazanie
-- Zakladamy ze nie instnieje 

--ad-hoc polimorfizm w idrysie
--identity : String -> String
--identity x = x

--identity : Int -> Int
--identity x = x



-- 2. Parametric polymorphism / Polimorfizm parametryczny
-- Funkcje
identityInt : Int -> Int
identityInt x = x

identityString : String -> String
identityString x = x

proof_identity : identityInt 5 = 5
proof_identity = Refl

identity : a -> a
identity x = x

identity_proof1 : identity 5 = 5
identity_proof1 = Refl

identity_proof2 : identity "insta" = "insta"
identity_proof2 = Refl

identity_proof3_forall_types : identity tty = tty
identity_proof3_forall_types = Refl

--Typy
data MaybeInt = NoInt | JustInt Int 

data MaybeString = NoString | JustString String 

--Generic / Generyk
data MaybeValue a = NoValue | JustVal a 

-- Listy, List a 
-- Drzewa, Tree a

--3. Subtyping / Polimorfizm inkluzyjny (WTF?)
-- Int : Num
-- Double : Num

addNumbers : (Num a) => a -> a -> a
addNumbers x y = x + y

-- Int

addNumbers_proof1 : addNumbers (the Int x) (the Int y) = x + y
addNumbers_proof1 = Refl

-- Double

addNumbers_proof2 : addNumbers (the Double x) (the Double y) = x + y 
addNumbers_proof2 = Refl
