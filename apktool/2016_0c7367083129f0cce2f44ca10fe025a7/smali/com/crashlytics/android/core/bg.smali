.class final Lcom/crashlytics/android/core/bg;
.super Lcom/crashlytics/android/core/bp;
.source "NativeCrashWriter.java"


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/bl;Lcom/crashlytics/android/core/bq;)V
    .locals 3

    .prologue
    .line 284
    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/crashlytics/android/core/bp;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/bp;-><init>(I[Lcom/crashlytics/android/core/bp;)V

    .line 285
    return-void
.end method
