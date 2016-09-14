.class final Lcom/loc/at;
.super Ljava/lang/Thread;
.source "APSServiceCore.java"


# instance fields
.field final synthetic a:Lcom/loc/as;


# direct methods
.method constructor <init>(Lcom/loc/as;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-boolean v0, v0, Lcom/loc/as;->k:Z

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    new-instance v3, Lcom/loc/di;

    invoke-direct {v3}, Lcom/loc/di;-><init>()V

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-boolean v0, v0, Lcom/loc/as;->l:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    .line 1000
    iput-wide v4, v3, Lcom/loc/di;->a:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 0
    :try_start_1
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->e(Lcom/loc/as;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->g(Lcom/loc/as;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    :try_start_3
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v2, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v2}, Lcom/loc/as;->h(Lcom/loc/as;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v2, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v2, v2, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLocationType()I

    move-result v2

    iput v2, v0, Lcom/loc/as;->q:I

    :cond_0
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 2000
    iput-object v0, v3, Lcom/loc/di;->c:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 0
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->i(Lcom/loc/as;)Z

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->j(Lcom/loc/as;)Lcom/loc/bz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v2, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v2}, Lcom/loc/as;->j(Lcom/loc/as;)Lcom/loc/bz;

    move-result-object v2

    iget-object v6, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v6, v6, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 3000
    invoke-static {}, Lcom/loc/cj;->a()Lcom/loc/cj;

    move-result-object v7

    iget-boolean v2, v2, Lcom/loc/bz;->g:Z

    .line 4000
    iput-boolean v2, v7, Lcom/loc/cj;->a:Z

    .line 3000
    invoke-static {}, Lcom/loc/cj;->a()Lcom/loc/cj;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/loc/cj;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    .line 0
    iput-object v2, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->setTime(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    .line 5000
    iput-wide v4, v3, Lcom/loc/di;->b:J

    .line 0
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v4, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/loc/as;->o:J

    :cond_2
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/as;->l:Z

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->h:Ljava/util/Vector;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v0

    :goto_3
    if-lez v2, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "location"

    iget-object v6, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v6, v6, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, "originalLocType"

    iget-object v6, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget v6, v6, Lcom/loc/as;->q:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->h:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v1, v1, Lcom/loc/as;->h:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/loc/as;->a(Lcom/loc/as;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v2}, Lcom/loc/as;->f(Lcom/loc/as;)Z

    const-string v2, "APSServiceCore"

    const-string v4, "run part1"

    invoke-static {v0, v2, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_7
    const-string v1, "APSServiceCore"

    const-string v2, "run part3"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->l(Lcom/loc/as;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->p(Lcom/loc/as;)V

    :cond_3
    :goto_4
    return-void

    :catch_2
    move-exception v0

    :try_start_8
    iget-object v2, p0, Lcom/loc/at;->a:Lcom/loc/as;

    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/loc/as;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v4

    iput-object v4, v2, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string v2, "APSServiceCore"

    const-string v4, "run part2"

    invoke-static {v0, v2, v4}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->l(Lcom/loc/as;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->p(Lcom/loc/as;)V

    goto :goto_4

    :cond_4
    :try_start_a
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    const/16 v2, 0x9

    iget-object v4, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v4}, Lcom/loc/as;->k(Lcom/loc/as;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/loc/as;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v2

    iput-object v2, v0, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    :catch_4
    move-exception v0

    :try_start_b
    const-string v1, "APSServiceCore"

    const-string v2, "run part5"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->l(Lcom/loc/as;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->p(Lcom/loc/as;)V

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_5
    :try_start_c
    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v1, v1, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/loc/dj;->a(Landroid/content/Context;Lcom/loc/di;)V

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_6
    :try_start_d
    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v1}, Lcom/loc/as;->m(Lcom/loc/as;)V

    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-boolean v1, v1, Lcom/loc/as;->k:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->l(Lcom/loc/as;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->p(Lcom/loc/as;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v1}, Lcom/loc/as;->l(Lcom/loc/as;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v1}, Lcom/loc/as;->p(Lcom/loc/as;)V

    :cond_6
    throw v0

    :cond_7
    :try_start_10
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v2, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->l(Lcom/loc/as;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_8
    monitor-exit v2

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v0

    :cond_9
    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v1, v1, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/de;->c(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v2, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-boolean v2, v2, Lcom/loc/as;->j:Z

    iget-object v3, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-object v3, v3, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/loc/as;->a(Lcom/loc/as;ZLandroid/content/Context;)V

    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    iget-boolean v1, v1, Lcom/loc/as;->j:Z

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/as;->j:Z

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v1, v0}, Lcom/loc/as;->a(Lcom/loc/as;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->n(Lcom/loc/as;)V

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->o(Lcom/loc/as;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->l(Lcom/loc/as;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/loc/at;->a:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->p(Lcom/loc/as;)V

    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    goto/16 :goto_5
.end method
