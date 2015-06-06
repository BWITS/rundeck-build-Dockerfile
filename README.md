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
    bash jenkins-build.sh 

You can add parameters to `jenkins-build.sh` script:

    $1 - $REL,  default value is build, vaule can be: release, upload 
    $2 - $RTAG, default value is GA.
