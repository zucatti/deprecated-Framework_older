mysqldump --skip-comments --no-data --skip-extended-insert -h 127.0.0.1 -P 3311 -u root -proot bpclight>bpclight_dev.sql
mysqldump --skip-comments --no-data --skip-extended-insert -h 172.23.210.13 -P 3306 -u root -proot --skip-secure-auth bpclight>bpclight_prod.sql
diff bpclight_dev.sql bpclight_prod.sql > diff.txt