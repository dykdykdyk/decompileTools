.class final Lcom/loc/ez;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/loc/eo;

.field final synthetic c:Z

.field final synthetic d:Lcom/loc/ey;


# direct methods
.method constructor <init>(Lcom/loc/ey;Landroid/content/Context;Lcom/loc/eo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ez;->d:Lcom/loc/ey;

    iput-object p2, p0, Lcom/loc/ez;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/ez;->b:Lcom/loc/eo;

    iput-boolean p4, p0, Lcom/loc/ez;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/loc/z;

    iget-object v2, p0, Lcom/loc/ez;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/loc/z;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/loc/ez;->b:Lcom/loc/eo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    if-eqz v2, :cond_1

    :try_start_2
    iget-object v3, v0, Lcom/loc/z;->a:Lcom/loc/o;

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/loc/z;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/loc/z;->a(Landroid/content/Context;Z)Lcom/loc/o;

    move-result-object v3

    iput-object v3, v0, Lcom/loc/z;->a:Lcom/loc/o;

    :cond_0
    invoke-virtual {v2}, Lcom/loc/eo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/eo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/loc/z;->a:Lcom/loc/o;

    const-class v5, Lcom/loc/eo;

    .line 2000
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v4

    .line 1000
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v0, v0, Lcom/loc/z;->a:Lcom/loc/o;

    .line 3000
    invoke-virtual {v0, v2}, Lcom/loc/o;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v0, p0, Lcom/loc/ez;->c:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance v0, Lcom/loc/aa;

    iget-object v2, p0, Lcom/loc/ez;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/aa;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/loc/ab;

    invoke-direct {v2}, Lcom/loc/ab;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/ab;->c(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/ab;->a(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/ab;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/aa;->a(Lcom/loc/ab;)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lcom/loc/ez;->d:Lcom/loc/ey;

    invoke-static {v0}, Lcom/loc/ey;->a(Lcom/loc/ey;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/et;->a(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    return-void

    .line 1000
    :cond_3
    :try_start_7
    iget-object v0, v0, Lcom/loc/z;->a:Lcom/loc/o;

    .line 4000
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/loc/o;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    :try_start_8
    const-string v2, "SDKDB"

    const-string v3, "insert"

    invoke-static {v0, v2, v3}, Lcom/loc/es;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
.end method
