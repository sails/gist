# kube
由于不能从google container上直接pull镜像，所以这里通过dockerfile直接获取到国内能访问的服务器上，然后再从它们上面拉取

##	kube 1.4需要的镜像:
```
gcr.io/google_containers/kube-proxy-amd64                v1.4.0
gcr.io/google_containers/kube-discovery-amd64            1.0
gcr.io/google_containers/kubedns-amd64                   1.7
gcr.io/google_containers/kube-scheduler-amd64            v1.4.0
gcr.io/google_containers/kube-controller-manager-amd64   v1.4.0
gcr.io/google_containers/kube-apiserver-amd64            v1.4.0
gcr.io/google_containers/etcd-amd64                      2.2.5
gcr.io/google_containers/kube-dnsmasq-amd64              1.3
gcr.io/google_containers/exechealthz-amd64               1.1
gcr.io/google_containers/pause-amd64                     3.0
```
