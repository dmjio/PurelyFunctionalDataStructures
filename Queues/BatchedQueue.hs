module BatchedQueue(BatchedQueue) where

import           Data.List (foldl')
import           Prelude   hiding (head, tail)
import           Queue


data BatchedQueue a = BQ [a] [a] deriving (Show)

-- | If front of queue is empty
--   reverse back and add it to front

check :: [a] -> [a] -> BatchedQueue a
check [] r = BQ (reverse r) []
check f  r = BQ f r

-- Queues are FIFO
instance Queue BatchedQueue where
    empty   = BQ [] []
    isEmpty (BQ f r)    = null f -- ^ if front of queue is empty
    snoc (BQ f r) x     = check f (x : r)
    head (BQ [] _)      = error "empty queue"
    head (BQ (x : f) r)   = x
    tail (BQ [] _)      = error "empty queue"
    tail (BQ (x : f) r) = check f r

main :: IO ()
main = print $ foldl snoc (empty :: BatchedQueue Int) [1..10]





