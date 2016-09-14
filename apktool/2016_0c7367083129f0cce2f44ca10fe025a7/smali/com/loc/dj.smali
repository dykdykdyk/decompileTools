.class public final Lcom/loc/dj;
.super Ljava/lang/Object;
.source "ReportUtil.java"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v4, Lcom/loc/dj;

    monitor-enter v4

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/de;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    const-string v0, "net"

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :pswitch_1
    move v1, v2

    :goto_3
    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "param_int_first"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "param_string_first"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "O005"

    invoke-static {p0, v0, v1}, Lcom/loc/dj;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ReportUtil"

    const-string v2, "reportBatting"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :pswitch_2
    :try_start_3
    const-string v0, "cache"

    move v2, v1

    goto :goto_2

    :pswitch_3
    const-string v0, "net"

    move v2, v1

    goto :goto_2

    :pswitch_4
    const-string v0, "net"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/loc/di;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    const-class v4, Lcom/loc/dj;

    monitor-enter v4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/de;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 1000
    :cond_1
    :try_start_1
    iget-object v5, p1, Lcom/loc/di;->c:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 2000
    iget-wide v6, p1, Lcom/loc/di;->a:J

    .line 3000
    iget-wide v8, p1, Lcom/loc/di;->b:J

    .line 0
    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v6

    const-string v0, "net"

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getNetUseTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLocationType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "param_int_first"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "param_int_second"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "O003"

    invoke-static {p0, v2, v1}, Lcom/loc/dj;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "param_int_first"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "param_string_first"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "O002"

    invoke-static {p0, v0, v1}, Lcom/loc/dj;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ReportUtil"

    const-string v2, "reportLBSLocUseTime"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :pswitch_1
    move v2, v1

    goto :goto_1

    :pswitch_2
    :try_start_3
    const-string v0, "cache"

    move v1, v2

    goto :goto_1

    :pswitch_3
    const-string v0, "net"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 0
    const-class v1, Lcom/loc/dj;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/loc/bv;

    const-string v2, "loc"

    const-string v3, "2.8.0"

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/loc/bv;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6000
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v0, Lcom/loc/h;

    const-string v2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v2}, Lcom/loc/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ReportUtil"

    const-string v3, "applyStatistics"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    .line 6000
    :cond_1
    :try_start_2
    iput-object v2, v0, Lcom/loc/bv;->a:Ljava/lang/String;

    .line 0
    invoke-static {v0, p0}, Lcom/loc/bw;->a(Lcom/loc/bv;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/loc/dj;

    monitor-enter v1

    :try_start_0
    const-string v0, "loc"

    const-string v2, "2.8.0"

    invoke-static {v0, v2}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/loc/ey;->b(Lcom/loc/eo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ReportUtil"

    const-string v3, "reportLog"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/loc/di;)V
    .locals 6

    .prologue
    .line 0
    const-class v1, Lcom/loc/dj;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/de;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 4000
    :cond_1
    :try_start_1
    iget-wide v2, p1, Lcom/loc/di;->a:J

    .line 5000
    iget-wide v4, p1, Lcom/loc/di;->b:J

    .line 0
    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "param_int_first"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "O004"

    invoke-static {p0, v0, v2}, Lcom/loc/dj;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "ReportUtil"

    const-string v3, "reportGPSLocUseTime"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
