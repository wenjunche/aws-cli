# to install a new major version
go get github.com/google/go-github/v5

# to update existing module
go get -u github.com/google/go-github/v5

# clean up go.mod and go.sum
go mod tidy

# check version of a module
# 1. search https://pkg.go.dev/
# 2. check version listed as Latest
# 3. follow the link to Repositofy to check latest major version