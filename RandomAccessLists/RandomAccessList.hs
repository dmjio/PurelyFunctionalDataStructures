module RandomAccessList where

class RandomAccessList r where
    empty   :: r a
    isEmpty :: r a -> Bool

    cons    :: a -> r a -> r a
    head    :: r a -> a
    tail    :: r a -> r a

    lookup  :: Int -> r a -> a
    update  :: Int -> r a -> r a






