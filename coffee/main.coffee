
React = require 'react'
$ = React.DOM
$.concat = (args...) ->
  args.filter((x) -> x?).join(' ')

{EventEmitter} = require 'events'

store = new EventEmitter

store.data =
  entry: 'likes'
  menu: require('./menu')

LinkItem = React.createClass
  displayName: 'LinkItem'

  render: ->
    $.div className: 'candidates',
      $.a
        className: 'link'
        target: '_blank'
        href: @props.data.link
        @props.data.name

SideItem = React.createClass
  displayName: 'SideItem'

  render: ->
    isOpen = store.data.entry is @props.data.category

    $.div
      className: $.concat 'aspect',
        if isOpen then 'aspect-open'
      onClick: =>
        store.data.entry = @props.data.category
        store.emit 'change'
      @props.data.category

AppView = React.createClass
  displayName: 'AppView'

  componentDidMount: ->
    store.on 'change', =>
      @setProps store.data

  render: ->

    sideList = @props.data.menu.map (item) =>
      SideItem data: item, key: item.category

    xs = @props.data.menu.filter (item) =>
      item.category is @props.data.entry
    entryItem = xs[0]

    menuList = entryItem.resources.map (item) =>
      LinkItem data: item, key: item.link

    $.div id: 'app-view',
      $.div id: 'title',
        $.div id: 'name',
          "题叶 @jiyinyiyong"
        $.div id: 'about',
          "ChenYong, 1991, CoffeeScript & Cirru"
      $.div id: 'menu',
        $.div id: 'category',
          sideList
        $.div id: 'resources',
          $.div id: 'menu-list',
            menuList
          $.div id: 'description',
            entryItem.description

React.renderComponent (AppView data: store.data),
  document.querySelector 'body'