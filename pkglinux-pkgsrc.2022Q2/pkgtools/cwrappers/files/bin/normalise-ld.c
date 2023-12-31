/* $NetBSD: normalise-ld.c,v 1.5 2022/04/04 11:22:51 riastradh Exp $ */

/*-
 * Copyright (c) 2009, 2017 Joerg Sonnenberger <joerg@NetBSD.org>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
 * COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#include <nbcompat.h>
#include <nbcompat/err.h>
#include <stdlib.h>
#include <string.h>
#include "common.h"

void
operation_mode_ld(struct arglist *args)
{
	struct argument *arg;

	current_operation_mode = mode_link_executable;
	TAILQ_FOREACH(arg, args, link) {
		if (arg->val[0] != '-')
			continue;
		if (strcmp(arg->val, "-N") == 0 ||
		    strcmp(arg->val, "--omagic") == 0) {
			current_operation_mode = mode_link_omagic;
			continue;
		}
		if (strcmp(arg->val, "-r") == 0 ||
		    strcmp(arg->val, "--relocatable") == 0) {
			current_operation_mode = mode_link_relocatable;
			continue;
		}
		if (strcmp(arg->val, "-shared") == 0 ||
		    strcmp(arg->val, "-Bshareable") == 0) {
			current_operation_mode = mode_link_shared;
			continue;
		}
	}
}

/*
 * append_rpath_link(args, path, &lastarg)
 *
 *	If sysroot is enabled, append `-rpath-link ${sysroot}${path}'
 *	to the argument list after lastarg, and update lastarg to be
 *	the last argument appended.
 */
static void
append_rpath_link(struct arglist *args, const char *path,
    struct argument **lastargp)
{
	struct argument *arg_opt, *arg_val;

	if (sysroot == NULL)
		return;

	arg_opt = argument_new(xstrdup("-rpath-link"));
	arg_val = argument_new(concat(sysroot, path));
	TAILQ_INSERT_AFTER(args, *lastargp, arg_opt, link);
	TAILQ_INSERT_AFTER(args, arg_opt, arg_val, link);
	*lastargp = arg_val;
}

void
normalise_ld(struct arglist *args)
{
	struct argument *arg, *arg2, *arg3;

	TAILQ_FOREACH_SAFE(arg, args, link, arg2) {
		if (arg->val[0] != '-')
			continue;
		if (strncmp(arg->val, "-Wl,", 4) == 0)
			argument_update(arg, xstrdup(arg->val + 4));
		if (strcmp(arg->val, "-L") == 0) {
			if (arg2 == NULL || arg2->val[0] == '-')
				errx(255, "Missing argument for %s", arg->val);
			argument_update(arg, concat(arg->val, arg2->val));
			continue;
		}
		if (strcmp(arg->val, "-R") == 0 ||
		    strcmp(arg->val, "--rpath") == 0) {
			if (arg2 == NULL || arg2->val[0] == '-')
				errx(255, "Missing argument for %s", arg->val);
			argument_update(arg, xstrdup("-rpath"));
			append_rpath_link(args, arg2->val, &arg2);
			continue;
		}
		if (sysroot && strcmp(arg->val, "-rpath") == 0) {
			if (arg2 == NULL || arg2->val[0] == '-')
				errx(255, "Missing argument for %s", arg->val);
			append_rpath_link(args, arg2->val, &arg2);
			continue;
		}
		if (strncmp(arg->val, "-R", 2) == 0) {
			argument_update(arg, xstrdup(arg->val + 2));
			arg3 = argument_copy("-rpath");
			TAILQ_INSERT_BEFORE(arg, arg3, link);
			append_rpath_link(args, arg->val, &arg2);
			continue;
		}
	}
}
