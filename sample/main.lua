local amplitude = require "plugin.amplitude"
local display = require "display"
local native = require "native"
local widget = require "widget"

amplitude.init( "YOUR_API_KEY" )

function login(event)
  -- Set the user ID
  userId = usernameField.text
  amplitude.setUserId( userId )
  amplitude.logEvent( "Login" )

  -- Login code follows...
end

function newGame(event)
  -- Log event
  amplitude.logEvent( "New Game" )

  -- New game code follows...
end

function purchase(event)
  -- Log purchase
  amplitude.logRevenue(1.99)

  -- Purchase code follows...
end

usernameField = native.newTextField(50, 30, 150, 20)
usernameField.text = "sample"

loginBtn = widget.newButton({
  label = "Login"
})
loginBtn.x = display.contentWidth * 0.5
loginBtn.y = 100

loginBtn:addEventListener( "tap", login )

newGameBtn = widget.newButton({
  label = "New Game"
})
newGameBtn.x = display.contentWidth * 0.5
newGameBtn.y = 200

newGameBtn:addEventListener( "tap", newGame )

purchaseBtn = widget.newButton({
  label = "Purchase"
})
purchaseBtn.x = display.contentWidth * 0.5
purchaseBtn.y = 300

purchaseBtn:addEventListener( "tap", purchase )
