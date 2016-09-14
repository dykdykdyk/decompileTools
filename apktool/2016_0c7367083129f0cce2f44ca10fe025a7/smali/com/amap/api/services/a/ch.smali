.class public Lcom/amap/api/services/a/ch;
.super Ljava/lang/Object;
.source "DynamicExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/amap/api/services/a/ch;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/services/a/ba;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/ba;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/amap/api/services/a/ch;->d:Lcom/amap/api/services/a/ba;

    .line 47
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ch;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 50
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/services/a/ba;)Lcom/amap/api/services/a/ch;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/amap/api/services/a/ch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ch;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/amap/api/services/a/ch;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ch;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/ba;)V

    sput-object v0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ch;

    .line 56
    :cond_0
    sget-object v0, Lcom/amap/api/services/a/ch;->a:Lcom/amap/api/services/a/ch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 64
    invoke-static {p2}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 74
    const-string v1, "amapdynamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "admic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    const-string v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 75
    new-instance v1, Lcom/amap/api/services/a/bm;

    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 76
    const-string v2, "loc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    const-string v3, "loc"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    :cond_1
    const-string v2, "navi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    const-string v3, "navi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    :cond_2
    const-string v2, "sea"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    const-string v3, "sea"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    :cond_3
    const-string v2, "2dmap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    iget-object v2, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    const-string v3, "2dmap"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :cond_4
    const-string v2, "3dmap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    const-string v2, "3dmap"

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/a/ch;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 136
    :cond_6
    return-void

    .line 112
    :cond_7
    :try_start_1
    const-string v1, "com.autonavi.aps.amapapi.offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    new-instance v0, Lcom/amap/api/services/a/bm;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 114
    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    const-string v2, "OfflineLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    const-string v1, "DynamicExceptionHandler"

    const-string v2, "uncaughtException"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_8
    :try_start_2
    const-string v1, "com.data.carrier_v4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    new-instance v0, Lcom/amap/api/services/a/bm;

    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 121
    iget-object v1, p0, Lcom/amap/api/services/a/ch;->c:Landroid/content/Context;

    const-string v2, "Collection"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/cf;->a(Lcom/amap/api/services/a/bm;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
