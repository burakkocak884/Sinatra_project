# Reantal Property Management App.

	Welcome to your new gem ,Property Management App, created by Burak KOCAK.

	In this directory, you'll find the files that will help you run the app.


	## Installation
Step #1	In your terminal type in

```
	git clone git@github.com:burakkocak884/Sinatra_project.git
```

to install.


Step #2 In your terminal
run 


```
rake db:migrate
```


in order to create a database with Owners, Properties and Tenants tables.
Step #3(optional)
 In your terminal 


 ```
 rake db:seed
 ```


 to insert the data provided in seed.db file.





	## Usage

Upon running 'rackup config.ru' in your terminal, open your browser, and insert "http://localhost:9292" (the port number(9292) can be different depends on your operating system). Your terminal will display post number once "rackup config.ru" is ran. Once you insert "http://localhost:9292" into browser's url box, you will be presented a welcome message, and two options ( "log in" or "sign up"). Next step depends on you selection. The app will guide you to diffirent pages. You can sign up to create a user name or log in with an existing user name. Note that, A Valid Email address when signing up and non-existing username/email when logging in are required. Once logged in, you can add your properties in database along with tenants associated with the properties. There will always be options available when desire to update and/or delete properties/tenants.
Have fun managing you rental properties!!!


## Development

After checking out the repo,  You can run `rackup config.ru` in terminal to experience the app on a browser.



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/burakkocak884/Sinatra_project.git. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Reantal Property Management’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/burakkocak884/Sinatra_project.git/blob/master/CODE_OF_CONDUCT.md).







