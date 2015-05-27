### Dockerfile for rundeck build environment

Refer https://github.com/gschueler/vagrant-rundeck-build

```
# if the docker image name is bwits/rundeck-build
docker run -ti bwits/rundeck-build bash
cd rundeck
git pull
bash jenkins-build.sh
```
