.class final Lcom/crashlytics/android/a/w;
.super Ljava/util/HashSet;
.source "SamplingEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lcom/crashlytics/android/a/ad;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 20
    sget-object v0, Lcom/crashlytics/android/a/ad;->a:Lcom/crashlytics/android/a/ad;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/crashlytics/android/a/ad;->b:Lcom/crashlytics/android/a/ad;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/crashlytics/android/a/ad;->c:Lcom/crashlytics/android/a/ad;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/crashlytics/android/a/ad;->d:Lcom/crashlytics/android/a/ad;

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/a/w;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
