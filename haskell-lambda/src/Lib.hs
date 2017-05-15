{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc
    ) where

import qualified Data.Text.IO as T
import qualified Network.HTTP as H

someFunc2 :: IO ()
someFunc2 = T.putStrLn "hello world"

someFunc :: IO ()
someFunc = do
  res <- H.simpleHTTP (H.getRequest "http://httpbin.org/get") >>= fmap (take 1000) . H.getResponseBody
  putStrLn (show res)
