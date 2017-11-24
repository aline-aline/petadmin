# petadmin

This project is an admin system, built with Fae gem and used to run a pet shop.

## Getting Started
### Prerequisites

This app is docker based. To avoid extra configurations, you should have `docker` and `docker-compose` installed. 

If you don't want to install these softwares, you will be able to use this app installing `ruby` (>= 2.3).
### Installing

* Clone this repo `git clone https://github.com/aline-aline/petadmin`;
  * In the repo folder, run: 
    * `docker-compose build`;
    * `docker-compose run --rm app bundle exec rake db:create`;
    * `docker-compose run --rm app bundle exec rake db:migrate`.

## Built With

* Ruby On Rails: http://rubyonrails.org/
* Fae: https://www.faecms.com/
* Redis: https://redis.io/
* Docker: https://www.docker.com/
* Docker-Compose: https://docs.docker.com/compose/

## Contributing

Want to contribute? Fork and send a pull request. Have any questions? Open an issue or contact me.
## License

This project is licensed under the MIT License.
