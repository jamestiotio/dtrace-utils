/*
 * Oracle Linux DTrace.
 * Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
 * Licensed under the Universal Permissive License v 1.0 as shown at
 * http://oss.oracle.com/licenses/upl.
 */

/*
 * ASSERTION: The printf action supports '%f' for floating point values.
 *
 * SECTION: Actions/printf()
 */

#pragma D option quiet

float f;

BEGIN
{
	printf("%f", f);
	exit(0);
}
