class Organization < ApplicationRecord
  extend Enumerize

  belongs_to :user

  enumerize :afiliation, in: { SES事業部: 0}
end
