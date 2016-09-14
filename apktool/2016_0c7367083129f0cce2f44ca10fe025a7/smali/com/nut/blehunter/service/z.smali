.class final Lcom/nut/blehunter/service/z;
.super Landroid/os/Handler;
.source "NutTrackerService.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nut/blehunter/service/NutTrackerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nut/blehunter/service/z;->a:Ljava/lang/ref/WeakReference;

    .line 262
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 266
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 267
    iget-object v0, p0, Lcom/nut/blehunter/service/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/service/NutTrackerService;

    .line 268
    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 1276
    if-nez v5, :cond_1

    const/4 v1, 0x0

    move-object v2, v1

    .line 1277
    :goto_0
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v6

    .line 1281
    if-eqz v6, :cond_0

    .line 1284
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1375
    :cond_0
    :goto_1
    return-void

    .line 1276
    :cond_1
    const-string v1, "device_id"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 1815
    :sswitch_0
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 1816
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1817
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 1286
    :goto_2
    if-eqz v1, :cond_0

    .line 1289
    iget v1, v6, Lcom/nut/blehunter/entity/Nut;->y:I

    if-nez v1, :cond_2

    .line 1290
    invoke-static {v0}, Lcom/nut/blehunter/d/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1291
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->c:Ljava/util/Map;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    :cond_2
    :goto_3
    iget-object v1, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;)V

    .line 1308
    const-string v1, "disconnect"

    .line 3281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1309
    const-string v0, "NTNutEvent"

    const-string v1, "NUT_DISCONNECTED"

    const-string v2, "DEVICEID"

    iget-object v3, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v4

    .line 1817
    goto :goto_2

    .line 1292
    :cond_4
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/nut/blehunter/d/l;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->a:Lcom/nut/blehunter/service/a;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    .line 2091
    iget-object v5, v1, Lcom/nut/blehunter/service/a;->b:Ljava/util/Map;

    if-eqz v5, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    move v3, v4

    .line 1292
    :cond_6
    :goto_4
    if-nez v3, :cond_2

    .line 1299
    iget v1, v6, Lcom/nut/blehunter/entity/Nut;->D:I

    iget v2, v6, Lcom/nut/blehunter/entity/Nut;->u:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/nut/blehunter/service/NutTrackerService;->a(IIZ)V

    .line 1300
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->a:Lcom/nut/blehunter/service/a;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Lcom/nut/blehunter/service/a;->a(ILjava/lang/String;)V

    .line 1301
    iget v1, v6, Lcom/nut/blehunter/entity/Nut;->I:I

    invoke-virtual {v0, v8, v1, v6}, Lcom/nut/blehunter/service/NutTrackerService;->a(IILcom/nut/blehunter/entity/Nut;)V

    .line 1302
    const-string v1, "disconnect_alert"

    .line 2281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1303
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->d:Ljava/util/Map;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2094
    :cond_7
    iget-object v1, v1, Lcom/nut/blehunter/service/a;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 2095
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_8
    move v3, v4

    goto :goto_4

    .line 1313
    :sswitch_1
    const-string v1, "oauth_result"

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1314
    const-string v7, "previous_nut_status"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1315
    if-eqz v1, :cond_0

    .line 1316
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v1}, Lcom/nut/blehunter/ble/a;->b()V

    .line 1317
    iget v1, v6, Lcom/nut/blehunter/entity/Nut;->y:I

    if-nez v1, :cond_a

    .line 1319
    if-eq v5, v8, :cond_9

    if-ne v5, v10, :cond_b

    .line 1320
    :cond_9
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v1}, Lcom/nut/blehunter/ble/a;->c()V

    .line 1321
    const/4 v1, 0x4

    iget v3, v6, Lcom/nut/blehunter/entity/Nut;->I:I

    invoke-virtual {v0, v1, v3, v6}, Lcom/nut/blehunter/service/NutTrackerService;->a(IILcom/nut/blehunter/entity/Nut;)V

    .line 1343
    :cond_a
    :goto_5
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v1

    iget-object v3, v6, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/nut/blehunter/provider/k;->d(Ljava/lang/String;)V

    .line 1344
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1345
    const-string v3, "device_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v2, "open_disconnect_alert"

    invoke-virtual {v6, v0}, Lcom/nut/blehunter/entity/Nut;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1348
    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(ILandroid/os/Bundle;)V

    .line 1350
    iput v4, v6, Lcom/nut/blehunter/entity/Nut;->F:I

    .line 1351
    iput v4, v6, Lcom/nut/blehunter/entity/Nut;->G:I

    .line 1352
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 1353
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->c:Ljava/util/Map;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    iget-object v1, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/service/NutTrackerService;->a(Ljava/lang/String;)V

    .line 1355
    const-string v1, "reconnect"

    .line 5281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1356
    const-string v1, "NTNutEvent"

    const-string v2, "NUT_RECONNECTED"

    const-string v3, "DEVICEID"

    iget-object v4, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->d:Ljava/util/Map;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1359
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->d:Ljava/util/Map;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 1361
    const-string v1, "reconnect_within_10_seconds"

    .line 6281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1327
    :cond_b
    iget v1, v6, Lcom/nut/blehunter/entity/Nut;->t:I

    if-ne v1, v3, :cond_a

    invoke-static {v0}, Lcom/nut/blehunter/d/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Lcom/nut/blehunter/d/l;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->e()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->a:Lcom/nut/blehunter/service/a;

    iget-object v5, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    .line 4075
    iget-object v7, v1, Lcom/nut/blehunter/service/a;->a:Ljava/util/Map;

    if-eqz v7, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    move v1, v4

    .line 1327
    :goto_6
    if-nez v1, :cond_a

    .line 1332
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->b:Lcom/nut/blehunter/ble/a;

    invoke-virtual {v1}, Lcom/nut/blehunter/ble/a;->c()V

    .line 1333
    iget-object v1, v0, Lcom/nut/blehunter/service/NutTrackerService;->a:Lcom/nut/blehunter/service/a;

    iget-object v5, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lcom/nut/blehunter/service/a;->a(ILjava/lang/String;)V

    .line 1334
    iget v1, v6, Lcom/nut/blehunter/entity/Nut;->I:I

    invoke-virtual {v0, v3, v1, v6}, Lcom/nut/blehunter/service/NutTrackerService;->a(IILcom/nut/blehunter/entity/Nut;)V

    .line 1340
    const-string v1, "reconnect_alert"

    .line 4281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4078
    :cond_d
    iget-object v1, v1, Lcom/nut/blehunter/service/a;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 4079
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_6

    :cond_e
    move v1, v4

    goto :goto_6

    .line 1368
    :sswitch_2
    const/16 v1, -0x4b

    .line 1369
    const-string v2, "rssi"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1370
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v5

    iget v7, v6, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v5, v7}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v5

    .line 1371
    if-eqz v5, :cond_f

    iget v7, v5, Lcom/nut/blehunter/entity/t;->g:I

    if-eqz v7, :cond_f

    .line 1372
    iget v1, v5, Lcom/nut/blehunter/entity/t;->g:I

    .line 1374
    :cond_f
    iget-object v5, v0, Lcom/nut/blehunter/service/NutTrackerService;->a:Lcom/nut/blehunter/service/a;

    iget-object v6, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    if-le v2, v1, :cond_10

    move v0, v3

    .line 7067
    :goto_7
    if-eqz v0, :cond_0

    .line 7068
    invoke-virtual {v5, v3, v6}, Lcom/nut/blehunter/service/a;->b(ILjava/lang/String;)V

    .line 7069
    invoke-virtual {v5, v8, v6}, Lcom/nut/blehunter/service/a;->b(ILjava/lang/String;)V

    .line 7070
    invoke-virtual {v5, v9, v6}, Lcom/nut/blehunter/service/a;->b(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    move v0, v4

    .line 1374
    goto :goto_7

    .line 1392
    :sswitch_3
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v3}, Lcom/nut/blehunter/service/NutTrackerService;->a(IIZ)V

    .line 1393
    const-string v1, "call_the_phone"

    .line 7281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1394
    iget v1, v6, Lcom/nut/blehunter/entity/Nut;->I:I

    invoke-virtual {v0, v10, v1, v6}, Lcom/nut/blehunter/service/NutTrackerService;->a(IILcom/nut/blehunter/entity/Nut;)V

    goto/16 :goto_1

    .line 1284
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0x13 -> :sswitch_0
        0x15 -> :sswitch_3
    .end sparse-switch
.end method
