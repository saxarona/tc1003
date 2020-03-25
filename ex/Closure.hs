module Closure where

    trans :: [(t, t)] -> [(t, t)]
    trans x = [(xi, zi) | (xi, yi) <- x, (yi, zi) <- x]