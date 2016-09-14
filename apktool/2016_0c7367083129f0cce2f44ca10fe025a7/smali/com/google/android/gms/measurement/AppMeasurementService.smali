.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/w;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private b()Lcom/google/android/gms/measurement/internal/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lcom/google/android/gms/measurement/internal/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/t;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/t;-><init>(Lcom/google/android/gms/measurement/internal/w;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lcom/google/android/gms/measurement/internal/t;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->a:Lcom/google/android/gms/measurement/internal/t;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public final a(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Lcom/google/android/gms/measurement/internal/t;

    move-result-object v1

    .line 12000
    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t;->a()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 13000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 12000
    const-string v2, "onBind called with null intent"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.START"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/google/android/gms/measurement/internal/cf;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ca;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/cf;-><init>(Lcom/google/android/gms/measurement/internal/ca;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t;->a()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    .line 14000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 12000
    const-string v3, "onBind received unknown action"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 2

    .prologue
    .line 0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Lcom/google/android/gms/measurement/internal/t;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ca;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/am;->N()Z

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 1000
    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    .line 0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Lcom/google/android/gms/measurement/internal/t;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ca;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/am;->N()Z

    .line 4000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 3000
    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    .line 0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Lcom/google/android/gms/measurement/internal/t;

    move-result-object v0

    .line 18000
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t;->a()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 19000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 18000
    const-string v1, "onRebind called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t;->a()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 20000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 18000
    const-string v2, "onRebind called. action"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Lcom/google/android/gms/measurement/internal/t;

    move-result-object v7

    .line 6000
    :try_start_0
    sget-object v8, Lcom/google/android/gms/measurement/internal/bt;->a:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v9, Lcom/google/android/gms/measurement/internal/bt;->b:Lcom/google/android/gms/internal/cd;

    if-eqz v9, :cond_3

    .line 7000
    iget-object v0, v9, Lcom/google/android/gms/internal/cd;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 6000
    if-eqz v0, :cond_3

    .line 9000
    invoke-virtual {v9}, Lcom/google/android/gms/internal/cd;->a()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/cd;->a(Z)Ljava/lang/String;

    move-result-object v3

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v1, v9, Lcom/google/android/gms/internal/cd;->h:Z

    if-eqz v1, :cond_0

    iget v1, v9, Lcom/google/android/gms/internal/cd;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v9, Lcom/google/android/gms/internal/cd;->i:I

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, v9, Lcom/google/android/gms/internal/cd;->h:Z

    if-nez v0, :cond_2

    iget v0, v9, Lcom/google/android/gms/internal/cd;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/stats/h;->a()Lcom/google/android/gms/common/stats/h;

    iget-object v0, v9, Lcom/google/android/gms/internal/cd;->g:Landroid/content/Context;

    iget-object v1, v9, Lcom/google/android/gms/internal/cd;->b:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/stats/f;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/cd;->e:Ljava/lang/String;

    iget-object v4, v9, Lcom/google/android/gms/internal/cd;->f:Ljava/lang/String;

    iget v5, v9, Lcom/google/android/gms/internal/cd;->d:I

    iget-object v6, v9, Lcom/google/android/gms/internal/cd;->c:Landroid/os/WorkSource;

    invoke-static {v6}, Lcom/google/android/gms/common/util/n;->a(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/stats/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, v9, Lcom/google/android/gms/internal/cd;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v9, Lcom/google/android/gms/internal/cd;->j:I

    :cond_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8000
    :try_start_3
    iget-object v0, v9, Lcom/google/android/gms/internal/cd;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6000
    :cond_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5000
    :goto_0
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ca;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v1

    if-nez p1, :cond_5

    .line 10000
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 5000
    const-string v1, "AppMeasurementService started with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v0, 0x2

    .line 0
    return v0

    .line 9000
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 6000
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 5000
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/am;->N()Z

    .line 11000
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 5000
    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->f()Lcom/google/android/gms/measurement/internal/bv;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/u;

    invoke-direct {v3, v7, v0, p3, v1}, Lcom/google/android/gms/measurement/internal/u;-><init>(Lcom/google/android/gms/measurement/internal/t;Lcom/google/android/gms/measurement/internal/ca;ILcom/google/android/gms/measurement/internal/bf;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/bv;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Lcom/google/android/gms/measurement/internal/t;

    move-result-object v0

    .line 15000
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t;->a()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->a:Lcom/google/android/gms/measurement/internal/bh;

    .line 15000
    const-string v1, "onUnbind called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t;->a()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v0

    .line 17000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 15000
    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
