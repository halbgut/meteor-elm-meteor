module Meteor.Server where

import Graphics.Element exposing (Element, show)
import Signal exposing (merge)
import List

import Native.Meteor.Server
import Mongo.Curser

type alias Conn =
  { id : String
  , clientAddress : String
  -- , httpHeaders TODO: Implement this
  }

type Sub =
  { userId : String
  , connection : Conn
  } |
  Responded

type alias Config =
  { subs : List (Signal Sub)
  }

{-| Pubish something documents.
-}
publish : String -> Signal Sub
publish = Native.Meteor.Server.publish

{-|
-}
send : Mongo.Cursor -> Signal Sub -> Sub
send = Native.Meteor.Server.send

{-|
-}
start : Config -> Signal Element
start config =
  Signal.map
    (\_ -> show "")
    (Native.Meteor.Server.registerPubs config.subs)

