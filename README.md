# Dropboxd
## Mount your Dropbox inside your docker as a service

*Requirements:*

- Docker and docker componse 

*Steps:*

After download the project, execute the commands below.

```bash
docker-compose build
```
and

```bash
docker-compose up -d 
```

Now, you can copy the link that will appear in the log with the command below and authorize via browser, this way your account in Dropbox will be linked to micro service.

```bash
docker logs -f dropbox
```
Example of output

```bash
This computer isn't linked to any Dropbox account...
Please visit https://www.dropbox.com/cli_link_nonce?nonce=1ccaf197aabed0d6bae90e336d6ceb4b to link this device.
```


> Importantly, you may want to change where the files will be stored, simply change the line of the file: docker-compose.yml as shown below to the location of your preferenc

```yaml
- ./volumes/backup/:/root/Dropbox
```


> In the example above, your files are in your current directory: volumes/backup/ and in the container in /root/Dropbox.

By Renato dos Reis Nascimento





