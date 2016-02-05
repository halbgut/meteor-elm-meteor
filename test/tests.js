if(Meteor.isClient) {
  Meteor.startup(() => {
    Elm.fullscreen(Elm.Meteor.Test.Main)
  })
}

