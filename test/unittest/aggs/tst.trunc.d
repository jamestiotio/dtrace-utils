/*
 * Oracle Linux DTrace.
 * Copyright (c) 2006, 2020, Oracle and/or its affiliates. All rights reserved.
 * Licensed under the Universal Permissive License v 1.0 as shown at
 * http://oss.oracle.com/licenses/upl.
 */
/* @@xfail: dtv2 - requires trunc() */

#pragma D option quiet

int i;

tick-10ms
/i < 100/
{
	@[i] = sum(i);
	i++;
}

tick-10ms
/i == 100/
{
	exit(0);
}

END
{
	trunc(@, 10);
}
