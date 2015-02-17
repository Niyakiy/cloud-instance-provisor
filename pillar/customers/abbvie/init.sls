# @customer: AbbVie 
# @porpose: EC2 infrastructure provisioning
# @autor: eugene@zoomdata.com 

{% set preffix = 'abbvie' %}
{% set cloud_provider = 'ec2' %}

{{preffix}}-customer-info:
  name: AbbVie
  
{{preffix}}-infrastructure-info:
  # cloud provider config (previously described)
  provider-name: my-ec2-config

  # classes of instances with params 
  instance-classes:
    - class1:
      name: 'class1 instance'
      image: ami-XXXXXX
      size: t1.micro
      securitygroup: sg-XXXXX
      volumes:
        - { size: 1, device: /dev/sdf }
        - { size: 10, device: /dev/sdh }          
    - class2:
      name: 'class1 instance'
      image: ami-XXXXXX
      size: t1.micro
      securitygroup: sg-XXXXX
      volumes:
        - { size: 1, device: /dev/sdf }
  