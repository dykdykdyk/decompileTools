.class Lcom/amap/api/services/a/bg$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/services/a/ba;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/services/a/bg;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/bg;Landroid/content/Context;Lcom/amap/api/services/a/ba;Z)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amap/api/services/a/bg$1;->d:Lcom/amap/api/services/a/bg;

    iput-object p2, p0, Lcom/amap/api/services/a/bg$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/services/a/bg$1;->b:Lcom/amap/api/services/a/ba;

    iput-boolean p4, p0, Lcom/amap/api/services/a/bg$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/bw;

    iget-object v2, p0, Lcom/amap/api/services/a/bg$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/amap/api/services/a/bw;-><init>(Landroid/content/Context;Z)V

    .line 187
    iget-object v2, p0, Lcom/amap/api/services/a/bg$1;->b:Lcom/amap/api/services/a/ba;

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/bw;->a(Lcom/amap/api/services/a/ba;)V

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/services/a/bg$1;->c:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :try_start_3
    new-instance v0, Lcom/amap/api/services/a/bx;

    iget-object v2, p0, Lcom/amap/api/services/a/bg$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amap/api/services/a/bx;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v2, Lcom/amap/api/services/a/by;

    invoke-direct {v2}, Lcom/amap/api/services/a/by;-><init>()V

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/by;->c(Z)V

    .line 197
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/by;->a(Z)V

    .line 198
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/by;->b(Z)V

    .line 201
    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/bx;->a(Lcom/amap/api/services/a/by;)V

    .line 202
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/services/a/bg$1;->d:Lcom/amap/api/services/a/bg;

    invoke-static {v0}, Lcom/amap/api/services/a/bg;->a(Lcom/amap/api/services/a/bg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/be;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 206
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 202
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
