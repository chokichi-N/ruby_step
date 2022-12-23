# データを書き換えるクラス
class DataReplacement
  # インスタンス変数inputfile / outputfileを準備
  attr_writer :inputfile, :outputfile

  # データを読み込むための処理
  def replace
    output = File.read(@inputfile).split("\n").map do |content|
      name, sex_code, tel = content.split(',')
      last_name, first_name = name.split
      [last_name, first_name, sex(sex_code), separated_tel(tel)].join(',')
    end.join("\n")
    File.write(@outputfile, output)
  end

  private

  # 性別コードを文字列に変換
  def sex(code)
    code.to_i == 1 ? '男性' : '女性'
  end

  # 携帯電話番号をハイフン区切りに変換
  def separated_tel(number)
    number.match(/(\d{3})(\d{4})(\d{4})/)
    "#{$1}-#{$2}-#{$3}"
  end
end

replacement = DataReplacement.new
#入力ファイルの指定
replacement.inputfile = ARGV[0]
#出力ファイルの指定
replacement.outputfile = ARGV[1]
# データ書き換え
replacement.replace
