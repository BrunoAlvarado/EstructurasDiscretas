module EsParBit where
import Data.Bits

esParBit :: Int -> Bool
esParBit n = (n .&. 1) == 0
