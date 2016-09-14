.class public final Lcom/loc/ds;
.super Ljava/lang/Object;
.source "LastLocationManager.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/amap/api/location/AMapLocation;

.field c:Lcom/loc/o;

.field d:J

.field e:Ljava/lang/Runnable;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/ds;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/ds;->b:Lcom/amap/api/location/AMapLocation;

    iput-object v0, p0, Lcom/loc/ds;->g:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ds;->d:J

    new-instance v0, Lcom/loc/dt;

    invoke-direct {v0, p0}, Lcom/loc/dt;-><init>(Lcom/loc/ds;)V

    iput-object v0, p0, Lcom/loc/ds;->e:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ds;->f:Landroid/content/Context;

    :try_start_0
    const-string v0, "MD5"

    iget-object v1, p0, Lcom/loc/ds;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/eh;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ds;->a:Ljava/lang/String;

    new-instance v0, Lcom/loc/o;

    const-class v1, Lcom/loc/cy;

    invoke-static {v1}, Lcom/loc/o;->a(Ljava/lang/Class;)Lcom/loc/n;

    move-result-object v1

    invoke-static {}, Lcom/loc/dn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/ds;->c:Lcom/loc/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LastLocationManager"

    const-string v2, "<init>:DBOperation"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ds;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ds;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/loc/ey;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ds;->g:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/loc/ds;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/loc/ds;->e:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Lcom/amap/api/location/AMapLocation;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ds;->f:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/o;

    iget-object v2, p0, Lcom/loc/ds;->f:Landroid/content/Context;

    const-class v3, Lcom/loc/cy;

    invoke-static {v3}, Lcom/loc/o;->a(Ljava/lang/Class;)Lcom/loc/n;

    move-result-object v3

    invoke-static {}, Lcom/loc/dn;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/loc/o;-><init>(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/ds;->c:Lcom/loc/o;

    iget-object v0, p0, Lcom/loc/ds;->c:Lcom/loc/o;

    const-string v2, "_id=1"

    const-class v3, Lcom/loc/cx;

    .line 1000
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cx;

    .line 2000
    iget-object v0, v0, Lcom/loc/cx;->a:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Lcom/loc/ej;->b(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ds;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/loc/cq;->d([BLjava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/loc/cr;->a(Lorg/json/JSONObject;)Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "LastLocationManager"

    const-string v3, "readLastFix"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/amap/api/location/AMapLocation;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ds;->b:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/ds;->d()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/ds;->b:Lcom/amap/api/location/AMapLocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ds;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/loc/dn;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/loc/ds;->b:Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/ds;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/ds;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "LastLocationManager"

    const-string v2, "setLastFix"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/ds;->c()V

    iget-object v0, p0, Lcom/loc/ds;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ds;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ds;->g:Ljava/util/concurrent/ExecutorService;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ds;->d:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "LastLocationManager"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
