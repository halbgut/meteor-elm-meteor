Elm.Native.Meteor = {}
Elm.Native.Meteor.make = elm => {
  elm.Native = elm.Native || {}
  elm.Native.Meteor = elm.Native.Meteor || {}

  const Signal = Elm.Native.Signal.make(elm)
  const Utils = Elm.Native.Utils.make(elm)

  const startup = Signal.input('Meteor.startup', false)
  Meteor.startup(() => elm.notify(startup.id, true))

  if(elm.Native.Meteor.value) return elm.Native.Meteor.value
  return elm.Native.Meteor.value = {
    isServer: Meteor.isServer
  , isClient: Meteor.isClient
  , isCordova: Meteor.isCordova
  , absoluteUrl: Meteor.absoluteUrl
  , settings: Meteor.settings
  , release: Meteor.release
  , startup
  }
}

