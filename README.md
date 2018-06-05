# README

# Ruby version
2.5.1

# running backend for dev
```
$ git clone git@github.com:workout-engineers/triceps.git
$ cd triceps
$ bundle install --path vendor/bundle
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rails s
# run server
```

# check your code quality
- ruby
```
$ bundle exec rubocp -a
```

- slim
```
$ bundle exec slim-lint app/**/*.slim
```





samplesamplesamplesamplesample