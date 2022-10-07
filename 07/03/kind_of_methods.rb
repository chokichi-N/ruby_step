class KindOfClasses
  # インスタンスメソッドを定義
  def call_public_method
    p 'publicメソッドが呼ばれました'
    call_private_method
  end

  # クラスメソッドを定義
  def self.call_class_method
    p 'クラスメソッドが呼ばれました'
  end

  # プライベートメソッドを定義
  private

  def call_private_method
    p 'privateメソッドが呼ばれました'
  end
end

# インスタンスメソッドを呼び出す
instance = KindOfClasses.new
instance.call_public_method
# クラスメソッドを呼び出す
KindOfClasses.call_class_method
# プライベートメソッドを呼び出す
instance.call_private_method
