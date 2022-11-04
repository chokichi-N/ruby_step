module SampleModule
  def sample_method
    p 'call sample_method.'
  end
end

class SampleClass
  include SampleModule
end

instance = SampleClass.new
instance.sample_method
