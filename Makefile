gh_pkg_url = docker.pkg.github.com/minuraiddamalgoda/rmit-coreteaching-docker/
container_name = rmitctsaas
tag_name = latest

build:
	docker build -t $(container_name) .

gh_push:
	make build
	docker login docker.pkg.github.com -u "${GH_USER}" -p "${GH_RMITCTSAAS_PACKAGE_TOKEN}"
	docker tag $(container_name) $(gh_pkg_url)$(container_name):$(tag_name)
	docker push $(gh_pkg_url)$(container_name):$(tag_name)
