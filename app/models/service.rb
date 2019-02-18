class Service < ApplicationRecord
    enum statutsofservice: [:penddingservice,:rejectservice, :acceptservice]
end
