#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD: bitcoind.sh,v 1.3 2021/11/22 21:32:05 khorben Exp $
#
# Startup script for bitcoind
#
# PROVIDE: bitcoind
# REQUIRE: DAEMON
# KEYWORD: shutdown

if [ -f @SYSCONFBASE@/rc.subr ]; then
	. @SYSCONFBASE@/rc.subr
fi

name="bitcoind"
rcvar=$name
command="@PREFIX@/bin/bitcoind"
pidfile="@VARBASE@/run/bitcoind.pid"
required_directory="@VARBASE@/bitcoin"
command_args="-daemon -conf=@PKG_SYSCONFDIR@/bitcoin.conf -pid=${pidfile} -datadir=${required_directory}"

if [ -f @SYSCONFBASE@/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	echo -n " ${name}"
	${command} ${bitcoin_flags} ${command_args}
fi
