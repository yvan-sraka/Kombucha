#!/usr/bin/env stack
-- stack --install-ghc runghc

import Data.Maybe
import System.Environment
import System.Process

main :: IO ()
main = do
    args <- getArgs
    run args

run :: [String] -> IO ()
run (command:args) = fromMaybe help (lookup command dispatch) args
run _ = help []

dispatch :: [(String, [String] -> IO ())]
dispatch = [ ("update", update)
           , ("-h", help)
           , ("--help", help)
           , ("-V", version)
           , ("--version", version)
           ]

--help, -h
help :: [String] -> IO ()
help _ = putStrLn "\
    \Kombucha 0.1.0\n\
    \Yvan SRAKA <yvan@sraka.pw>\n\
    \Simple aliases collection for YeAST\n\
    \\n\
    \USAGE:\n\
    \    kombucha <COMMAND>\n\
    \\n\
    \FLAGS:\n\
    \    -h, --help       Prints help information\n\
    \    -V, --version    Prints version information\n\
    \\n\
    \COMMANDS:\n\
    \    update           Update aliases collection contained in .kombucha\
                        \ folder"

--version, -V
version :: [String] -> IO ()
version _ = putStrLn "Kombucha 0.1.0"

update :: [String] -> IO ()
update _ = do
    _ <- system "cd ~/.kombucha \
            \ && git pull -r"
    return ()
