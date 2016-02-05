module Meteor.Test.Main where

import Regex
import ElmTest exposing (..)
import Meteor

isBool : Bool -> Bool
isBool a =
  True

isSignal : Signal Bool -> Bool
isSignal a =
  True

tests : Test
tests =
  suite "Check for all Methods"
    [ Meteor.isServer == False
      |> assert
      |> test "isServer"
    , Meteor.isClient == True
      |> assert
      |> test "isClient"
    , Meteor.isCordova == False
      |> assert
      |> test "isCordova"
    , isSignal Meteor.startup
      |> assert
      |> test "startup"
    , Meteor.absoluteUrl
      |> Regex.contains (Regex.regex "((([A-Za-z]{3,9}:(?:\\/\\/)?)(?:[-;:&=\\+\\$,\\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\\+\\$,\\w]+@)[A-Za-z0-9.-]+)((?:\\/[\\+~%\\/.\\w-_]*)?\\??(?:[-\\+=&;%@.\\w_]*)#?(?:[\\w]*))?)")
      |> assert
      |> test "absoluteUrl"
    , Meteor.release
      |> Regex.contains (Regex.regex "METEOR@\\d\\.\\d\\.\\d.*")
      |> assert
      |> test "release"
    ]

main =
  elementRunner tests

