### Dockerfile for rundeck build environment

Refer https://github.com/gschueler/vagrant-rundeck-build

You can build it by yourself with Dockerfile

    git clone https://github.com/BWITS/rundeck-build-Dockerfile.git
    cd rundeck-build-Dockerfile
    docker build -t bwits/rundeck .
    
It takes long time to get it built, be patient.

You can also pull the image directly and run the build

    docker pull bwits/rundeck-build

Run the build

    docker run -ti bwits/rundeck-build bash
    git pull
    ./gradlew build

Artifacts:

    rundeckapp/target/rundeck-X.Y.war
    rundeck-launcher/launcher/build/libs/rundeck-launcher-X.Y.jar

Copy file from container to host:

    docker cp <containerId>:/home/rundeck/rundeckapp/target/rundeck-X.Y.war /host/path/target
    docker cp <containerId>:/home/rundeck/rundeck-launcher/launcher/build/libs/rundeck-launcher-X.Y.jar /host/path/target
