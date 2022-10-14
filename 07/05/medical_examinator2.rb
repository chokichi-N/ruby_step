class MedicalExaminator
  # インスタンス変数heightへのアクセスを可能に
  attr_accessor :height
end

examinator = MedicalExaminator.new
examinator.height = 170
p examinator.height
