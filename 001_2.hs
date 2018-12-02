module Main where
import System.IO
import Debug.Trace
import Data.Char
import Data.List

countFloor :: String -> Int -> Int -> Int
countFloor _ (-1) count = trace ("heres the count" ++ show count) count
countFloor ('(':xs) num count = num + (countFloor xs (num + 1) (count + 1))
countFloor (')':xs) num count = num + (countFloor xs (num - 1) (count + 1))
countFloor _ _ _ = 0

solve :: String -> IO ()
solve fileName = do
  input <- readFile fileName 
  countFloor input 0 0

main :: IO ()
main = solve "001_input.txt"