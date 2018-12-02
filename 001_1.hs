module Main where
import System.IO
-- import Debug.Trace
import Data.Char
import Data.List

countFloor :: String -> Int -> Int
countFloor ('(':xs) num = num + 1 + (countFloor xs num)
countFloor (')':xs) num = num - 1 + (countFloor xs num)
countFloor _ _ = 0

solve :: String -> IO ()
solve fileName = do
  input <- readFile fileName 
  print $ countFloor input 0

main :: IO ()
main = solve "001_input.txt"