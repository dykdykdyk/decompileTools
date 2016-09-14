.class final Lcom/crashlytics/android/a/l;
.super Ljava/lang/Object;
.source "AnswersRetryFilesSender.java"

# interfaces
.implements Lio/fabric/sdk/android/services/c/o;


# instance fields
.field private final a:Lcom/crashlytics/android/a/y;

.field private final b:Lcom/crashlytics/android/a/u;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/y;Lcom/crashlytics/android/a/u;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/crashlytics/android/a/l;->a:Lcom/crashlytics/android/a/y;

    .line 42
    iput-object p2, p0, Lcom/crashlytics/android/a/l;->b:Lcom/crashlytics/android/a/u;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 48
    iget-object v2, p0, Lcom/crashlytics/android/a/l;->b:Lcom/crashlytics/android/a/u;

    .line 1033
    const-wide/32 v6, 0xf4240

    iget-object v3, v2, Lcom/crashlytics/android/a/u;->b:Lio/fabric/sdk/android/services/concurrency/a/e;

    .line 1040
    iget-object v8, v3, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/a;

    iget v3, v3, Lio/fabric/sdk/android/services/concurrency/a/e;->a:I

    invoke-interface {v8, v3}, Lio/fabric/sdk/android/services/concurrency/a/a;->a(I)J

    move-result-wide v8

    .line 1033
    mul-long/2addr v6, v8

    .line 1034
    iget-wide v2, v2, Lcom/crashlytics/android/a/u;->a:J

    sub-long v2, v4, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    move v2, v0

    .line 48
    :goto_0
    if-eqz v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/crashlytics/android/a/l;->a:Lcom/crashlytics/android/a/y;

    invoke-virtual {v2, p1}, Lcom/crashlytics/android/a/y;->a(Ljava/util/List;)Z

    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    iget-object v1, p0, Lcom/crashlytics/android/a/l;->b:Lcom/crashlytics/android/a/u;

    .line 1049
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/crashlytics/android/a/u;->a:J

    .line 1050
    iget-object v2, v1, Lcom/crashlytics/android/a/u;->b:Lio/fabric/sdk/android/services/concurrency/a/e;

    .line 1056
    new-instance v3, Lio/fabric/sdk/android/services/concurrency/a/e;

    iget-object v4, v2, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/a;

    iget-object v2, v2, Lio/fabric/sdk/android/services/concurrency/a/e;->c:Lio/fabric/sdk/android/services/concurrency/a/d;

    invoke-direct {v3, v4, v2}, Lio/fabric/sdk/android/services/concurrency/a/e;-><init>(Lio/fabric/sdk/android/services/concurrency/a/a;Lio/fabric/sdk/android/services/concurrency/a/d;)V

    .line 1050
    iput-object v3, v1, Lcom/crashlytics/android/a/u;->b:Lio/fabric/sdk/android/services/concurrency/a/e;

    .line 58
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1034
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/a/l;->b:Lcom/crashlytics/android/a/u;

    .line 2041
    iput-wide v4, v0, Lcom/crashlytics/android/a/u;->a:J

    .line 2042
    iget-object v2, v0, Lcom/crashlytics/android/a/u;->b:Lio/fabric/sdk/android/services/concurrency/a/e;

    .line 2052
    new-instance v3, Lio/fabric/sdk/android/services/concurrency/a/e;

    iget v4, v2, Lio/fabric/sdk/android/services/concurrency/a/e;->a:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v2, Lio/fabric/sdk/android/services/concurrency/a/e;->b:Lio/fabric/sdk/android/services/concurrency/a/a;

    iget-object v2, v2, Lio/fabric/sdk/android/services/concurrency/a/e;->c:Lio/fabric/sdk/android/services/concurrency/a/d;

    invoke-direct {v3, v4, v5, v2}, Lio/fabric/sdk/android/services/concurrency/a/e;-><init>(ILio/fabric/sdk/android/services/concurrency/a/a;Lio/fabric/sdk/android/services/concurrency/a/d;)V

    .line 2042
    iput-object v3, v0, Lcom/crashlytics/android/a/u;->b:Lio/fabric/sdk/android/services/concurrency/a/e;

    move v0, v1

    .line 55
    goto :goto_1

    :cond_2
    move v0, v1

    .line 58
    goto :goto_1
.end method
