Package.describe({
  name: 'elm:meteor'
, description: 'Meteor core bindings'
, version: '0.0.0'
})

Package.onUse(function (api) {
  api.use(['ecmascript@0.1.6', 'meteor@1.1.10', 'elm:make@0.2.2'])
  api.addFiles([
    'Meteor.elm.js'
  , 'Meteor.elm'
  ])
})

