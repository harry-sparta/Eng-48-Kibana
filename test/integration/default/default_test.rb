# InSpec test for recipe kibana-bash::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# describe package("kibana") do
#   it { should be_installed }
#   its('version') { should match /6.8\./  }
# end

# service enable
describe service "kibana" do
  it { should be_enabled }
  it { should be_running }
end
