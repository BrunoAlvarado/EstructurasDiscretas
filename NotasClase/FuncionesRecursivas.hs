import Debug.Trace (trace)
data Nat = Cero | Suc Nat
  deriving (Eq, Show)

toInt :: Nat -> Int
toInt Cero = 0
toInt (Suc n) = 1 + toInt n

fromInt :: Int -> Nat
fromInt 0 = Cero
fromInt n = Suc (fromInt (n - 1))

showNat :: Nat -> String
showNat = show . toInt


sumaNatT :: Nat -> Nat -> Nat
sumaNatT Cero n = trace ("sumaNat(Cero, " ++ showNat n ++ ") = " ++ showNat n) n
sumaNatT (Suc m) n =
  trace ("sumaNat(Suc " ++ showNat m ++ ", " ++ showNat n ++ ") -> sumaNat(" ++ showNat m ++ ", Suc " ++ showNat n ++ ")") $
  sumaNatT m (Suc n)

multiplicaNatT :: Nat -> Nat -> Nat
multiplicaNatT Cero _ = trace ("multiplicaNat(Cero, _) = Cero") Cero
multiplicaNatT (Suc m) n =
  trace ("multiplicaNat(Suc " ++ showNat m ++ ", " ++ showNat n ++ ") -> sumaNat(" ++ showNat n ++ ", multiplicaNat(" ++ showNat m ++ ", " ++showNat n ++ "=") $
  sumaNatT n (multiplicaNatT m n)


potenciaNatT :: Nat -> Nat -> Nat
potenciaNatT _ Cero = trace ("potenciaNat(_, Cero) = 1") (Suc Cero)
potenciaNatT a (Suc n) =
  trace ("potenciaNat(" ++ showNat a ++ ", Suc " ++ showNat n ++ ") -> multiplicaNat(" ++ showNat a ++ ", potenciaNat(" ++ showNat a ++ ", " ++ showNat n ++ "))") $
  multiplicaNatT a (potenciaNatT a n)

  
