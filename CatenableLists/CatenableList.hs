module CatenableList (CatenableList(..)) where

import           Prelude hiding (head, tail, (++))

class CatenableList c where
    isEmpty :: c a -> Bool
    empty   :: c a

    cons    :: a   -> c a -> c a
    snoc    :: c a -> a   -> c a
    (++)    :: c a -> c a -> c a

    head    :: c a -> a
    tail    :: c a -> c a









