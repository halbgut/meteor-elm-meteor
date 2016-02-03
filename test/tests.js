Tinytest.add('Has all Methods', (test) => {
  const is = (obj, name) => test.isTrue(typeof obj[name] !== 'undefined', `Function not defined: ${name}`)
  const elm = {}
  Elm.Native.Meteor.make(elm)
  const funcs = elm.Native.Meteor.value
  is(funcs,'isServer')
  is(funcs,'isClient')
  is(funcs,'isCordova')
  is(funcs,'startup')
  is(funcs,'absoluteUrl')
  is(funcs,'settings')
  is(funcs,'release')
})

