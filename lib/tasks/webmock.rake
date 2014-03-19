task :git_stub do
  `curl -is https://api.github.com/users/CrowdHailer > tmp/stubs/github_user_profile.txt`
  `curl -is https://api.github.com/users/CrowdHailer/repos > tmp/stubs/github_user_repos.txt`
  `curl -is https://api.github.com/repos/CrowdHailer/CV/contents/README.md > tmp/stubs/github_repo_readme.txt`
end