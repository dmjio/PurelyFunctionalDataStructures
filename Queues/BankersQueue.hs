module BankersQueue(BankersQueue) where

import           Data.List (foldl')
import           Prelude   hiding (head, tail)
import           Queue

data BankersQueue a = BQ Int [a] Int [a] deriving (Show)

check :: Int -> [a] -> Int -> [a] -> BankersQueue a
check lenf f lenr r
    | lenr <= lenf  = BQ lenf f lenr r
    | otherwise     = BQ (lenf + lenr) (f ++ reverse r) 0 []

instance Queue BankersQueue where
    empty = BQ 0 [] 0 []
    isEmpty (BQ lenf _ _ _)     = lenf == 0
    snoc (BQ lenf f lenr r) x   = check lenf f (lenr + 1) (x:r)
    head (BQ _ [] _ f)          = error "empty queue"
    head (BQ _ (x:_) _ f)       = x
    tail (BQ lenf [] lenr r)    = error "empty queue"
    tail (BQ lenf (x:f) lenr r) = check (lenf-1) f lenr r

main :: IO ()
main = do
  let q = foldl' snoc (empty :: BankersQueue Int) [1..10]
  putStr "queue: " >> print q
  putStr "head : " >> print (head q)
  putStr "tail : " >> print (tail q)


