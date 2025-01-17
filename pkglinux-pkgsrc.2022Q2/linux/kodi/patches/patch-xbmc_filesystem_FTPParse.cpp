$NetBSD$

--- xbmc/filesystem/FTPParse.cpp.orig	2017-05-24 20:49:32.000000000 +0000
+++ xbmc/filesystem/FTPParse.cpp
@@ -34,7 +34,7 @@ CFTPParse::CFTPParse()
   m_time = 0;
 }
 
-string CFTPParse::getName()
+std::string CFTPParse::getName()
 {
   return m_name;
 }
@@ -59,16 +59,16 @@ time_t CFTPParse::getTime()
   return m_time;
 }
 
-void CFTPParse::setTime(string str)
+void CFTPParse::setTime(std::string str)
 {
   /* Variables used to capture patterns via the regexes */
-  string month;
-  string day;
-  string year;
-  string hour;
-  string minute;
-  string second;
-  string am_or_pm;
+  std::string month;
+  std::string day;
+  std::string year;
+  std::string hour;
+  std::string minute;
+  std::string second;
+  std::string am_or_pm;
 
   /* time struct used to set the time_t variable */
   struct tm time_struct = {};
@@ -338,21 +338,21 @@ int CFTPParse::getDayOfWeek(int month, i
   return day_of_week;
 }
 
-int CFTPParse::FTPParse(string str)
+int CFTPParse::FTPParse(std::string str)
 {
   /* Various variable to capture patterns via the regexes */
-  string permissions;
-  string link_count;
-  string owner;
-  string group;
-  string size;
-  string date;
-  string name;
-  string type;
-  string stuff;
-  string facts;
-  string version;
-  string file_id;
+  std::string permissions;
+  std::string link_count;
+  std::string owner;
+  std::string group;
+  std::string size;
+  std::string date;
+  std::string name;
+  std::string type;
+  std::string stuff;
+  std::string facts;
+  std::string version;
+  std::string file_id;
 
   /* Regex for standard Unix listing formats */
   pcrecpp::RE unix_re("^([-bcdlps])" // type
