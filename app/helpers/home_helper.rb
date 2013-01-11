module HomeHelper
  
  def parse_repo(repo)
    return repo['name'] if repo
    nil
  end
end
