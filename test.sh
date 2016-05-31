# Wercker linked service will expose environment variable like $REDIS_PORT_6379_TCP_ADDR
# See also http://devcenter.wercker.com/docs/services/linking-services.html
if [[ -n "$REDIS_PORT_6379_TCP_ADDR" ]]; then
  export REDIS_HOST=$REDIS_PORT_6379_TCP_ADDR
  export REDIS_PORT=$REDIS_PORT_6379_TCP_PORT
else
  export REDIS_HOST=localhost
  export REDIS_PORT=6379
fi
export REDIS_AUTH=""

node_modules/.bin/jasmine
