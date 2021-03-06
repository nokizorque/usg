apps = {}
	apps.account = {}
		apps.account.icon = dxCreateTexture("images/account_icon.png")
		apps.account.name = "Account App"
		apps.account.position = {}
			apps.account.position.x = -1.5
			apps.account.position.y = 1.5
			apps.account.position.z = 0.5
			
		apps.account.size = {}
			apps.account.size.default = 0.5
			apps.account.size.selected = 0.75
			
		apps.account.allRooms = true
		
		apps.account.event = "UserPanel.App.AccountApp"
		
		apps.account.messages = {}
			apps.account.messages.enterUsername = "Enter your username."
			apps.account.messages.enterPassword = "Enter your password."
			apps.account.messages.passwordTooShort = "Your password must be 6 characters long."
			apps.account.messages.emailTooLong = "Your email must be 4 characters long."

	
	apps.call = {}
		apps.call.icon = dxCreateTexture("images/call_icon.png")
		apps.call.name = "Call App"
		apps.call.position = {}
			apps.call.position.x = 0
			apps.call.position.y = 1.5
			apps.call.position.z = 0.5
			
		apps.call.size = {}
			apps.call.size.default = 0.5
			apps.call.size.selected = 0.75
			
		apps.call.allRooms = false
		
		apps.call.event = "UserPanel.App.CallApp"
		
		apps.call.messages = {}
			apps.call.messages.selectService = "You did not select a service from the list."
		
	apps.gps = {}
		apps.gps.icon = dxCreateTexture("images/gps_icon.png")
		apps.gps.name = "GPS App"
		apps.gps.position = {}
			apps.gps.position.x = 1.5
			apps.gps.position.y = 1.5
			apps.gps.position.z = 0.5
			
		apps.gps.size = {}
			apps.gps.size.default = 0.5
			apps.gps.size.selected = 0.75
			
		apps.gps.allRooms = false
		
		apps.gps.event = "UserPanel.App.GPSApp"
		
		apps.gps.messages = {}
			apps.gps.messages.playerQuit = "This player has quit."
			apps.gps.messages.selectPlayer = "You did not select a player."
			apps.gps.gpsOutsideOnly = "You can only set GPS when outside."
			apps.gps.selectLocation = "You did not select a location."
		
	apps.messages = {}
		apps.messages.icon = dxCreateTexture("images/messages_icon.png")
		apps.messages.name = "Message App"
		apps.messages.position = {}
			apps.messages.position.x = -1.5
			apps.messages.position.y = -1.5
			apps.messages.position.z = 0.5
			
		apps.messages.size = {}
			apps.messages.size.default = 0.5
			apps.messages.size.selected = 0.75
		
		apps.messages.allRooms = true
		
		apps.messages.event = "UserPanel.App.MessageApp"
		
		apps.messages.messages = {}
			apps.messages.messages.playerQuit = "This player has quit."
			apps.messages.messages.selectPlayer = "You did not select a player."
		
	apps.money = {}
		apps.money.icon = dxCreateTexture("images/money_icon.png")
		apps.money.name = "Money App"
		apps.money.position = {}
			apps.money.position.x = 1.75
			apps.money.position.y = 0
			apps.money.position.z = 0.5
			
		apps.money.size = {}
			apps.money.size.default = 0.5
			apps.money.size.selected = 0.75
			
		apps.money.allRooms = false
		
		apps.money.event = "UserPanel.App.MoneyApp"
		
		apps.money.messages = {}
			apps.money.messages.invalidAmount = "Invalid amount."
			apps.money.messages.playerQuit = "This player has quit."
			apps.money.messages.selectPlayer = "You did not select a player."
		
	apps.music = {}
		apps.music.icon = dxCreateTexture("images/music_icon.png")
		apps.music.name = "Music App"
		apps.music.position = {}
			apps.music.position.x = 1.5
			apps.music.position.y = -1.5
			apps.music.position.z = 0.5
			
		apps.music.size = {}
			apps.music.size.default = 0.5
			apps.music.size.selected = 0.75
			
		apps.music.allRooms = true
		
		apps.music.event = "UserPanel.App.MusicApp"	
		
		apps.music.messages = {}
			apps.music.messages.libraryAdd = "Added to library!"
			apps.music.messages.libraryRemove = "Removed from library!"
			apps.music.messages.libraryRemoveError = "Could not remove from library."
			apps.music.messages.urlError = "Could not find related URL!"
			apps.music.messages.selectItem = "You need to select an item!"
			apps.music.messages.selectItemRemove = "You need to select an item to remove!"
		
	apps.browser = {}
		apps.browser.icon = dxCreateTexture("images/browser_icon.png")
		apps.browser.name = "Web Browser"
		apps.browser.position = {}
			apps.browser.position.x = -1.5
			apps.browser.position.y = 0
			apps.browser.position.z = 0.5
			
		apps.browser.size = {}
			apps.browser.size.default = 0.5
			apps.browser.size.selected = 0.75
			
		apps.browser.allRooms = true
		
		apps.browser.event = "UserPanel.App.BrowserApp"			
		
		
appsIDs = 
{
	apps.account,
	apps.call,
	apps.gps,
	apps.money,
	apps.music,
	apps.messages,
	apps.browser
}