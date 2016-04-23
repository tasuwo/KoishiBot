import Foundation

extension Array {
    func random() -> Element {
        let randInt = Int(arc4random_uniform(UInt32(self.count)))
        return self[randInt]
    }
}
