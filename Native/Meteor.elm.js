Elm.Native.Meteor = {}
Elm.Native.Meteor.make = elm => {
  elm.Native = elm.Native || {}
  elm.Native.Meteor = elm.Native.Meteor || {}

  const Signal = Elm.Native.Signal.make(elm)
  const Utils = Elm.Native.Utils.make(elm)
  const List = Elm.Native.List.make(elm)
  const Maybe = Elm.Maybe.make(elm)

  const startup = Signal.input('Meteor.startup', false)
  Meteor.startup(() => elm.notify(startup.id, true))

  const getSetting = (keys, type) => {
    let res = Meteor.settings
    let arr = List.toArray(keys)
    arr.forEach(key => { if(res) res = res[key] })
    return ( res
      ? Maybe.Just(res)
      : Maybe.Nothing
    )
  }

  if(elm.Native.Meteor.value) return elm.Native.Meteor.value
  return elm.Native.Meteor.value = {
    isServer: Meteor.isServer
  , isClient: Meteor.isClient
  , isCordova: Meteor.isCordova
  , absoluteUrl: Meteor.absoluteUrl
  , release: Meteor.release
  , startup
  , getSetting
  }
}

