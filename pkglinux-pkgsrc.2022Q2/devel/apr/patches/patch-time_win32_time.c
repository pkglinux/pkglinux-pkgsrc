
SECURITY: CVE-2021-35940 (cve.mitre.org)

Restore fix for CVE-2017-12613 which was missing in 1.7.x branch, though
was addressed in 1.6.x in 1.6.3 and later via r1807976.

The fix was merged back to 1.7.x in r1891198.

Since this was a regression in 1.7.0, a new CVE name has been assigned
to track this, CVE-2021-35940.

Thanks to Iveta Cesalova <icesalov redhat.com> for reporting this issue.

https://svn.apache.org/viewvc?view=revision&revision=1891198

Index: time/win32/time.c
===================================================================
--- time/win32/time.c	(revision 1891197)
+++ time/win32/time.c	(revision 1891198)
@@ -54,6 +54,9 @@
     static const int dayoffset[12] =
     {0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334};
 
+    if (tm->wMonth < 1 || tm->wMonth > 12)
+        return APR_EBADDATE;
+
     /* Note; the caller is responsible for filling in detailed tm_usec,
      * tm_gmtoff and tm_isdst data when applicable.
      */
@@ -228,6 +231,9 @@
     static const int dayoffset[12] =
     {306, 337, 0, 31, 61, 92, 122, 153, 184, 214, 245, 275};
 
+    if (xt->tm_mon < 0 || xt->tm_mon >= 12)
+        return APR_EBADDATE;
+
     /* shift new year to 1st March in order to make leap year calc easy */
 
     if (xt->tm_mon < 2)
