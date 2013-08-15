module Deque (Deque(..)) where

import           Prelude hiding (head, init, last, tail)

class Deque q where
    empty   :: q a
    isEmpty :: q a -> Bool

    cons    :: a   -> q a -> q a
    tail    :: q a -> q a
    head    :: q a -> a

    snoc    :: q a -> a -> q a
    last    :: q a -> a
    init    :: q a -> q a


