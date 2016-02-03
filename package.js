Package.describe({
  name: 'elm:meteor'
, summary: 'Meteor core bindings'
, version: '0.1.0'
, git: 'https://github.com/Kriegslustig/meteor-elm-meteor.git'
})

Package.onUse(function (api) {
  api.use(['ecmascript@0.1.6', 'meteor@1.1.10', 'elm:make@0.2.2'])
  api.addFiles([
    'Meteor.elm.js'
  , 'Meteor.elm'
  ])
})

Package.onTest(function (api) {
  api.use(['ecmascript@0.1.6', 'tinytest'])
  api.addFiles(['test/stub.js', 'Meteor.elm.js', 'test/tests.js'])
})

