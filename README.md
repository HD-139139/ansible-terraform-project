<h1>ansible-terraform-project</h1>  
 - Ansible의 playbook으로 wordpress배포 및 terraform을 이용한 aws 인스턴스 생성  

<h1>사용을 위한 설치 방법</h1>  
###ansible 설치  
```
sudo apt update
sudo apt install -y software-properties-common
sudo apt-add-repository -y -u ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
sudo apt install -y python3-argcomplete    ###자동완성
sudo activate-global-python-argcomplete3 
sudo apt install -y ansible-lint           ###문법체크
```

###terraform 설치  
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install terraform
terraform -install-autocomplete    ###자동완성
```


<h1>디렉토리 구조</h1>  
```
.
├── group_vars
│   └── all.yaml
├── inventory.ini
├── main.tf
├── my_sshkey
├── my_sshkey.pub
├── output.tf
├── provider.tf
├── roles
│   ├── database
│   │   ├── handlers
│   │   │   └── main.yaml
│   │   ├── tasks
│   │   │   ├── db_Debian.yaml
│   │   │   ├── db_RedHat.yaml
│   │   │   └── main.yaml
│   │   └── vars
│   │       └── main.yaml
│   ├── remove
│   │   └── main.yaml
│   └── wordpress
│       ├── handlers
│       │   └── main.yaml
│       ├── tasks
│       │   ├── main.yaml
│       │   ├── wp_Debian.yaml
│       │   └── wp_RedHat.yaml
│       ├── templates
│       │   ├── httpd.conf.j2
│       │   ├── ports.conf.j2
│       │   └── wp-config.php.j2
│       └── vars
│           └── main.yaml
├── security_group.tf
├── site.yaml
├── terraform.tfstate
├── terraform.tfstate.backup
└── variable.tf
```
