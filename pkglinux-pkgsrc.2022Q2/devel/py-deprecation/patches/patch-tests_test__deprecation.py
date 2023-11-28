$NetBSD: patch-tests_test__deprecation.py,v 1.1 2022/01/27 11:35:02 wiz Exp $

Convert from unittest2 to unittest

--- tests/test_deprecation.py.orig	2020-04-20 14:14:19.000000000 +0000
+++ tests/test_deprecation.py
@@ -10,16 +10,14 @@
 # License for the specific language governing permissions and limitations
 # under the License.
 
-# As we unfortunately support Python 2.7, it lacks TestCase.subTest which
-# is in 3.4+ or in unittest2
-import unittest2
+import unittest
 import warnings
 
 import deprecation
 from datetime import date
 
 
-class Test_deprecated(unittest2.TestCase):
+class Test_deprecated(unittest.TestCase):
 
     def test_args_set_on_base_class(self):
         args = (1, 2, 3, 4)
@@ -230,7 +228,7 @@ class Test_deprecated(unittest2.TestCase
             self.assertEqual(sot.method(), ret_val)
 
 
-class Test_fail_if_not_removed(unittest2.TestCase):
+class Test_fail_if_not_removed(unittest.TestCase):
 
     @deprecation.deprecated(deprecated_in="1.0", current_version="2.0")
     def _deprecated_method(self):
@@ -259,7 +257,7 @@ class Test_fail_if_not_removed(unittest2
         except AssertionError:
             self.fail("A DeprecatedWarning shouldn't cause a failure")
 
-    @unittest2.expectedFailure
+    @unittest.expectedFailure
     @deprecation.fail_if_not_removed
     def test_literal_UnsupportedWarning(self):
         self._unsupported_method()