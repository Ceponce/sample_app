require 'spec_helper'

describe "UserPages" do

	subject { page }

  describe "signup page" do
  	before { visit signup_path }

    it { should have.selector('h1', text: 'Sign up')}
    it { should have.selector('title', full_title('Sign up'))}
  end
end
