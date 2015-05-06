### Rundeck

- Rundeck with aws ec2 node plugin on CentOS in Docker container.

- Installation steps have been simplified by puppet automation.

```
docker run -d --name rundeck -h rundeck.example.com -p 4440:4440 bwit/rundeck
```
