module Meteor where

import Native.Meteor

isServer : Bool
isServer = Native.Meteor.isServer

isClient : Bool
isClient = Native.Meteor.isClient

