# -*- mode: Python -*-

k8s_yaml('app.yml')

docker_build('tilt.dev/demo-base', 'package', dockerfile='base.dockerfile')

docker_build('tilt.dev/demo-app', '.', dockerfile='app.dockerfile')

k8s_resource('demo-app', port_forwards=3000)
