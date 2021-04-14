class FixRequest < ApplicationRecord
  extend Enumerize

  belongs_to :user

  enumerize :targets, in: { メールアドレス: 0, 電話番号: 1, 現在住所: 2, 緊急連絡先: 3, 続柄: 4, 銀行口座: 5 }
end
