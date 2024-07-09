#!/bin/bash -i

# Remove a potentially pre-existing server.pid for Rails.
rm -f /tmp/rails_server.pid

bundle install
yarn global add sass

wait-for-it db:5432 -- "$@"