# 消費税額を計算するクラス
class TaxCalc
  # クラス変数を宣言
  @@tax_rate = 0.08

  # インスタンス変数を初期化
  def initialize(price)
    @price = price
  end

  # 消費税計算の実処理
  def execute
    @price * @@tax_rate
  end
end

# executeメソッドを実行
calculator = TaxCalc.new(100)
p calculator.execute

