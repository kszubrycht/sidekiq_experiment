# SidekiqExperiment

Setup:

```
bundle install
bundle exec ruby ./init_db.rb
```

Start Sidekiq process:

```
bundle exec sidekiq -r ./worker.rb
```

Run script:

```
bundle exec ruby ./script.rb
```

Open console:

```
bundle exec ruby ./console.rb
```
