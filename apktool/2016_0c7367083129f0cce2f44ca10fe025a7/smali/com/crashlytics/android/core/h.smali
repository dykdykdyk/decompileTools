.class public Lcom/crashlytics/android/core/h;
.super Lio/fabric/sdk/android/o;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/o",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/n;
    a = {
        Lcom/crashlytics/android/core/a/a;
    }
.end annotation


# instance fields
.field private final A:Lcom/crashlytics/android/core/bt;

.field private B:Lio/fabric/sdk/android/services/network/l;

.field private C:Lcom/crashlytics/android/core/v;

.field public final a:J

.field final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/io/File;

.field d:Lcom/crashlytics/android/core/y;

.field public e:Lcom/crashlytics/android/core/ab;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field public n:Z

.field o:Lcom/crashlytics/android/core/a/a;

.field private v:Lio/fabric/sdk/android/services/d/a;

.field private w:Lcom/crashlytics/android/core/y;

.field private x:Lcom/crashlytics/android/core/z;

.field private y:Ljava/lang/String;

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/h;-><init>(B)V

    .line 205
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 209
    const-string v0, "Crashlytics Exception Handler"

    .line 2042
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/t;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 2043
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 2044
    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/t;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 209
    invoke-direct {p0, v1}, Lcom/crashlytics/android/core/h;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 211
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Lio/fabric/sdk/android/o;-><init>()V

    .line 102
    iput-object v1, p0, Lcom/crashlytics/android/core/h;->f:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/crashlytics/android/core/h;->g:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/crashlytics/android/core/h;->h:Ljava/lang/String;

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crashlytics/android/core/h;->z:F

    .line 220
    new-instance v0, Lcom/crashlytics/android/core/t;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/core/t;-><init>(B)V

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->x:Lcom/crashlytics/android/core/z;

    .line 221
    iput-object v1, p0, Lcom/crashlytics/android/core/h;->A:Lcom/crashlytics/android/core/bt;

    .line 222
    iput-boolean v2, p0, Lcom/crashlytics/android/core/h;->n:Z

    .line 223
    new-instance v0, Lcom/crashlytics/android/core/v;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/v;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->C:Lcom/crashlytics/android/core/v;

    .line 225
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/core/h;->a:J

    .line 227
    return-void
.end method

.method static synthetic a(FI)I
    .locals 1

    .prologue
    .line 62
    .line 20103
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 62
    return v0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/h;)Lcom/crashlytics/android/core/y;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->w:Lcom/crashlytics/android/core/y;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 690
    const-class v0, Lcom/crashlytics/android/a/a;

    invoke-static {v0}, Lio/fabric/sdk/android/f;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/o;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/a/a;

    .line 691
    if-eqz v0, :cond_1

    .line 692
    new-instance v1, Lio/fabric/sdk/android/services/b/p;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/b/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11332
    iget-object v2, v0, Lcom/crashlytics/android/a/a;->a:Lcom/crashlytics/android/a/z;

    if-eqz v2, :cond_1

    .line 11333
    iget-object v0, v0, Lcom/crashlytics/android/a/a;->a:Lcom/crashlytics/android/a/z;

    .line 12036
    iget-object v2, v1, Lio/fabric/sdk/android/services/b/o;->a:Ljava/lang/String;

    .line 12039
    iget-object v1, v1, Lio/fabric/sdk/android/services/b/o;->b:Ljava/lang/String;

    .line 12106
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 12107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12113
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "Answers"

    const-string v5, "Logged crash"

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12114
    iget-object v0, v0, Lcom/crashlytics/android/a/z;->b:Lcom/crashlytics/android/a/b;

    .line 14047
    const-string v3, "sessionId"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 14048
    new-instance v3, Lcom/crashlytics/android/a/ac;

    sget-object v4, Lcom/crashlytics/android/a/ad;->e:Lcom/crashlytics/android/a/ad;

    invoke-direct {v3, v4}, Lcom/crashlytics/android/a/ac;-><init>(Lcom/crashlytics/android/a/ad;)V

    .line 14106
    iput-object v2, v3, Lcom/crashlytics/android/a/ac;->c:Ljava/util/Map;

    .line 13052
    const-string v2, "exceptionName"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 14116
    iput-object v1, v3, Lcom/crashlytics/android/a/ac;->e:Ljava/util/Map;

    .line 15058
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/crashlytics/android/a/b;->a(Lcom/crashlytics/android/a/ac;ZZ)V

    .line 695
    :cond_1
    return-void
.end method

.method private a(Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z
    .locals 6

    .prologue
    .line 981
    new-instance v4, Lcom/crashlytics/android/core/aw;

    invoke-direct {v4, p1, p2}, Lcom/crashlytics/android/core/aw;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/e/o;)V

    .line 985
    new-instance v3, Lcom/crashlytics/android/core/u;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/crashlytics/android/core/u;-><init>(B)V

    .line 989
    new-instance v0, Lcom/crashlytics/android/core/o;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/core/o;-><init>(Lcom/crashlytics/android/core/h;Landroid/app/Activity;Lcom/crashlytics/android/core/u;Lcom/crashlytics/android/core/aw;Lio/fabric/sdk/android/services/e/o;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1054
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Waiting for user opt-in."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18122
    :try_start_0
    iget-object v0, v3, Lcom/crashlytics/android/core/u;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19117
    :goto_0
    iget-boolean v0, v3, Lcom/crashlytics/android/core/u;->a:Z

    .line 1056
    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 243
    iget-boolean v0, p0, Lcom/crashlytics/android/core/h;->n:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 293
    :goto_0
    return v0

    .line 248
    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/b/j;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/b/j;-><init>()V

    invoke-static {p1}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->j:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v7

    .line 251
    goto :goto_0

    .line 254
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Initializing Crashlytics 2.3.11.142"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lio/fabric/sdk/android/services/d/b;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/o;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->v:Lio/fabric/sdk/android/services/d/a;

    .line 257
    new-instance v0, Lcom/crashlytics/android/core/y;

    const-string v1, "crash_marker"

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->v:Lio/fabric/sdk/android/services/d/a;

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/core/y;-><init>(Ljava/lang/String;Lio/fabric/sdk/android/services/d/a;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->d:Lcom/crashlytics/android/core/y;

    .line 258
    new-instance v0, Lcom/crashlytics/android/core/y;

    const-string v1, "initialization_marker"

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->v:Lio/fabric/sdk/android/services/d/a;

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/core/y;-><init>(Ljava/lang/String;Lio/fabric/sdk/android/services/d/a;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->w:Lcom/crashlytics/android/core/y;

    .line 3298
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->A:Lcom/crashlytics/android/core/bt;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/crashlytics/android/core/aa;

    iget-object v1, p0, Lcom/crashlytics/android/core/h;->A:Lcom/crashlytics/android/core/bt;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/aa;-><init>(Lcom/crashlytics/android/core/bt;)V

    .line 3300
    :goto_1
    new-instance v1, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/r;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/h;->B:Lio/fabric/sdk/android/services/network/l;

    .line 3301
    iget-object v1, p0, Lcom/crashlytics/android/core/h;->B:Lio/fabric/sdk/android/services/network/l;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/network/l;->a(Lio/fabric/sdk/android/services/network/n;)V

    .line 3303
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->y:Ljava/lang/String;

    .line 4109
    iget-object v0, p0, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 3304
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/x;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->k:Ljava/lang/String;

    .line 3305
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Installer package name is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/crashlytics/android/core/h;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3308
    iget-object v1, p0, Lcom/crashlytics/android/core/h;->y:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3309
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/core/h;->l:Ljava/lang/String;

    .line 3310
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v0, "0.0"

    :goto_2
    iput-object v0, p0, Lcom/crashlytics/android/core/h;->m:Ljava/lang/String;

    .line 3315
    invoke-static {p1}, Lio/fabric/sdk/android/services/b/l;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->i:Ljava/lang/String;

    .line 3319
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->i:Ljava/lang/String;

    .line 5072
    const-string v1, "com.crashlytics.RequireBuildId"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 5707
    new-instance v2, Lcom/crashlytics/android/core/a;

    invoke-direct {v2, v0, v1}, Lcom/crashlytics/android/core/a;-><init>(Ljava/lang/String;Z)V

    .line 6036
    iget-object v0, v2, Lcom/crashlytics/android/core/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v2, Lcom/crashlytics/android/core/a;->b:Z

    if-eqz v0, :cond_4

    .line 6066
    const-string v0, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    .line 6039
    const-string v1, "CrashlyticsCore"

    const-string v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6040
    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  | "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6043
    const-string v1, "CrashlyticsCore"

    const-string v2, ".   \\ |  | /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    const-string v1, "CrashlyticsCore"

    const-string v2, ".    \\    /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6045
    const-string v1, "CrashlyticsCore"

    const-string v2, ".     \\  /"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    const-string v1, "CrashlyticsCore"

    const-string v2, ".      \\/"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    const-string v1, "CrashlyticsCore"

    const-string v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6048
    const-string v1, "CrashlyticsCore"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6049
    const-string v1, "CrashlyticsCore"

    const-string v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    const-string v1, "CrashlyticsCore"

    const-string v2, ".      /\\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6051
    const-string v1, "CrashlyticsCore"

    const-string v2, ".     /  \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6052
    const-string v1, "CrashlyticsCore"

    const-string v2, ".    /    \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6053
    const-string v1, "CrashlyticsCore"

    const-string v2, ".   / |  | \\"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6055
    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6056
    const-string v1, "CrashlyticsCore"

    const-string v2, ".     |  |"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6057
    const-string v1, "CrashlyticsCore"

    const-string v2, "."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6059
    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3298
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3310
    :cond_3
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto/16 :goto_2

    .line 6060
    :cond_4
    iget-boolean v0, v2, Lcom/crashlytics/android/core/a;->b:Z

    if-nez v0, :cond_5

    .line 6061
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Configured not to require a build ID."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_5
    new-instance v4, Lcom/crashlytics/android/core/bb;

    .line 6711
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->y:Ljava/lang/String;

    .line 264
    invoke-direct {v4, p1, v0}, Lcom/crashlytics/android/core/bb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6841
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->C:Lcom/crashlytics/android/core/v;

    new-instance v1, Lcom/crashlytics/android/core/l;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/l;-><init>(Lcom/crashlytics/android/core/h;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/v;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 6952
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->C:Lcom/crashlytics/android/core/v;

    new-instance v1, Lcom/crashlytics/android/core/s;

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->d:Lcom/crashlytics/android/core/y;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/s;-><init>(Lcom/crashlytics/android/core/y;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/v;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 6957
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 7324
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Installing exception handler..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7325
    new-instance v0, Lcom/crashlytics/android/core/ab;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->C:Lcom/crashlytics/android/core/v;

    .line 8109
    iget-object v3, p0, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 7325
    iget-object v5, p0, Lcom/crashlytics/android/core/h;->v:Lio/fabric/sdk/android/services/d/a;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/ab;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/core/v;Lio/fabric/sdk/android/services/b/x;Lcom/crashlytics/android/core/cf;Lio/fabric/sdk/android/services/d/a;Lcom/crashlytics/android/core/h;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    .line 7336
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    .line 8376
    iget-object v1, v0, Lcom/crashlytics/android/core/ab;->f:Lcom/crashlytics/android/core/v;

    new-instance v2, Lcom/crashlytics/android/core/ad;

    invoke-direct {v2, v0}, Lcom/crashlytics/android/core/ad;-><init>(Lcom/crashlytics/android/core/ab;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/v;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 7338
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 7339
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Successfully installed exception handler."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    :goto_3
    if-eqz v9, :cond_6

    :try_start_3
    invoke-static {p1}, Lio/fabric/sdk/android/services/b/l;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 281
    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->k()V

    move v0, v7

    .line 283
    goto/16 :goto_0

    .line 7340
    :catch_1
    move-exception v0

    .line 7341
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "There was a problem installing the exception handler."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lcom/crashlytics/android/core/CrashlyticsMissingDependencyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 289
    :catch_2
    move-exception v0

    .line 290
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    .line 293
    goto/16 :goto_0

    :cond_6
    move v0, v8

    .line 285
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/crashlytics/android/core/h;Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/core/h;->a(Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1081
    invoke-static {}, Lcom/crashlytics/android/core/h;->f()Lcom/crashlytics/android/core/h;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    if-nez v0, :cond_1

    .line 1083
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1086
    const/4 v0, 0x0

    .line 1088
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/fabric/sdk/android/services/b/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lcom/crashlytics/android/core/h;
    .locals 1

    .prologue
    .line 415
    const-class v0, Lcom/crashlytics/android/core/h;

    invoke-static {v0}, Lio/fabric/sdk/android/f;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/o;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/h;

    return-object v0
.end method

.method static h()Lio/fabric/sdk/android/services/e/p;
    .locals 1

    .prologue
    .line 20055
    invoke-static {}, Lio/fabric/sdk/android/services/e/r;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/v;

    move-result-object v0

    .line 1068
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lio/fabric/sdk/android/services/e/v;->b:Lio/fabric/sdk/android/services/e/p;

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 770
    new-instance v1, Lcom/crashlytics/android/core/i;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/i;-><init>(Lcom/crashlytics/android/core/h;)V

    .line 15183
    iget-object v0, p0, Lio/fabric/sdk/android/o;->q:Lio/fabric/sdk/android/n;

    invoke-virtual {v0}, Lio/fabric/sdk/android/n;->f()Ljava/util/Collection;

    move-result-object v0

    .line 782
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/y;

    .line 783
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/concurrency/s;->a(Lio/fabric/sdk/android/services/concurrency/y;)V

    goto :goto_0

    .line 16123
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/o;->p:Lio/fabric/sdk/android/f;

    .line 16500
    iget-object v0, v0, Lio/fabric/sdk/android/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 786
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 788
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 801
    :goto_1
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 796
    :catch_1
    move-exception v0

    .line 797
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 798
    :catch_2
    move-exception v0

    .line 799
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->C:Lcom/crashlytics/android/core/v;

    new-instance v1, Lcom/crashlytics/android/core/k;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/k;-><init>(Lcom/crashlytics/android/core/h;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/v;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 838
    return-void
.end method


# virtual methods
.method final a(Lio/fabric/sdk/android/services/e/v;)Lcom/crashlytics/android/core/ar;
    .locals 4

    .prologue
    .line 940
    if-eqz p1, :cond_0

    .line 941
    new-instance v0, Lcom/crashlytics/android/core/as;

    .line 18116
    iget-object v1, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 17737
    const-string v2, "com.crashlytics.ApiEndpoint"

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 941
    iget-object v2, p1, Lio/fabric/sdk/android/services/e/v;->a:Lio/fabric/sdk/android/services/e/e;

    iget-object v2, v2, Lio/fabric/sdk/android/services/e/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/core/h;->B:Lio/fabric/sdk/android/services/network/l;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/crashlytics/android/core/as;-><init>(Lio/fabric/sdk/android/o;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/l;)V

    .line 945
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    const-string v0, "2.3.11.142"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const-string v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method protected final b_()Z
    .locals 1

    .prologue
    .line 235
    .line 2116
    iget-object v0, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 236
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/h;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/crashlytics/android/core/h;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 349
    .line 8807
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->C:Lcom/crashlytics/android/core/v;

    new-instance v1, Lcom/crashlytics/android/core/j;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/j;-><init>(Lcom/crashlytics/android/core/h;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/v;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    .line 9703
    iget-object v1, v0, Lcom/crashlytics/android/core/ab;->f:Lcom/crashlytics/android/core/v;

    new-instance v2, Lcom/crashlytics/android/core/af;

    invoke-direct {v2, v0}, Lcom/crashlytics/android/core/af;-><init>(Lcom/crashlytics/android/core/ab;)V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/v;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 10055
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/e/r;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/v;

    move-result-object v1

    .line 355
    if-nez v1, :cond_0

    .line 356
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Received null settings, skipping initialization!"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->l()V

    .line 390
    :goto_0
    return-object v4

    .line 360
    :cond_0
    :try_start_1
    iget-object v0, v1, Lio/fabric/sdk/android/services/e/v;->d:Lio/fabric/sdk/android/services/e/m;

    iget-boolean v0, v0, Lio/fabric/sdk/android/services/e/m;->c:Z

    if-nez v0, :cond_1

    .line 361
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->l()V

    goto :goto_0

    .line 366
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    .line 10443
    iget-object v2, v0, Lcom/crashlytics/android/core/ab;->f:Lcom/crashlytics/android/core/v;

    new-instance v3, Lcom/crashlytics/android/core/ae;

    invoke-direct {v3, v0}, Lcom/crashlytics/android/core/ae;-><init>(Lcom/crashlytics/android/core/ab;)V

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/core/v;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 368
    invoke-virtual {p0, v1}, Lcom/crashlytics/android/core/h;->a(Lio/fabric/sdk/android/services/e/v;)Lcom/crashlytics/android/core/ar;

    move-result-object v0

    .line 369
    if-nez v0, :cond_2

    .line 370
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Unable to create a call to upload reports."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->l()V

    goto :goto_0

    .line 374
    :cond_2
    :try_start_3
    new-instance v1, Lcom/crashlytics/android/core/by;

    iget-object v2, p0, Lcom/crashlytics/android/core/h;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/crashlytics/android/core/by;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/ar;)V

    iget v0, p0, Lcom/crashlytics/android/core/h;->z:F

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/by;->a(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->l()V

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 387
    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/crashlytics/android/core/h;->l()V

    throw v0
.end method

.method final g()Z
    .locals 3

    .prologue
    .line 17055
    invoke-static {}, Lio/fabric/sdk/android/services/e/r;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    .line 895
    new-instance v1, Lcom/crashlytics/android/core/m;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/m;-><init>(Lcom/crashlytics/android/core/h;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/e/q;->a(Lio/fabric/sdk/android/services/e/s;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
