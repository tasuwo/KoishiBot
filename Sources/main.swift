import SwiftSlackBotter

do {
    let bot : Bot = try Bot()
    let observer = DefaultEventObserver(
            onMessage:{
                (message:MessageEvent, bot:Bot) in
                if let response = getKoishiResponse(userMessage: message, bot: bot) {
                    try bot.reply(message:response, event:message)
                }
            })
    bot.addObserver(observer: observer)
    try bot.start()
} catch let error {
    print("Error Occured \(error)")
}
