module SampleModule
  def sample_method
    p 'call sample_method.'
  end
end

class SampleClass
  extend SampleModule
end

SampleClass.sample_method
