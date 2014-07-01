# mi-core-mailapi

Please refer to https://github.com/joyent/mibe for use of this repo.

## mdata variables

- <code>api_redis_key</code>: base64 encoded spipe key
- <code>import_urls</code>: list of urls that provide a json dump of mail accounts and aliases. The format is described below.
- <code>nginx_ssl</code>: ssl cert, key and CA for imaps and pop3s in pem format
- <code>nginx_auth</code>: htpasswd authentication data (username:password_hash)

## Services

- <code>443/tcp</code>: https api
- <code>63790/tcp</code>: spipe encrypted redis master


## Legacy JSON import format

Example:

<pre>
{
	"example.com": {
		"account": [
			{
				"name": "alice",
				"password": "$1$9hW1N3SC$J6vfo890zc50GC1jYHP211"
			},
			{
				"name": "bob",
				"password": "$1$0MhHZVnG$d6rHD1KFLNOJ9EFdMKrB91"
			}
		],
		"alias": [
			{
				"to": "alice@example.com,bob@example.com",
				"name": "office"
			}
		]
	}
}
</pre>

This creates two email accounts for alice@example.com and bob@example.com. It also creates an email alias office@example.com that forwards mail to both mailboxes.
