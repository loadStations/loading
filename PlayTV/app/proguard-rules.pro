# เก็บข้อมูลบรรทัดโค้ดเพื่อใช้ตรวจสอบ StackTrace เมื่อเกิดข้อผิดพลาด
-keepattributes SourceFile,LineNumberTable
-keepattributes *Annotation*,Signature,InnerClasses,EnclosingMethod

# ป้องกันการเปลี่ยนชื่อคลาสหลักและโมเดลข้อมูลของ TadioTV
-keep class com.tadiotv.app.App { *; }
-keep class com.tadiotv.app.Channel { *; }
-keep class com.tadiotv.app.EpgProgram { *; }
-keep class com.tadiotv.app.EpgMap { *; }
-keep class com.tadiotv.app.RefreshWorker { *; }

# รองรับ WorkManager และ Constructor ของ ListenableWorker
-keep class * extends androidx.work.ListenableWorker {
    public <init>(android.content.Context, androidx.work.WorkerParameters);
}

# รองรับ ExoPlayer / Media3
-dontwarn com.google.android.exoplayer2.**
-keep class com.google.android.exoplayer2.** { *; }
-dontwarn androidx.media3.**
-keep class androidx.media3.** { *; }