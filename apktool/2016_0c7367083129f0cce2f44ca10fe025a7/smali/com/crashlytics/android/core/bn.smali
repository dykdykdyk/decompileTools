.class final Lcom/crashlytics/android/core/bn;
.super Lcom/crashlytics/android/core/bp;
.source "NativeCrashWriter.java"


# instance fields
.field a:Lcom/crashlytics/android/core/b;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/b;)V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x6

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/core/bp;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/bp;-><init>(I[Lcom/crashlytics/android/core/bp;)V

    .line 260
    iput-object p1, p0, Lcom/crashlytics/android/core/bn;->a:Lcom/crashlytics/android/core/b;

    .line 261
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/bn;->a:Lcom/crashlytics/android/core/b;

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/f;->b(ILcom/crashlytics/android/core/b;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/crashlytics/android/core/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/core/bn;->a:Lcom/crashlytics/android/core/b;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/core/f;->a(ILcom/crashlytics/android/core/b;)V

    .line 271
    return-void
.end method
