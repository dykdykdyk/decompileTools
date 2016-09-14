.class public final Lcom/google/android/gms/measurement/internal/bt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Lcom/google/android/gms/internal/cd;

.field static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/bt;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    .line 0
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/ca;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ca;->e()Lcom/google/android/gms/measurement/internal/bf;

    move-result-object v10

    if-nez p1, :cond_1

    .line 1000
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "AppMeasurementReceiver called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/am;->N()Z

    .line 2000
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/bf;->g:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v2, "Local AppMeasurementReceiver got"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t;->a(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v11, Lcom/google/android/gms/measurement/internal/bt;->a:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez v0, :cond_2

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/bt;->b:Lcom/google/android/gms/internal/cd;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/cd;

    const-string v1, "AppMeasurement WakeLock"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/bt;->b:Lcom/google/android/gms/internal/cd;

    .line 3000
    iget-object v1, v0, Lcom/google/android/gms/internal/cd;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/cd;->h:Z

    .line 0
    :cond_3
    sget-object v12, Lcom/google/android/gms/measurement/internal/bt;->b:Lcom/google/android/gms/internal/cd;

    .line 5000
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/common/util/i;->a(I)Z

    move-result v0

    .line 4000
    if-nez v0, :cond_4

    iget-boolean v0, v12, Lcom/google/android/gms/internal/cd;->h:Z

    if-eqz v0, :cond_4

    sget-object v1, Lcom/google/android/gms/internal/cd;->a:Ljava/lang/String;

    const-string v2, "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "

    iget-object v0, v12, Lcom/google/android/gms/internal/cd;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6000
    :cond_4
    invoke-virtual {v12}, Lcom/google/android/gms/internal/cd;->a()Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/cd;->a(Z)Ljava/lang/String;

    move-result-object v4

    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v1, v12, Lcom/google/android/gms/internal/cd;->h:Z

    if-eqz v1, :cond_5

    iget v1, v12, Lcom/google/android/gms/internal/cd;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v12, Lcom/google/android/gms/internal/cd;->i:I

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    :cond_5
    iget-boolean v0, v12, Lcom/google/android/gms/internal/cd;->h:Z

    if-nez v0, :cond_7

    iget v0, v12, Lcom/google/android/gms/internal/cd;->j:I

    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/google/android/gms/common/stats/h;->a()Lcom/google/android/gms/common/stats/h;

    iget-object v0, v12, Lcom/google/android/gms/internal/cd;->g:Landroid/content/Context;

    iget-object v1, v12, Lcom/google/android/gms/internal/cd;->b:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1, v4}, Lcom/google/android/gms/common/stats/f;->a(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, v12, Lcom/google/android/gms/internal/cd;->e:Ljava/lang/String;

    iget-object v5, v12, Lcom/google/android/gms/internal/cd;->f:Ljava/lang/String;

    iget v6, v12, Lcom/google/android/gms/internal/cd;->d:I

    iget-object v7, v12, Lcom/google/android/gms/internal/cd;->c:Landroid/os/WorkSource;

    invoke-static {v7}, Lcom/google/android/gms/common/util/n;->a(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/common/stats/h;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget v0, v12, Lcom/google/android/gms/internal/cd;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v12, Lcom/google/android/gms/internal/cd;->j:I

    :cond_7
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4000
    :try_start_3
    iget-object v0, v12, Lcom/google/android/gms/internal/cd;->b:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 0
    :goto_2
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4000
    :cond_8
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 0
    :catch_0
    move-exception v0

    .line 7000
    :try_start_6
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/bf;->c:Lcom/google/android/gms/measurement/internal/bh;

    .line 0
    const-string v1, "AppMeasurementService at risk of not starting. For more reliable app measurements, add the WAKE_LOCK permission to your manifest."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bh;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 6000
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/bt;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/bt;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/aj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/measurement/internal/bt;->c:Ljava/lang/Boolean;

    goto :goto_0
.end method
