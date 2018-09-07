# SidekiqExperiment

Setup:

```
bundle install
bundle exec ruby ./init_db.rb
```

Start Sidekiq process:

```
sidekiq -r ./worker.rb
```

Run script:
```
bundle exec ruby ./script.rb
```
