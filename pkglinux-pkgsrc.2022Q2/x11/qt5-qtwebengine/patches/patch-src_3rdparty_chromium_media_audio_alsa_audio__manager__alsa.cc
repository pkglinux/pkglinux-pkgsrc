$NetBSD: patch-src_3rdparty_chromium_media_audio_alsa_audio__manager__alsa.cc,v 1.1 2021/08/03 21:04:35 markd Exp $

--- src/3rdparty/chromium/media/audio/alsa/audio_manager_alsa.cc.orig	2020-07-08 21:40:45.000000000 +0000
+++ src/3rdparty/chromium/media/audio/alsa/audio_manager_alsa.cc
@@ -92,7 +92,9 @@ void AudioManagerAlsa::GetAlsaAudioDevic
   int card = -1;
 
   // Loop through the sound cards to get ALSA device hints.
+#if defined(OS_LINUX)
   while (!wrapper_->CardNext(&card) && card >= 0) {
+#endif
     void** hints = NULL;
     int error = wrapper_->DeviceNameHint(card, kPcmInterfaceName, &hints);
     if (!error) {
@@ -104,7 +106,9 @@ void AudioManagerAlsa::GetAlsaAudioDevic
       DLOG(WARNING) << "GetAlsaAudioDevices: unable to get device hints: "
                     << wrapper_->StrError(error);
     }
+#if defined(OS_LINUX)
   }
+#endif
 }
 
 void AudioManagerAlsa::GetAlsaDevicesInfo(AudioManagerAlsa::StreamType type,
@@ -187,7 +191,11 @@ bool AudioManagerAlsa::IsAlsaDeviceAvail
   // goes through software conversion if needed (e.g. incompatible
   // sample rate).
   // TODO(joi): Should we prefer "hw" instead?
+#if defined(OS_LINUX)
   static const char kDeviceTypeDesired[] = "plughw";
+#else
+  static const char kDeviceTypeDesired[] = "plug";
+#endif
   return strncmp(kDeviceTypeDesired, device_name,
                  base::size(kDeviceTypeDesired) - 1) == 0;
 }
@@ -209,7 +217,9 @@ bool AudioManagerAlsa::HasAnyAlsaAudioDe
   // Loop through the sound cards.
   // Don't use snd_device_name_hint(-1,..) since there is a access violation
   // inside this ALSA API with libasound.so.2.0.0.
+#if defined(OS_LINUX)
   while (!wrapper_->CardNext(&card) && (card >= 0) && !has_device) {
+#endif
     int error = wrapper_->DeviceNameHint(card, kPcmInterfaceName, &hints);
     if (!error) {
       for (void** hint_iter = hints; *hint_iter != NULL; hint_iter++) {
@@ -233,7 +243,9 @@ bool AudioManagerAlsa::HasAnyAlsaAudioDe
       DLOG(WARNING) << "HasAnyAudioDevice: unable to get device hints: "
                     << wrapper_->StrError(error);
     }
+#if defined(OS_LINUX)
   }
+#endif
 
   return has_device;
 }
