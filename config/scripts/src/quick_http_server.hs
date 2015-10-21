{-# LANGUAGE OverloadedStrings #-}
module Main where

import Control.Applicative
import Snap.Core
import Snap.Util.FileServe
import Snap.Http.Server
import qualified Data.ByteString.Char8 as B

main :: IO ()
main = do
    let cfg = setAccessLog      (ConfigIoLog B.putStrLn) .
              setErrorLog       (ConfigIoLog B.putStrLn) .
              setPort           8000        $
              defaultConfig
    httpServe cfg site

site :: Snap ()
site = serveDirectory "."
