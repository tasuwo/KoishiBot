import SwiftSlackBotter

let randomMessages = [
    "もしもーし。今、貴方の後ろにいまーす",
    "はーい。見てまーす。",
    "貴方の死体は地霊殿のエントランスに飾ってあげる！",
    "人の心なんて見ても落ち込むだけで良い事なんて何一つ無いもん(´・ω・`)",
    "もしもし、私メリーさん。今あなたの後ろにいるの。",
    "貴方には恨みはないけど、ここで野垂れ死ぬ未来をあげるわ♡",
    "意味わかんないよ♡",
    "貴方って何処に住んでるの？育ちが悪そうだけどー。",
    "ふっしぎー、夢の中に入ったぞー",
    "ふーん、みんな格好いいなぁ。私も闘いたいなぁ",
    "わーい，かいかーん",
    "見えてないのかな。これでも喰らえい！",
    "こりゃやみつきになっちゃうね",
    "え？私が判るの？今まで話しかけられる事なんて殆ど無かったから",
    "ふぉっふぉっふぉ。も・ち・ろ・ん、じゃ",
    "どうしたの？怖じ気づいたの？",
    "内緒。もう私の宝物だもん。",
    "感情なんてもとより持ち合わせていないもん",
    "誰しも子供の時にね、大人には気付かれない友達っていたでしょ？",
    "私のペットには恋焦がれるような陰惨な力の神様が欲しいなー",
    "私なら恋焦がれるような殺戮とかー、平和な人間から殺掠とかー",
    "大丈夫大丈夫、死体は猫に運ばせるから一生私の家で暮らせるよ！",
    "私のもんだもーん",
    "何で耳を塞いでるの？寒いの？",
    "お賽銭ドロボウでもしちゃおうっと",
    "私も出家してみたいー。どうすればいいの？",
    "もっと本能で戦えばいいのよ♡",
    "ぶっとばす！",
]

func getKoishiResponse(userMessage: MessageEvent, bot: Bot) -> String? {
    if userMessage.text == nil { return nil }

    if Regexp(".*<@"+bot.botInfo.botId!+">.*").isMatch(userMessage.text!) {
        return randomMessages.random()
    } else if Regexp(".*こいし.*").isMatch(userMessage.text!) {
        return [
            "はーい♡",
            "はろー♡" + bot.botInfo.usernameFor(id: userMessage.user) + "♡",
        ].random()
    } else if Regexp(".*つらい|疲れ|つかれ|助けて|たすけて.*").isMatch(userMessage.text!) {
        return [
            "じゃぁとどめさしたげるね♡",
            "がんばれ♡がんばれ♡",
            "あれー？あっけないのね♡",
            "自分だけが大変だと思ってるでしょ？♡",
            "甘えるなよ小童",
        ].random()
    } else if Regexp(".*研究.*").isMatch(userMessage.text!) {
        return [
            "進捗どうですか？",
        ].random()
    } else if Regexp(".*さとり|おねえちゃん|姉.*").isMatch(userMessage.text!) {
        return [
            "(  ﾟ∀ﾟ)o彡゜さとりん！さとりん！",
            "おねえちゃぁああああああああああああああ",
            "お姉ちゃん！お姉ちゃん！お姉ちゃん！お姉ちゃんんんんうわぁああああああああああああああああああああああん！！！あぁああああ…ああ…あっあっー！あぁああああああ！！！お姉ちゃんお姉ちゃんお姉ちゃんぅううぁわぁああああ！！！あぁ！クンカクンカ！スーハースーハー！スーハースーハー！いい匂いだなぁ…くんくん んはぁっ！お姉たんの桃色ショートをクンカクンカしたいお！クンカクンカ！あぁあ！！間違えた！モフモフしたいお！モフモフ！モフモフ！髪髪モフモフ！カリカリモフモフ…きゅんきゅんきゅい！！私がおやつのプリン勝手に食べちゃった時のジト目お姉ちゃんかわいかったよぅ！！あぁぁああ…あああ…あっあぁああああ！！ふぁぁあああんんっ！！私がいて良かったねお姉ちゃん！あぁあああああ！かわいい！お姉ちゃん！かわいい！あっああぁああ！同人作品も大量発売されて嬉し…いやぁああああああ！！！にゃああああああああん！！ぎゃああああああああ！！ぐあああああああああああ！！！同人作品なんて現実じゃない！！！！あ…なんかよくよく考えてみたら…お 姉 ち ゃ ん は 現 実 じ ゃ な い？にゃあああああああああああああん！！うぁああああああああああ！！そんなぁああああああ！！いやぁぁぁあああああああああ！！はぁああああああん！！ハルトマぁああああん！！この！ちきしょ ！やめてやる！！現実なんかやめ…て…え！？見…てる？お姉ちゃんが私を見てる？お姉ちゃんが生きてる！お姉ちゃんが添い寝ボイスで私に話しかけてるぞ！！！よかった…世の中まだまだ捨てたモンじゃないんだねっ！いやっほぉおおおおおおお！！！私にはお姉ちゃんがいる！！やったねZUNちゃん！！可愛くて死ねるもん！！！あ、旧地獄のお姉ちゃんぁあああああああああ！！いやぁあああああああああああああああ！！！！あっあんああっああんあこころちゃぁあん！！お⑨ぅぅぅうう！！おりんりぃぃぃいいいぃぃんぁ！！！第三の目ぅうぁあああ！！ううっうぅうう！！私の想いよお姉ちゃんへ届け！！地霊殿のお姉ちゃんへ届け！",
        ].random()
    }

    return nil
}
