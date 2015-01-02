# $OpenBSD: Makefile,v 1.11 2013/06/22 07:45:14 jasper Exp $

COMMENT =		ssh authentication and authorization gateway

GH_ACCOUNT=		GooseYArd
GH_PROJECT=		authprox
GH_TAGNAME=		1.0

MODPY_EGG_VERSION =     1.0
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES =		net
SHARED_ONLY =		Yes
SHARED_LIBS +=

HOMEPAGE =		https://github.com/GooseYArd/authprox

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=		

MODULES=        lang/python
MODPY_SETUPTOOLS=       Yes

#pre-fake:
#	${INSTALL_DATA_DIR} ${WKRINST}${SYSCONFDIR}/authproxd

ETCDIR=	${PREFIX}/etc/authproxd

pre-install:
	${INSTALL_DATA_DIR} ${WRKINST}${ETCDIR}
	${INSTALL_DATA} ${WRKSRC}/authprox/etc/ssh_config ${WRKINST}${ETCDIR}
	${INSTALL_DATA} ${WRKSRC}/authprox/etc/sshd_config ${WRKINST}${ETCDIR}

.include <bsd.port.mk>
