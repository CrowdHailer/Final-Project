require 'spec_helper'

describe Github do
  testname = 'CrowdHailer'
  let(:user) { Github.new testname}
  before do
    stub_request(:any, 'https://api.github.com/users/CrowdHailer').to_return(github_user_profile)
    stub_request(:any, 'https://api.github.com/users/CrowdHailer/repos').to_return(File.new('tmp/stubs/github_user_repos.txt'))
    stub_request(:any, 'https://api.github.com/repos/CrowdHailer/CV/contents/README.md').to_return(File.new('tmp/stubs/github_repo_readme.txt'))
  end

  it 'should be initialized with a username' do   
    expect(user.username).to eq(testname)
  end

  it 'should return a users api uri' do
    expect(user.stats_uri).to eq('https://api.github.com/users/CrowdHailer')
  end

  it 'should return a users github statistics' do
    expect(user.statistics).to include(:login)
  end

  it 'should return a users repo uri' do
    expect(user.repos_uri).to eq('https://api.github.com/users/CrowdHailer/repos')
  end

  it 'should return a users repo names as a list' do
    repo_names = user.repos.map { |repo| repo[:name] }
    expect(repo_names).to include('CV')
  end

  it 'should return a users cv uri' do
    expect(user.cv_uri).to eq('https://api.github.com/repos/CrowdHailer/CV/contents/README.md')
  end

  it 'can return a users cv in plain text' do
    expect(user.cv_plain).to include('CV')
  end

  it 'can return a users cv in html format' do
    expect(user.cv_html).to include('<h1>CV</h1>')
  end

end





