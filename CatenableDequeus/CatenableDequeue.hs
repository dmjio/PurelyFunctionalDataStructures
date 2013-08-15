module CatenableDequeue
    (CatenableDequeue(..))
    where

import           Deque
import           Prelude hiding (head, tail, (++))

class Deque c => CatenableDequeue c where
    (++) :: c a -> c a -> c a



