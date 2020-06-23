echo Wait for server to be up

HOSTPARAMS="--host cockroach --insecure"
SQL="/cockroach/cockroach.sh sql --host cockroach --insecure"

$SQL -e "CREATE USER IF NOT EXISTS tradmin;"
$SQL -e "CREATE DATABASE catching;"
$SQL -e "GRANT ALL ON DATABASE catching TO tradmin;"
$SQL -d catching -e "CREATE TABLE domains(id SERIAL PRIMARY KEY, servers JSONB, endpoints JSONB, url TEXT UNIQUE, sslGrade TEXT, previousSslGrade TEXT, logo TEXT, title TEXT, updatedAt INTEGER, serversChanged BOOLEAN, isDown BOOLEAN);"
echo Database successfully configured