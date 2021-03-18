FROM ocdr/dkube-datascience-tf-cpu-multiuser:v2.0.0

ADD notebook_startup.sh /
CMD ["/notebook_startup.sh"]