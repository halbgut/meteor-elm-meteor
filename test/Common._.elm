module Meteor.Test.Common where

import Signal
import Graphics.Element exposing (show)
import Regex
import ElmTest exposing (..)
import Console
import Task

import Meteor

isBool : Bool -> Bool
isBool a =
  True

isSignal : Signal Bool -> Bool
isSignal a =
  True

tests : Test
tests =
  suite "Check for all common Methods"
    [ isBool Meteor.isServer
      |> assert
      |> test "isServer"
    , isBool Meteor.isClient
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
    , Meteor.getSetting ["public", "something"] `assertEqual` Nothing
      |> test "getSetting"
    ]

main =
  if Meteor.isClient
  then elementRunner tests
  else show " "

