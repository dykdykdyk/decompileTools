.class public Lcom/crashlytics/android/a;
.super Lio/fabric/sdk/android/o;
.source "Crashlytics.java"

# interfaces
.implements Lio/fabric/sdk/android/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/o",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/p;"
    }
.end annotation


# instance fields
.field public final a:Lcom/crashlytics/android/a/a;

.field public final b:Lcom/crashlytics/android/b/e;

.field public final c:Lcom/crashlytics/android/core/h;

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/crashlytics/android/a/a;

    invoke-direct {v0}, Lcom/crashlytics/android/a/a;-><init>()V

    new-instance v1, Lcom/crashlytics/android/b/e;

    invoke-direct {v1}, Lcom/crashlytics/android/b/e;-><init>()V

    new-instance v2, Lcom/crashlytics/android/core/h;

    invoke-direct {v2}, Lcom/crashlytics/android/core/h;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/a;-><init>(Lcom/crashlytics/android/a/a;Lcom/crashlytics/android/b/e;Lcom/crashlytics/android/core/h;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/crashlytics/android/a/a;Lcom/crashlytics/android/b/e;Lcom/crashlytics/android/core/h;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lio/fabric/sdk/android/o;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/crashlytics/android/a;->a:Lcom/crashlytics/android/a/a;

    .line 34
    iput-object p2, p0, Lcom/crashlytics/android/a;->b:Lcom/crashlytics/android/b/e;

    .line 35
    iput-object p3, p0, Lcom/crashlytics/android/a;->c:Lcom/crashlytics/android/core/h;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lio/fabric/sdk/android/o;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/a;->d:Ljava/util/Collection;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1371
    invoke-static {}, Lcom/crashlytics/android/a;->e()Lcom/crashlytics/android/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/a;->e()Lcom/crashlytics/android/a;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/a;->c:Lcom/crashlytics/android/core/h;

    .line 1459
    const-string v1, "CrashlyticsCore"

    .line 1463
    iget-boolean v2, v0, Lcom/crashlytics/android/core/h;->n:Z

    if-nez v2, :cond_1

    .line 1467
    const-string v2, "prior to logging messages."

    invoke-static {v2}, Lcom/crashlytics/android/core/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/crashlytics/android/core/h;->a:J

    sub-long/2addr v2, v4

    .line 1472
    iget-object v0, v0, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2299
    iget-object v4, v0, Lcom/crashlytics/android/core/ab;->f:Lcom/crashlytics/android/core/v;

    new-instance v5, Lcom/crashlytics/android/core/al;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/crashlytics/android/core/al;-><init>(Lcom/crashlytics/android/core/ab;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/crashlytics/android/core/v;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 220
    :cond_1
    return-void
.end method

.method private static e()Lcom/crashlytics/android/a;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/crashlytics/android/a;

    invoke-static {v0}, Lio/fabric/sdk/android/f;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/o;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "2.6.2.142"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/crashlytics/android/a;->d:Ljava/util/Collection;

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method
