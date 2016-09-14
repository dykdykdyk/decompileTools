.class final Lcom/loc/k;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/loc/a;


# direct methods
.method constructor <init>(Lcom/loc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/k;->a:Lcom/loc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/k;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->a(Lcom/loc/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/k;->a:Lcom/loc/a;

    iget-boolean v0, v0, Lcom/loc/a;->m:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/k;->a:Lcom/loc/a;

    iget-boolean v0, v0, Lcom/loc/a;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/k;->a:Lcom/loc/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/a;->g:Z

    iget-object v0, p0, Lcom/loc/k;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->b(Lcom/loc/a;)V

    :cond_2
    iget-object v0, p0, Lcom/loc/k;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->c(Lcom/loc/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/k;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->d(Lcom/loc/a;)Z

    iget-object v0, p0, Lcom/loc/k;->a:Lcom/loc/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/a;->a(Lcom/loc/a;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager$NetWorkTask"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
