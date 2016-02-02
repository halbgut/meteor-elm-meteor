Elm.Native.Meteor = {}
Elm.Native.Meteor.make = elm => {
  elm.Native = elm.Native || {}
  elm.Native.Meteor = elm.Native.Meteor || {}

  if(elm.Native.Meteor.value) return elm.Native.Meteor.value
  return elm.Native.Meteor.value = {
    isServer: Meteor.isServer
  , isClient: Meteor.isClient
  }
}

