# elm:meteor - 0.1.1

Adds Elm bindings for Meteor.

## TODO

I simply copied the table of contents of the [Meteor docs](http://docs.meteor.com/#/full/).

y: Implemented
t: ToDo
~: Not jet evaluated
n: No plans to implement
N: Won't impelemnt

Core
y   Meteor.isClient
y   Meteor.isServer
y   Meteor.isCordova
y   Meteor.startup
n   Meteor.wrapAsync
y   Meteor.absoluteUrl
y   Meteor.settings
y   Meteor.release

Publish and subscribe
y   Meteor.publish
y     this.userId
n     this.added
n     this.changed
n     this.removed
n     this.ready
n     this.onStop
n     this.error
y     this.stop
y     this.connection
y   Meteor.subscribe
~   DDPRateLimiter

Methods
~   Meteor.methods
~     this.userId
~     this.setUserId
~     this.isSimulation
~     this.unblock
~     this.connection
~   Meteor.Error
~   Meteor.call
~   Meteor.apply

Check
n   check
n   Match.test

Server connections
~    Meteor.status
~    Meteor.reconnect
~    Meteor.disconnect
~    Meteor.onConnection
~    DDP.connect

Collections
~   Mongo.Collection
~     collection.find
~     collection.findOne
~     collection.insert
~     collection.update
~     collection.upsert
~     collection.remove
~     collection.allow
~     collection.deny
~     collection.rawCollection
~     collection.rawDatabase
~   Mongo.Cursor
~     cursor.forEach
~     cursor.map
~     cursor.fetch
~     cursor.count
~     cursor.observe
~     cursor.observeChanges
~   Mongo.ObjectID

Session
y   Session.set
y   Session.setDefault
y   Session.get
y   Session.equals

Accounts
~   Meteor.user
~   Meteor.userId
~   Meteor.users
~   Meteor.loggingIn
~   Meteor.logout
~   Meteor.logoutOtherClients
~   Meteor.loginWithPassword
~   Meteor.loginWith<Service>
~   Accounts.ui.config
~   Accounts (multi-server)
~   AccountsClient
~   AccountsServer
~   AccountsCommon#userId
~   AccountsCommon#user
~   AccountsCommon#config
~   AccountsCommon#onLogin
~   AccountsCommon#onLoginFailure
~   AccountsClient#loggingIn
~   AccountsClient#logout
~   AccountsClient#logoutOtherClients
~   AccountsServer#onCreateUser
~   AccountsServer#validateLoginAttempt
~   AccountsServer#validateNewUser
~   Accounts.createUser
~   Accounts.setUsername
~   Accounts.addEmail
~   Accounts.removeEmail
~   Accounts.verifyEmail
~   Accounts.findUserByUsername
~   Accounts.findUserByEmail
~   Accounts.changePassword
~   Accounts.forgotPassword
~   Accounts.resetPassword
~   Accounts.setPassword
~   Accounts.sendResetPasswordEmail
~   Accounts.sendEnrollmentEmail
~   Accounts.sendVerificationEmail
~   Accounts.onResetPasswordLink
~   Accounts.onEnrollmentLink
~   Accounts.onEmailVerificationLink
~   Accounts.emailTemplates

Templates
n   Template.myTemplate.
n     events
n     helpers
n     onRendered
n     onCreated
n     onDestroyed
n   Template instances
n   template.findAll
n   template.$
n   template.find
n   template.firstNode
n   template.lastNode
n   template.data
n   template.autorun
n   template.subscribe
n   template.view
n   Template.registerHelper
n   Template.instance
n   Template.currentData
n   Template.parentData
n   Template.body
n   Event maps

Spacebars
N   Blaze
N   Blaze.render
N   Blaze.renderWithData
N   Blaze.remove
N   Blaze.getData
N   Blaze.toHTML
N   Blaze.toHTMLWithData
N   Blaze.View
N   Blaze.currentView
N   Blaze.getView
N   Blaze.With
N   Blaze.If
N   Blaze.Unless
N   Blaze.Each
N   Blaze.Template
N   Blaze.isTemplate
N   Renderable content

Timers
~   Meteor.setTimeout
~   Meteor.setInterval
~   Meteor.clearTimeout
~   Meteor.clearInterval

Tracker
N   Tracker.autorun
N   Tracker.flush
N   Tracker.nonreactive
N   Tracker.active
N   Tracker.currentComputation
N   Tracker.onInvalidate
N   Tracker.afterFlush
N   Tracker.Computation
N     computation.stop
N     computation.invalidate
N     computation.onInvalidate
N     computation.onStop
N     computation.stopped
N     computation.invalidated
N     computation.firstRun
N   Tracker.Dependency
N     dependency.changed
N     dependency.depend
N     dependency.hasDependents

ReactiveVar
N   ReactiveVar
N   reactiveVar.get
N   reactiveVar.set

EJSON
~   EJSON.parse
~   EJSON.stringify
~   EJSON.fromJSONValue
~   EJSON.toJSONValue
~   EJSON.equals
~   EJSON.clone
~   EJSON.newBinary
~   EJSON.isBinary
~   EJSON.addType
~   customType.typeName
~   customType.toJSONValue
~   customType.clone
~   customType.equals

HTTP
y   HTTP.call
y   HTTP.get
y   HTTP.post
y   HTTP.put
y   HTTP.del

Email
y   Email.send

Assets
y   Assets.getText
y   Assets.getBinary

package.js
N   Package.describe
N   Package.onUse
N     api.versionsFrom
N     api.use
N     api.imply
N     api.export
N     api.addFiles
N     api.addAssets
N   Package.onTest
N   Npm.depends
N   Npm.require
N   Cordova.depends
N   Package.registerBuildPlugin
N   Plugin.registerSourceHandler

mobile-config.js
N   App.info
N   App.setPreference
N   App.accessRule
N   App.configurePlugin
N   App.icons
N   App.launchScreens

