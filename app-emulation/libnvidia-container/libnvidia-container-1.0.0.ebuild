EAPI=6

inherit rpm

DESCRIPTION="libnvidia"
HOMEPAGE="https://github.com/NVIDIA/libnvidia-container"
SRC_URI="https://nvidia.github.io/libnvidia-container/centos7/x86_64/libnvidia-container1-1.0.0-0.1.rc.2.x86_64.rpm 
-> ${P}.rpm"

LICENSE="NVIDIA-CORPORATION"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	sys-libs/libseccomp
	sys-libs/libcap
"
RDEPEND="${DEPEND}"

S=${WORKDIR}

src_configure() {
	return
}

src_compile() {
	return
}

src_install() {
	dolib.so usr/lib64/*
}
