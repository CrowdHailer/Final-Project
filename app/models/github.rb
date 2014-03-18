require 'open-uri'

class Github
  def initialize username
    @username = username
  end

  attr_reader :username
  
  def stats_uri
    "https://api.github.com/users/#{username}"
  end

  def repos_uri
    statistics[:repos_url]
  end

  def cv_uri
    cv_repo = repos.find { |repo| repo[:name] == 'CV' }
    cv_repo[:contents_url].gsub('{+path}', 'README.md')
  end

  def repos 
    fetch_json(repos_uri)
  end

  def statistics 
    fetch_json(stats_uri)
  end

  def cv_plain
    encoded = fetch_json(cv_uri)[:content]
    Base64.decode64(encoded)
  end

  def cv_html
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    markdown.render(cv_plain)
  end

  def fetch_json uri
    raw_data = open(uri).read
    JSON.parse(raw_data, :symbolize_names => true)
  end
end