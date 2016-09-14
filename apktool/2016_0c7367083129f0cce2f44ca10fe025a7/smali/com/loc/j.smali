.class public final Lcom/loc/j;
.super Landroid/os/Handler;
.source "AMapLocationManager.java"


# instance fields
.field a:Lcom/loc/a;


# direct methods
.method public constructor <init>(Lcom/loc/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iput-object p1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    return-void
.end method

.method public constructor <init>(Lcom/loc/a;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iput-object p1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->e(Lcom/loc/a;)I

    if-eqz v2, :cond_6

    const-class v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "location"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v3, p0, Lcom/loc/j;->a:Lcom/loc/a;

    const-string v4, "originalLocType"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v3, v2}, Lcom/loc/a;->b(Lcom/loc/a;I)I

    invoke-static {v0}, Lcom/loc/cr;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_5

    :try_start_1
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string v0, ""

    invoke-direct {v1, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_10

    const/16 v0, 0x8

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_11

    move-object v0, v1

    :goto_1
    :try_start_3
    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_12

    :goto_2
    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v1, v0}, Lcom/loc/a;->a(Lcom/loc/a;Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    const-string v2, "AMapLocationManager$MHandler"

    const-string v3, "handleMessage LBS_LOCATIONSUCCESS"

    invoke-static {v1, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/loc/a;->b(Lcom/loc/a;I)I

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v1}, Lcom/loc/a;->f(Lcom/loc/a;)I

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/loc/a;->n:J

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/loc/a;->m:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_f

    :cond_2
    move-object v1, v0

    :goto_4
    :try_start_6
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->i:Landroid/os/Messenger;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/loc/a;->a(Lcom/loc/a;I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v0, v1}, Lcom/loc/a;->a(Lcom/loc/a;Lcom/amap/api/location/AMapLocation;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_6
    const-string v2, "AMapLocationManager$MHandler"

    const-string v3, "handleMessage GPS_LOCATIONSUCCESS"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v2, "AMapLocationManager$MHandler"

    const-string v3, "MHandler:handleMessage GPS_LOCATIONSUCCESS:NGPS"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_2
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/a;->n:J

    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iput-boolean v4, v0, Lcom/loc/a;->m:Z

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iput-boolean v2, v0, Lcom/loc/a;->m:Z

    goto/16 :goto_0

    :sswitch_4
    :try_start_7
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->g(Lcom/loc/a;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage FASTSKY"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    :try_start_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->i:Landroid/os/Messenger;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    const/4 v2, 0x0

    iput v2, v1, Lcom/loc/a;->l:I

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->i:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage START_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_9
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget v1, v0, Lcom/loc/a;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/a;->l:I

    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget v0, v0, Lcom/loc/a;->l:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget-object v0, v0, Lcom/loc/a;->b:Lcom/loc/j;

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/j;->sendEmptyMessageDelayed(IJ)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :sswitch_6
    :try_start_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->i:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->i:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage STOP_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    :try_start_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v1, v0}, Lcom/loc/a;->a(Lcom/loc/a;Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage START_SERVICE"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    :try_start_c
    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Lcom/loc/a;->a(Lcom/loc/a;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v1, "AMapLocationManage$MHandlerr"

    const-string v2, "handleMessage SET_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    :try_start_d
    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Lcom/loc/a;->b(Lcom/loc/a;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage REMOVE_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    :try_start_e
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->h(Lcom/loc/a;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage START_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    :try_start_f
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->i(Lcom/loc/a;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage STOP_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    :try_start_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/fence/Fence;

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v1, v0}, Lcom/loc/a;->a(Lcom/loc/a;Lcom/amap/api/fence/Fence;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage ADD_GEOFENCE"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_d
    :try_start_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v1, v0}, Lcom/loc/a;->a(Lcom/loc/a;Landroid/app/PendingIntent;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage REMOVE_GEOFENCE"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    :try_start_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/fence/Fence;

    iget-object v1, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v1, v0}, Lcom/loc/a;->b(Lcom/loc/a;Lcom/amap/api/fence/Fence;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_d

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage REMOVE_GEOFENCE_ONE"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    :try_start_13
    iget-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;

    invoke-static {v0}, Lcom/loc/a;->j(Lcom/loc/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/j;->a:Lcom/loc/a;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e

    goto/16 :goto_0

    :catch_e
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage DESTROY"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_f
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6

    :catch_10
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_3

    :catch_11
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_3

    :catch_12
    move-exception v1

    goto/16 :goto_3

    :cond_5
    move-object v0, v2

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x64 -> :sswitch_4
        0x67 -> :sswitch_7
        0x3ea -> :sswitch_8
        0x3eb -> :sswitch_a
        0x3ec -> :sswitch_b
        0x3ed -> :sswitch_9
        0x3ee -> :sswitch_c
        0x3ef -> :sswitch_d
        0x3f0 -> :sswitch_5
        0x3f1 -> :sswitch_6
        0x3f2 -> :sswitch_e
        0x3f3 -> :sswitch_f
    .end sparse-switch
.end method
