import Data.Char

main = do
  contents <- getContents
  putStr $ shortLines contents

shortLines :: String -> String
shortLines xs =
  let allLines = lines xs
      shortLines = filter (\line -> length line < 10) allLines
      result = unlines shortLines
  in result
