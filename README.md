# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

#users
|カラム名|型|オプション|
|:---|:-----|:------|
|name|string|not null, index|
|image|string||
|age|integer|not null|
|email|string|unique, not null|
|password|string|not null|
- has_many :messages
- has_many :reviews


#teachers
|カラム名|型|オプション|
|:---|:-----|:------|
|name|string|index, not null|
|image|string||
|age|integer|not null|
|email|string|unique, not null|
|password|string|not null|
- has_many :messages
- has_many :reviews
- has_many :posts


#messages
|カラム名|型|オプション|
|:---|:-----|:------|
|body|text|not null|
|image|string||
|user_id|references|foreign_key|
|teacher_id|references|foreign_key|
- belongs_to :user
- belongs_to :teacher


#reviews
|カラム名|型|オプション|
|:---|:-----|:------|
|body|text|not null|
|rate|string||
|user_id|references|foreign_key|
|teacher_id|references|foreign_key|
- belongs_to :user
- belongs_to :teacher


#posts
|カラム名|型|オプション|
|:---|:-----|:------|
|title|string|not null|
|image|string||
|detail|text||
|teacher_id|references|foreign_key|
- belongs_to :teacher


#favorites
|カラム名|型|オプション|
|:---|:-----|:------|
|user_id|references|foreign_key|
|teacher_id|references|foreign_key|
- belongs_to :user
- belongs_to :teacher


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
