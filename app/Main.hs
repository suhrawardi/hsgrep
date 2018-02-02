module Main where

import Glob
import GlobRegex
import HsGrep
import System.Environment (getArgs)

main :: IO ()
main = do
  (string:pattern:_) <- getArgs
  mapM_ (\filename -> hsGrep string filename) =<< namesMatching pattern
