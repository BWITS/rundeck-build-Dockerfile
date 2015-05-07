### Rundeck

- Rundeck with aws ec2 node plugin on CentOS 6 in Docker container.
- Installation steps have been simplified by puppet automation.
- Test passed with boot2docker on my Macbook

```
docker pull bwit/rundeck
docker run -d --name rundeck -h rundeck.example.com -p 4440:4440 bwit/rundeck
docker ps            # confirm rundeck is running
docker port rundeck  # get the port, for example: 4440/tcp -> 0.0.0.0:4440
boot2docker ip       # get the IP address, for example: 192.168.59.103
```

Then you should be fine to access rundeck via:  http://192.168.59.103:4440  
default login username and password is  admin/admin

Cheers.
