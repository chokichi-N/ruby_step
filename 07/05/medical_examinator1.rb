class MedicalExaminator
  # インスタンス変数heightを設定
  def height=(height)
    @height = height
  end

  # インスタンス変数heightを取得
  def height
    @height
  end
end

examinator = MedicalExaminator.new
examinator.height = 170
p examinator.height
