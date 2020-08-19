# oada-cron
A microservice to store and run cron scripts. Currently, this repo supports daily scripts in the `daily` directory.

Two scripts are included in this base service:
1) A microservice to backup the arangodb contents every night, saving them to a docker volume.  The service rolls
backups, keeping 7 recent daily backups, and then 1 per month for the current year and 1 per year for past years.

2) A microservice that renews SSL certificates via the admin container and then restarts the proxy service.

## Installation
```bash
cd /path/to/your/oada-srvc-docker
cd services-available
git clone https://github.com/OADA/oada-cron.git
cd ../services-enabled
ln -s ../services-available/oada-cron .
```

