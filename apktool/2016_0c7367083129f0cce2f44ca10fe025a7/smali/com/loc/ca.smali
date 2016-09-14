.class final Lcom/loc/ca;
.super Ljava/util/TimerTask;
.source "APS.java"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/loc/bz;


# direct methods
.method constructor <init>(Lcom/loc/bz;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/ca;->b:Lcom/loc/bz;

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/ca;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/ca;->b:Lcom/loc/bz;

    invoke-static {v2}, Lcom/loc/bz;->h(Lcom/loc/bz;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/loc/ca;->b:Lcom/loc/bz;

    invoke-static {v2}, Lcom/loc/bz;->i(Lcom/loc/bz;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/ca;->b:Lcom/loc/bz;

    invoke-static {v2}, Lcom/loc/bz;->j(Lcom/loc/bz;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/loc/ca;->b:Lcom/loc/bz;

    invoke-static {v2}, Lcom/loc/bz;->k(Lcom/loc/bz;)V

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/ca;->b:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->f(Lcom/loc/bz;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/ca;->b:Lcom/loc/bz;

    iget v1, p0, Lcom/loc/ca;->a:I

    invoke-static {v0, v1}, Lcom/loc/bz;->a(Lcom/loc/bz;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "timerTaskU run"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/ca;->b:Lcom/loc/bz;

    invoke-static {v0}, Lcom/loc/bz;->k(Lcom/loc/bz;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
