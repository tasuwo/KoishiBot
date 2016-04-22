import SwiftSlackBotter

do {
    let bot : Bot = try Bot()
    bot.addObserver(DefaultEventObserver(onMessage:{
        (message:MessageEvent,bot:Bot) in
        try bot.reply("こんにちは:heart: " + bot.botInfo.usernameFor(message.user) + ":heart:",event:message)
    }))
    try bot.start()
} catch let error {
    print("Error Occured \(error)")
}
