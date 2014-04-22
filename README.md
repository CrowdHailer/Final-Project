# Full Stack People

[![Code Climate](https://codeclimate.com/github/CrowdHailer/Final-Project.png)](https://codeclimate.com/github/CrowdHailer/Final-Project)

#### A webservice to showcase the graduates of [Makers Academy](http://www.makersacademy.com/)

# Installation
1. Clone this repo ```$ git clone git@github.com:CrowdHailer/Final-Project.git```
2. Change into project directory ```$ cd Final-Project```
3. Fetch dependancies with bundler ```$ bundle```
4. Create databases (requires psql details in enviroment variables) ```rake db:create```
5. Update development enviroment database ```rake db:migrate```
6. Update test enviroment database ```rake db:migrate RAILS_ENV=test```

# Testing
Test suit includes rspec unit tests and cucumber behaviour tests

### Unit Tests
1. Ensure databases up to date with ```rake db:migrate RAILS_ENV=test```
2. Run tests with ```rspec```


### Integration Tests
1. Ensure databases up to date with ```rake db:migrate RAILS_ENV=test```
2. Run tests with ``rake cucumber```

# Credits
Build in two weeks for our final project at Makers Academy. Contributers:-

- [Roy](http://ma-student-directory.herokuapp.com/user/Roy-Gardiner)
- [Peter](http://ma-student-directory.herokuapp.com/user/CrowdHailer)
- [Colin](http://ma-student-directory.herokuapp.com/user/ColinFrankish)
- [Nabin](http://ma-student-directory.herokuapp.com/user/nabin369)
- [Mihai](http://ma-student-directory.herokuapp.com/user/MihaiLiviuCojocar)
- [Rolando](http://ma-student-directory.herokuapp.com/user/Rolando-Barbella)
