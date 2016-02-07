module Meteor where

import Native.Meteor

{-| Checks if the code is run on the server
-}
isServer : Bool
isServer = Native.Meteor.isServer

{-| Checks if the code is run on a client
-}
isClient : Bool
isClient = Native.Meteor.isClient

{-| Checks if the code is run on cordova
-}
isCordova : Bool
isCordova = Native.Meteor.isCordova

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

{-| The current URL a client is on.
-}
absoluteUrl : String
absoluteUrl = Native.Meteor.absoulteUrl

