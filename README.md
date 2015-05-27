### Dockerfile for rundeck build environment

Refer https://github.com/gschueler/vagrant-rundeck-build

```
# if the docker image name is sydops/rundeck
docker run -ti sydops/rundeck bash
cd rundeck
git pull
bash jenkins-build.sh
```
