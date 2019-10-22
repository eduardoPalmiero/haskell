import System.Environment (getArgs)
import Data.Char (ord)

main :: IO ()
main = do
     args <- getArgs
     case args of
        []          -> putStrLn "Falta regex"
        (regex:_)   -> interact (filtroRegex regex)
        
filtroRegex :: String -> String -> String
filtroRegex regex texto = texto
