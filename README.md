<h1 align="center">
  Awesome Articles
</h1>

[![Build Status](https://travis-ci.com/sviatoslav-krupa/awesome-articles.svg?branch=main)](https://travis-ci.com/sviatoslav-krupa/awesome-articles)
[![Maintainability](https://api.codeclimate.com/v1/badges/f5851c9a1f90b6b8d8bb/maintainability)](https://codeclimate.com/github/sviatoslav-krupa/awesome-articles/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f5851c9a1f90b6b8d8bb/test_coverage)](https://codeclimate.com/github/sviatoslav-krupa/awesome-articles/test_coverage)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)

# Installation

## 1. Install Dependencies
- Install [Docker](https://www.docker.com/get-started).
- Install [Docker Compose](https://docs.docker.com/compose/install/).

## 2. Run Docker Containers
- `$ docker-compose build`
- `$ docker-compose up`

## 3. Set Up Database
- `$ docker-compose run web rails db:setup`

## 4. Verify Installation
- You should be able to see the application at http://localhost:3000/.
- You should be able to view local emails at http://localhost:1080/.
- All specs should pass when running `$ docker-compose run web rspec`.
