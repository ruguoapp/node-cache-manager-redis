module.exports = {
	"redis": {
		"host": process.env.REDIS_HOST || "localhost",
		"port": process.env.REDIS_PORT || 6379,
		"auth_pass": "",
		"db": 0,
		"ttl": 60
	}
};
