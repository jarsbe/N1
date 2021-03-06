React = require 'react'
{Actions} = require("nylas-exports")

class AccountSidebarItem extends React.Component
  @displayName: "AccountSidebarItem"

  render: =>
    className = "item " + if @props.select then " selected" else ""
    <div className={className} onClick={@_onClick} id={@props.item.id}>
      <div className="name">{@props.item.displayName}</div>
    </div>

  _onClick: (event) =>
    event.preventDefault()
    Actions.selectView(@props.item.view)


module.exports = AccountSidebarItem
