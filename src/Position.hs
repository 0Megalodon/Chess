module Position (
    Position(..),
    Move,
    toIndex,
    --fromIndex
) where

data Position = Position { rank :: Int, file :: Int }
    deriving (Eq, Show, Ord)

type Move = (Position, Position)

toIndex :: Position -> Int
toIndex (Position r f) = r * 8 + f

--fromIndex :: Int -> Position   --Not used for now
--fromIndex i = Position (i `div` 8) (i `mod` 8)
