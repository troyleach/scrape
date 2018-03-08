# Image Collection

## Notes to reviewer
I want to thank you for the opportunity to present this project.

I feel there this is a lot of things that I left out so I would like to bullet point them to demonstrate that I thought about them.

- first and for most I wrote no tests. I am a firm believer in testing. I try to TDD, makes things easier to code but sometimes I need to write the code before I write the tests. When I find a bug in the code the first action is to write a test to prove that I have resolved the bug.
- I wanted to set up a DB and demonstrate some of my sql strengths as far as using sql with Rails there are a lot of powerful queries that can made using sql with in Rails. Also I feel that this might be a good opportunity to use JSONB. It seems to me that the queries one could do would be endless and instead of making migrations everyday I thought it would be more effective to create a JSONB field and that could be updated as needed.
schema might look something like:

```
  id: integer
  url: string
  data: jsonb
    src: string
    alt: string
    title: stirng
```

- The next thing would be validations. I prove NO control over what the user enters. Basically the application would brake if someone enter a weird url. I feel validating user input is so very important. Especially if the demographics are unknown.
- I think more error handling on the front end is needed as well. If the src is not HTTP and is stored on the sever a broken image is shown and is not very user friendly.

Again, I appreciate the opportunity to show my skill. I do however feel this only scratches surface as to what is in my tool box. This was a exciting project. I enjoyed working on this.

## System requirements

- Ruby-2.4.0 & Rails 5.1.5
- Postgresql 9.1+ for database

## Installation instructions:

git clone ```https://github.com/troyleach/scrape.git```

````
bundle install
````

## Testing
Oh my gosh.. I am noob.. no tests at this point

## Editor/Shell Setup
N/A

#### Aliases

N/A

#### EditorConfig

N/A

## Starting

````
rake db:setup
rails s
````

And then navigate to http://localhost:3000.

You can also find me on Heroku

https://ancient-journey-79934.herokuapp.com/

## Updating

After pulling seed file changes:

````
rake db:reset
````

To do a database migration:

````
rake db:migrate
````


### Dot Files
N/A

#### RuboCop

N/a

#### EditorConfig

N/A

## Troubleshooting


### Viewing logs

N/A

### `pg` gem fails to build

Your system Postgres is out of date (or it is not installed).

````
brew update && brew install postgresql
bundle install
````