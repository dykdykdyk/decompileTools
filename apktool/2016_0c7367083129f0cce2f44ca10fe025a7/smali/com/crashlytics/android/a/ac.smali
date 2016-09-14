.class public final Lcom/crashlytics/android/a/ac;
.super Ljava/lang/Object;
.source "SessionEvent.java"


# instance fields
.field final a:Lcom/crashlytics/android/a/ad;

.field final b:J

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/a/ad;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/crashlytics/android/a/ac;->a:Lcom/crashlytics/android/a/ad;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/a/ac;->b:J

    .line 98
    iput-object v2, p0, Lcom/crashlytics/android/a/ac;->c:Ljava/util/Map;

    .line 99
    iput-object v2, p0, Lcom/crashlytics/android/a/ac;->d:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/crashlytics/android/a/ac;->e:Ljava/util/Map;

    .line 101
    iput-object v2, p0, Lcom/crashlytics/android/a/ac;->f:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/crashlytics/android/a/ac;->g:Ljava/util/Map;

    .line 103
    return-void
.end method
