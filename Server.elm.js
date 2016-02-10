Elm.Native.Meteor = Elm.Native.Meteor || {}
Elm.Native.Meteor.Server = {}
Elm.Native.Meteor.Server.make = elm => {
  elm.Native = elm.Native || {}
  elm.Native.Meteor = elm.Native.Meteor || {}
  elm.Native.Meteor.Server = elm.Native.Meteor.Server || {}

  if(elm.Native.Meteor.Server.values) return elm.Native.Meteor.Server.values

  const Signal = Elm.Native.Signal.make(elm)
  const List = Elm.Native.List.make(elm)

  const publish = name => Signal.input(name, false)
  const registerPubs = pubs => {
    List.toArray(pubs).forEach(pub => {
      const name = pub.name.substr(6)
      Meteor.publish(name, Meteor.wrapAsync(function () {
        elm.notify(pub.id,
          { userId: this.userId
          , connection: this.connection
          , _callback: done
          }
        )
      }))
    })
    return Signal.input(`Meteor.Subscriptions`, '')
  }
  const send = (cursor, pub) => {
    pub._callback(cursor)
    return elm.Meteor.Sub.Responded
  }

  return elm.Native.Meteor.Server.value = {
    publish,
    registerPubs
  }
}

