module Meteor where

import Native.Meteor

isServer : Bool
isServer = Native.Meteor.isServer

isClient : Bool
isClient = Native.Meteor.isClient

isCordova : Bool
isCordova = Native.Meteor.isCordova

startup : Signal Bool
startup = Native.Meteor.startup

absoluteUrl : String
absoluteUrl = Native.Meteor.absoluteUrl

release : String
release = Native.Meteor.release

