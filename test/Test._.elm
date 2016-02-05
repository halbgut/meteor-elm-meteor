module Meteor.Test.Main where

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
    ]

main =
  elementRunner tests

