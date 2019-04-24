# blog
> Blog for rails.

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