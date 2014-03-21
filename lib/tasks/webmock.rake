task :git_stub do
  `curl -is https://api.github.com/users/CrowdHailer > spec/fixtures/requests/github_user_profile.txt`
  `curl -is https://api.github.com/users/CrowdHailer/repos > spec/fixtures/requests/github_user_repos.txt`
  `curl -is https://api.github.com/repos/CrowdHailer/CV/contents/README.md > spec/fixtures/requests/github_repo_readme.txt`
end