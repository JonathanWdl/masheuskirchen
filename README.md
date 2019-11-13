# masheuskirchen

## Requirements to run this project
* docker
* docker-compose
* composer

## Installation

### Use Docker on mac
To build containers on mac execute the mac_run script:
`./container/bin/mac_run.sh`

### Use Docker on linux
To build containers on linux execute the run script:
`./container/bin/run.sh`

### Install Typo3
After Docker containers are build, typo3 needs to be installed:
`composer install`

### Import database
The database needs to be imported:
`./container/bin/import_db.sh`


## TYPO3
### Backend
username: typo3
password: typo3typo3