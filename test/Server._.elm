module Meteor.Test.Common where

import Regex
import Graphics.Element exposing (show)
import ElmTest exposing (..)
import Console
import Task

import Meteor

tests : Test
tests =
  suite "Check for all common Methods"
    [
    ]

port runner : Signal (Task.Task x ())
port runner =
  Console.run <| consoleRunner tests

main =
  show ""

