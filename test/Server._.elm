module Meteor.Test.Common where

import Regex
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

