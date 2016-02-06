if(Meteor.isClient) {
  Meteor.startup(() => {
    const elems =
      [ document.createElement('div')
      , document.createElement('div')
      ]
    document.body.appendChild(elems[0])
    document.body.appendChild(elems[1])
    Elm.embed(Elm.Meteor.Test.Common, elems[0])
    Elm.embed(Elm.Meteor.Test.Client, elems[1])
  })
} else {
  Elm.worker(Elm.Meteor.Test.Common)
}

