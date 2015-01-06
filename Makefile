# $OpenBSD: Makefile,v 1.11 2013/06/22 07:45:14 jasper Exp $

COMMENT =		ssh authentication and authorization gateway

GH_ACCOUNT=		GooseYArd
GH_PROJECT=		authprox
GH_TAGNAME=		1.0

MODPY_EGG_VERSION =     1.0
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}
DISTNAME=		authprox-1.0
CATEGORIES =		net
SHARED_ONLY =		Yes
SHARED_LIBS +=

HOMEPAGE =		https://github.com/GooseYArd/authprox

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=		

MODULES=        lang/python
MODPY_SETUPTOOLS=       Yes

ETCDIR=	${PREFIX}/etc/authproxd

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/etc/authproxd
	${INSTALL_PROGRAM_DIR} ${PREFIX}/sbin
	ln -sf /usr/sbin/sshd ${PREFIX}/sbin/authproxd

.include <bsd.port.mk>
