FROM centos:centos8
RUN mkdir /project && curl https://bintray.com/sbt/rpm/rpm | tee /etc/yum.repos.d/bintray-sbt-rpm.repo && yum install -y java-11-openjdk-headless sbt rpm rpm-build rpmlint
VOLUME ["/project"]
WORKDIR /project
