#!/bin/bash

IMAGE_PREFIX="registry.cn-shenzhen.aliyuncs.com/k8s_aliyun"
TAG_PREFIX="k8s.gcr.io"

IMAGE1="coredns:1.2.2"
docker pull "${IMAGE_PREFIX}/${IMAGE1}"
docker tag "${IMAGE_PREFIX}/${IMAGE1}" "${TAG_PREFIX}/${IMAGE1}"

IMAGE2="etcd:3.2.24"
docker pull "${IMAGE_PREFIX}/${IMAGE2}"
docker tag "${IMAGE_PREFIX}/${IMAGE2}" "${TAG_PREFIX}/${IMAGE2}"

IMAGE3="kube-apiserver:v1.12.1"
docker pull "${IMAGE_PREFIX}/${IMAGE3}"
docker tag "${IMAGE_PREFIX}/${IMAGE3}" "${TAG_PREFIX}/${IMAGE3}"

IMAGE4="kube-controller-manager:v1.12.1"
docker pull "${IMAGE_PREFIX}/${IMAGE4}"
docker tag "${IMAGE_PREFIX}/${IMAGE4}" "${TAG_PREFIX}/${IMAGE4}"

IMAGE5="kube-proxy:v1.12.1"
docker pull "${IMAGE_PREFIX}/${IMAGE5}"
docker tag "${IMAGE_PREFIX}/${IMAGE5}" "${TAG_PREFIX}/${IMAGE5}"

IMAGE6="kube-scheduler:v1.12.1"
docker pull "${IMAGE_PREFIX}/${IMAGE6}"
docker tag "${IMAGE_PREFIX}/${IMAGE6}" "${TAG_PREFIX}/${IMAGE6}"

IMAGE7="pause:3.1"
docker pull "${IMAGE_PREFIX}/${IMAGE7}"
docker tag "${IMAGE_PREFIX}/${IMAGE7}" "${TAG_PREFIX}/${IMAGE7}"