# 消費税額を計算するクラス
class TaxCalc
  # インスタンス変数を初期化
  def initialize(price, tax_rate)
    @price = price
    @tax_rate = tax_rate
  end

  # 消費税計算の実処理
  def execute
    @price * @tax_rate
  end
end

# executeメソッドを実行
calculator = TaxCalc.new(100, 0.08)
p calculator.execute
