import SwiftSlackBotter

do {
    let bot : Bot = try Bot()
    let observer = DefaultEventObserver(
            onMessage:{
                (message:MessageEvent, bot:Bot) in
                if let response = getKoishiResponse(message, bot: bot) {
                    try bot.reply(response, event:message)
                }
            })
    bot.addObserver(observer)
    try bot.start()
} catch let error {
    print("Error Occured \(error)")
}
