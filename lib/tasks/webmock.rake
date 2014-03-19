task :git_stub do
  `curl -is https://api.github.com/users/CrowdHailer > trial.txt`
  `curl -is https://api.github.com/users/CrowdHailer/repos > trial2.txt`
  `curl -is https://api.github.com/repos/CrowdHailer/CV/contents/README.md > trial3.txt`
end