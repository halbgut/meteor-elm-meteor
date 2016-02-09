module Meteor where

import Native.Meteor

type Env = Server | Client | Cordova

{-| Stores the current URL and the environment
-}
type alias State =
  { url : String
  , env : Env
  }

init : State
init =
  { url = Native.Meteor.absoluteUrl ()
  , env =
    if Native.Meteor.isCordova
      then Cordova
    else if Native.Meteor.isServer
      then Server
      else Client
  }

{-| Checks if the code is run on the server
-}
isServer : State -> Bool
isServer state =
  state.env == Server

{-| Checks if the code is run on a client
-}
isClient : State -> Bool
isClient state =
  state.env == Client

{-| Checks if the code is run on cordova
-}
isCordova : State -> Bool
isCordova state =
  state.env == Cordova

{-| A signal that fires once when Meteor starts up. I don't see how this is usefull on.
-}
startup : Signal Bool
startup = Native.Meteor.startup

{-| The current release as a string.
-}
release : String
release = Native.Meteor.release

{-| Gets a settings wrapped in Maybes. The argument is a list of keys.

    getSetting ["public", "title"]
-}
getSetting : List String -> Maybe a
getSetting = Native.Meteor.getSetting

