module Main where

import HsGrep
import System.Environment (getArgs)

main :: IO ()
main = do
  (myRegex:filenames) <- getArgs
  mapM_ (\filename -> hsGrep myRegex filename) filenames
