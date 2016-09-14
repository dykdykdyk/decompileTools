.class final Lcom/loc/au;
.super Landroid/os/Handler;
.source "APSServiceCore.java"


# instance fields
.field a:Lcom/loc/as;

.field final synthetic b:Lcom/loc/as;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/loc/as;Lcom/loc/as;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/loc/au;->b:Lcom/loc/as;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/au;->a:Lcom/loc/as;

    iput-boolean v1, p0, Lcom/loc/au;->c:Z

    iput-boolean v1, p0, Lcom/loc/au;->d:Z

    iput-object p2, p0, Lcom/loc/au;->a:Lcom/loc/as;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v1, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    const-string v3, "isNeedAddress"

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "isOffset"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "isLocationCacheEnable"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iget-boolean v8, p0, Lcom/loc/au;->c:Z

    if-ne v3, v8, :cond_0

    iget-boolean v8, p0, Lcom/loc/au;->d:Z

    if-eq v6, v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/loc/au;->a:Lcom/loc/as;

    const-wide/16 v10, 0x0

    iput-wide v10, v8, Lcom/loc/as;->o:J

    :cond_1
    iput-boolean v3, p0, Lcom/loc/au;->c:Z

    iput-boolean v6, p0, Lcom/loc/au;->d:Z

    iget-object v8, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v8, v8, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v8, v8, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getErrorCode()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/loc/au;->a:Lcom/loc/as;

    iget-wide v8, v8, Lcom/loc/as;->o:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x258

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v8, "location"

    iget-object v9, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v9, v9, Lcom/loc/as;->n:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v5, 0x1

    iput v5, v4, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_2
    const-string v2, "wifiactivescan"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/loc/au;->b:Lcom/loc/as;

    const-string v5, "isKillProcess"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/loc/as;->b:Z

    const-string v4, "httptimeout"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v8, "reversegeo"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v3, "isOffset"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v3, v0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v6, "wifiactivescan"

    if-eqz v2, :cond_5

    const-string v0, "1"

    :goto_3
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v2, "httptimeout"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->r:Lorg/json/JSONObject;

    const-string v2, "isLocationCacheEnable"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/as;

    iget-object v2, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v2, v2, Lcom/loc/as;->r:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lcom/loc/as;->a(Lcom/loc/as;Lorg/json/JSONObject;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "APSServiceCore"

    const-string v2, "handleMessage LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "handleMessage STARTCOLL"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v4, v4, Lcom/loc/as;->h:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v4, v4, Lcom/loc/as;->h:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, p0, Lcom/loc/au;->b:Lcom/loc/as;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/loc/as;->l:Z

    iget-object v2, p0, Lcom/loc/au;->a:Lcom/loc/as;

    iget-object v2, v2, Lcom/loc/as;->m:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    goto/16 :goto_2

    :cond_5
    const-string v0, "0"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :pswitch_2
    :try_start_6
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    invoke-virtual {v0}, Lcom/loc/as;->a()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    invoke-virtual {v0}, Lcom/loc/as;->b()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v1, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->a(Lcom/loc/as;)I

    move-result v0

    invoke-static {}, Lcom/loc/de;->b()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/as;->a(Lcom/loc/as;Z)Z

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->b(Lcom/loc/as;)I

    :goto_4
    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->f:Lcom/loc/au;

    const/4 v2, 0x4

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Lcom/loc/au;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :cond_6
    :try_start_9
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/as;->a(Lcom/loc/as;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :pswitch_5
    :try_start_a
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v1, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    invoke-static {}, Lcom/loc/de;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->c(Lcom/loc/as;)Z

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->f:Lcom/loc/au;

    const/4 v2, 0x5

    invoke-static {}, Lcom/loc/de;->d()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/loc/au;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    :cond_8
    :try_start_d
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dn;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->c(Lcom/loc/as;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_5

    :pswitch_6
    :try_start_e
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v1, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    :try_start_f
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->h:Ljava/util/Vector;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->h:Ljava/util/Vector;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    invoke-static {v0}, Lcom/loc/as;->d(Lcom/loc/as;)Z

    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0

    :pswitch_7
    iget-object v0, p0, Lcom/loc/au;->b:Lcom/loc/as;

    iget-object v1, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1

    :try_start_11
    iget-object v0, p0, Lcom/loc/au;->a:Lcom/loc/as;

    iget-object v0, v0, Lcom/loc/as;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
