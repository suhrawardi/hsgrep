module HsGrep (hsGrep) where

import Text.Regex.Posix ((=~))

hsGrep :: String -> String -> IO ()
hsGrep regex filename = do
  fileSlurp <- readFile filename
  mapM_ putStrLn $ filter (=~ regex) (lines fileSlurp)
