class OrderProduct < ApplicationRecord
	belongs_to :product
	belongs_to :order
	# 製作ステータス
	enum production_status: {"着手不可" =>0, "製作待ち" =>1, "製作中" =>2, "製作完了" =>3}
	# 小計
	def subtotal_price
		ordered_price * count
	end
end
