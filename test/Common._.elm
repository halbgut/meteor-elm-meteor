module Meteor.Test.Common where

import Signal
import Graphics.Element exposing (show)
import Regex
import ElmTest exposing (..)
import Console
import Task

import Meteor exposing (..)

isBool : Bool -> Bool
isBool a =
  True

isSignal : Signal Bool -> Bool
isSignal a =
  True

tests : Test
tests =
  suite "Check for all common Methods"
    [ isServer init
      |> isBool
      |> assert
      |> test "isServer"
    , isClient init
      |> isBool
      |> assert
      |> test "isClient"
    , isCordova init == False
      |> assert
      |> test "isCordova"
    , isSignal startup
      |> assert
      |> test "startup"
    , init.url
      |> Regex.contains (Regex.regex "((([A-Za-z]{3,9}:(?:\\/\\/)?)(?:[-;:&=\\+\\$,\\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\\+\\$,\\w]+@)[A-Za-z0-9.-]+)((?:\\/[\\+~%\\/.\\w-_]*)?\\??(?:[-\\+=&;%@.\\w_]*)#?(?:[\\w]*))?)")
      |> assert
      |> test "absoluteUrl"
    , release
      |> Regex.contains (Regex.regex "METEOR@\\d\\.\\d\\.\\d.*")
      |> assert
      |> test "release"
    , getSetting ["public", "something"] `assertEqual` Nothing
      |> test "getSetting"
    ]

main =
  if isClient init
  then elementRunner tests
  else show ""

