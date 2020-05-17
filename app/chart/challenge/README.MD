## Challenge Part 2: Kubernetes

This folder presents the kubernetes/helm definitions needed to deploy the resources described in `https://github.com/idwall/desafios-devops/tree/master/kubernetes`.

## Requirements

You need the following cli tools installed to run the project:

 * kubectl;
 * helm 3+;
 * make (the project was tested with GNU make but i think that it will work with BSD Make as well).

An working kubernetes cluster; personally I would recommend k3d/k3s (https://github.com/rancher/k3s).

### Changes/Enhancements

During the challenge, some enhancements were made.

#### Docker related Enhancements

- [x] Bump node to the stable version.
- [x] Ignore node_modules on gitignore.
- [x] Mock all needed features using docker-compose support.
- [x] Bind on all ports by default to make easy to run within docker.
- [x] Drop ALL capabilities during execution through docker-compose.
- [x] Run the app container using nobody user.
- [x] Add vulnerability scanner.
- [x] Implement `healthcheck` endpoint and add healthcheck to docker-compose file.

#### K8s and Helm enhancements

- [x] Used docker-compose file premise as base.
