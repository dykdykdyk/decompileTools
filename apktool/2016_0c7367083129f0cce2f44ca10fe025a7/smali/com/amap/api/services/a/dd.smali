.class public abstract Lcom/amap/api/services/a/dd;
.super Ljava/lang/Object;
.source "ThreadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field d:Lcom/amap/api/services/a/dd$a;


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/dd;->d:Lcom/amap/api/services/a/dd$a;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/amap/api/services/a/dd;->d:Lcom/amap/api/services/a/dd$a;

    invoke-interface {v0, p0}, Lcom/amap/api/services/a/dd$a;->a(Lcom/amap/api/services/a/dd;)V

    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/services/a/dd;->a()V

    .line 25
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/amap/api/services/a/dd;->d:Lcom/amap/api/services/a/dd$a;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/amap/api/services/a/dd;->d:Lcom/amap/api/services/a/dd$a;

    invoke-interface {v0, p0}, Lcom/amap/api/services/a/dd$a;->b(Lcom/amap/api/services/a/dd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "ThreadTask"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bg;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
