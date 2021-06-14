# --------------------------------
# ！！！実行するメソッド一覧！！！
# --------------------------------

# irbでファイル読み込み
# require '/Users/n.kosuke/workspace/vending_machine/step2.rb'

# インスタンス化
# vm = VendingMachine.new

# お金投入
# vm.slot_money (100)

# 現在の投入金額
# vm.current_slot_money

# 現在の売り上げ金額確認(STEP3-4)
# vm.current_sales_money

# お金返却
# vm.return_money

# 格納されているジュースの情報(STEP2)
# vm.juice_data

# 投入金額と在庫の点で、コーラが購入できるか(STEP3-1)
# vm.cola_buy_check

# ジュース値段以上の投入金額が投入されている条件下で購入操作を行うと、ジュースの在庫を減らし、売り上げ金額を増やす(STEP3-2)
# 投入金額が足りない場合もしくは在庫がない場合、購入操作を行っても何もしない(STEP3-3)
# 払い戻し操作では現在の投入金額からジュース購入金額を引いた釣り銭を出力する(STEP3-5) 処理はここで結果はvm.return_moneyで出ます
# ジュース値段以上の投入金額が投入されている条件下で購入操作を行うと、釣り銭（投入金額とジュース値段の差分）を出力する(STEP5)
# (注意) 引数は コーラ、レッドブル、水 の中から string型で入力して下さい
# vm.juice_buy(name)

# 投入金額、在庫の点で購入可能なジュースのリスト
# vm.available_purchase_juice


class VendingMachine
  MONEY = [10, 50, 100, 500, 1000].freeze

  #投入金額の初期化
  #STEP2 ジュースの格納
  #STEP3 売り上げ金額の初期化
  #STEP4 ジュース3種類
  def initialize
    @slot_money = 0
    @sales_money = 0
    @juice = {
      type1: { name: 'コーラ', price: 120, stock: 5 },
      type2: { name: 'レッドブル', price: 200, stock: 5 },
      type3: { name: '水', price: 100, stock: 5 }
    }
  end

  #STEP2 格納されているジュースの情報
  def stock_info
    @juice.each do |j, k|
      k.each do |key, value|
        puts "#{key}：#{value}"
      end
      puts "---------------"
    end
  end

#   def juice_data
#     @juice.each do |j|
#       j.each do |key, value|
#         puts "#{key}, #{value}"
#       end
#     end
#   end
end
