@App ?= {}

App.Schemas ?= {}

App.Schemas.Foo =
  name:
    type: String

@Foo = new orion.collection 'foo',
  singularName: 'Foo'
  pluralName: 'Foos'
  link:
    index: 10
    title: 'Foo'
    identifier: 'foo'
  tabular:
    columns: [
      data: 'name', label: 'Name'
    ]

Foo.attachSchema new SimpleSchema App.Schemas.Foo

App.Schemas.Bar =
  name:
    type: String

@Bar = new orion.collection 'bar',
  singularName: 'Bar'
  pluralName: 'Bars'
  link:
    index: 10
    title: 'Bar'
    identifier: 'bar'
    parent: 'foo'
  tabular:
    columns: [
      data: 'name', label: 'Name'
    ]

Bar.attachSchema new SimpleSchema App.Schemas.Bar
