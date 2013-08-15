module Queue(Queue(..)) where

import           Prelude hiding (head, tail)

class Queue q where
    empty   :: q a
    isEmpty :: q a -> Bool
    snoc    :: q a -> a -> q a -- ^ cons backwards, add to tail
    head    :: q a -> a
    tail    :: q a -> q a



