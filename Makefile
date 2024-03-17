## APP
api_cmd = cmd/api/main.go

## SCRIPTS
database = scripts/database/create.sh

api_server: $(api_cmd)
	go run $(api_cmd)

create_test_db: $(database)
	$(database) | sh

# create_dev_db: $(database)
# 	$(database) | sh
