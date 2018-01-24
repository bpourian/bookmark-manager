# Bookmark-Manager

I have written out the user story below. This lays out the requirements of a
user who would like to be able to have access to a list of their favourite
websites.

This projects uses SQL and Postgres to store data. It is built with Ruby on
Sinatra, HTML and tested in RSpec and capybara.

All development of this project is done in TDD.

## User Stories

```
As a user
So that I can visit websites that I like
I want to see a favourites list of websites
```
```
As a user
So that I can save my favourite websites1
I want to be able to add new links to the favourites list
```
```
As a user
So that I can categorise my links in the favourites list
I want to be able to add tags to each link
```
```
As a user
So that I can find links in a given category
I want to be able to filter my favourites list based on a tag
```


## Domain model
![Alt text](img/domain-model.jpg)
