# mi-core-mailapi

This repository is based on [Joyent mibe](https://github.com/joyent/mibe). Please note this repository should be build with the [mi-core-base](https://github.com/skylime/mi-core-base) mibe image.

## description

Redis based json API for the mail infrastructure mibe images.

This image is part of the following images:

- [mi-core-mailapi](https://github.com/skylime/mi-core-mailapi)
- [mi-core-mx](https://github.com/skylime/mi-core-mx)
- [mi-core-submission](https://github.com/skylime/mi-core-submission)
- [mi-core-mbox](https://github.com/skylime/mi-core-mbox)
- [mi-core-webmail](://github.com/skylime/mi-core-webmail)

## mdata variables

- `api_redis_key` [*]: base64 encoded spipe key
- `import_urls`: list of urls that provide a json dump of mail accounts and aliases. The format is described below.
- `nginx_ssl` [*]: ssl cert, key and CA for imaps and pop3s in pem format
- `nginx_auth` [*]: htpasswd authentication data (username:password_hash)

[*] is required to work properly.

## Services

- `443/tcp`: https api
- `63790/tcp`: spipe encrypted redis master

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
