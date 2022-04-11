class UsedTechnology < ApplicationRecord
  has_many :supports, class_name: "Error"
  # errorsだとActiveRecordのメソッドとかぶってる？からargument_errorが出る。
  # class_nameを使用し、関連を設定するモデルクラス名を指定し解決。
end
