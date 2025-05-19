
import Foundation

class BaseQuote {
    var content: String

    init(content: String) {
        self.content = content
    }

    func formattedContent() -> String {
        return "“\(content)”"
    }
}

class ExtendedQuote: BaseQuote {
    var author: String

    init(content: String, author: String) {
        self.author = author
        super.init(content: content)
    }

    override func formattedContent() -> String {
        return super.formattedContent() + " — " + author
    }
}
