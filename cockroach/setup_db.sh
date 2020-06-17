echo Wait for server to be up

HOSTPARAMS="--host cockroach --insecure"
SQL="/cockroach/cockroach.sh sql --host cockroach --insecure"

$SQL -e "CREATE USER IF NOT EXISTS tradmin;"
$SQL -e "CREATE DATABASE catching;"
$SQL -e "GRANT ALL ON DATABASE catching TO tradmin;"
$SQL -d catching -e "CREATE TABLE servers(id SERIAL PRIMARY KEY, url TEXT UNIQUE, servers JSONB, updatedAt INTEGER);"
echo Database successfully configured