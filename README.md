# blog
> Blog for rails.

## installation
> Add this line to your application's Gemfile:

```ruby
# Gemfile in github:
gem 'rails_blog', git: 'https://github.com/afeiship/rails_blog'

# Debug in local:
gem 'rails_blog', path: '/Users/feizheng/github/rails_blog'
```

## model
> The users table fileds.

1. Post
> 文章表

| field   | type   | length | description |
| ------- | ------ | ------ | ----------- |
| title   | string | -      | 文章的标题  |
| content | text   | -      | 文章的内容  |

2. Comment
> 针对文章的评论表。 

| field   | type   | length | description |
| ------- | ------ | ------ | ----------- |
| name    | string | -      | 评论的标题  |
| comment | text   | -      | 评论的内容  |

```shell
./bin/rails g model Post title:string content:text
./bin/rails g model Comment name:string comment:text post_id:integer
```


## resources
- https://web-crunch.com/lets-build-with-ruby-on-rails-blog-with-comments/