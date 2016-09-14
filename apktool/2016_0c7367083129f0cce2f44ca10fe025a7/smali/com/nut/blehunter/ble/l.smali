.class final Lcom/nut/blehunter/ble/l;
.super Landroid/os/Handler;
.source "BLEService.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nut/blehunter/ble/BLEService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ble/BLEService;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/l;->a:Ljava/lang/ref/WeakReference;

    .line 147
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/4 v4, 0x4

    const/16 v5, 0x2ee0

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 152
    iget-object v1, p0, Lcom/nut/blehunter/ble/l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/ble/BLEService;

    .line 153
    if-eqz v1, :cond_0

    .line 1160
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 1161
    if-nez v8, :cond_1

    move-object v6, v0

    .line 1163
    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 9381
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 1161
    :cond_1
    const-string v2, "device_id"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    .line 1165
    :pswitch_1
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->c:Ljava/util/List;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1169
    :pswitch_2
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->c:Ljava/util/List;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1173
    :pswitch_3
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->a()V

    .line 1174
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->d()V

    .line 1886
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    move v2, v3

    .line 1887
    :goto_2
    if-ge v2, v4, :cond_2

    .line 1888
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 1889
    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1887
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1891
    :cond_2
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 2138
    iput v3, v1, Lcom/nut/blehunter/ble/BLEService;->g:I

    .line 1177
    iput-boolean v3, v1, Lcom/nut/blehunter/ble/BLEService;->h:Z

    .line 4016
    const-string v0, "ble"

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3044
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 1182
    :pswitch_4
    if-nez v8, :cond_3

    move v0, v3

    .line 1183
    :goto_3
    if-nez v8, :cond_4

    :goto_4
    iput v3, v1, Lcom/nut/blehunter/ble/BLEService;->i:I

    .line 1185
    const-string v2, "connect_type"

    iget v3, v1, Lcom/nut/blehunter/ble/BLEService;->i:I

    invoke-static {v1, v2, v3}, Lcom/nut/blehunter/ble/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1186
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->a()V

    .line 4578
    const-string v2, "manually_scan"

    invoke-static {v1, v2, v7}, Lcom/nut/blehunter/ble/o;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4579
    iput-boolean v7, v1, Lcom/nut/blehunter/ble/BLEService;->h:Z

    .line 4580
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->a(I)V

    goto :goto_1

    .line 1182
    :cond_3
    const-string v0, "scan_period"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 1183
    :cond_4
    const-string v2, "bind_type"

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 1191
    :pswitch_5
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->c()V

    .line 5138
    const/4 v0, 0x2

    iput v0, v1, Lcom/nut/blehunter/ble/BLEService;->g:I

    .line 1193
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5553
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->a()V

    .line 5554
    invoke-virtual {v1, v5}, Lcom/nut/blehunter/ble/BLEService;->a(I)V

    goto/16 :goto_1

    .line 1200
    :pswitch_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6422
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    if-nez v0, :cond_5

    .line 6423
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nut/blehunter/d/q;->b(J)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 6425
    const-string v0, "current_product_id"

    invoke-static {v1, v0}, Lcom/nut/blehunter/ble/o;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 6427
    new-instance v0, Lcom/nut/blehunter/ble/r;

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/ble/r;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZLcom/nut/blehunter/ble/t;I)V

    iput-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    .line 6428
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/r;)V

    goto/16 :goto_1

    .line 6431
    :cond_5
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    .line 7341
    iget-object v0, v0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    .line 6431
    check-cast v0, Lcom/nut/blehunter/ble/ag;

    .line 6433
    if-eqz v0, :cond_0

    .line 6436
    new-instance v2, Lcom/nut/blehunter/ble/f;

    invoke-direct {v2, v1, v6}, Lcom/nut/blehunter/ble/f;-><init>(Lcom/nut/blehunter/ble/BLEService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ble/ag;->a(Lcom/nut/blehunter/ble/ah;)V

    goto/16 :goto_1

    .line 1206
    :pswitch_7
    if-eqz v8, :cond_6

    const-string v0, "call"

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v7

    .line 1208
    :goto_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7496
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 7497
    if-eqz v0, :cond_0

    .line 7776
    sget-object v1, Lcom/nut/blehunter/ble/aj;->k:Ljava/util/UUID;

    sget-object v5, Lcom/nut/blehunter/ble/aj;->m:Ljava/util/UUID;

    invoke-virtual {v0, v1, v5}, Lcom/nut/blehunter/ble/r;->a(Ljava/util/UUID;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 7778
    if-eqz v5, :cond_0

    .line 7781
    if-eqz v2, :cond_7

    move v1, v4

    :goto_6
    invoke-static {v5, v1}, Lcom/nut/blehunter/ble/r;->a(Landroid/bluetooth/BluetoothGattCharacteristic;B)V

    .line 7783
    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 7784
    const-string v1, "Device Immediate Alert value=%s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 1206
    goto :goto_5

    .line 7781
    :cond_7
    const/4 v1, 0x5

    goto :goto_6

    .line 8527
    :pswitch_8
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->i()Ljava/util/List;

    move-result-object v0

    .line 8528
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 8531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/nut/blehunter/entity/Nut;

    .line 8532
    iget-object v0, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 8534
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/q;->b(J)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 8537
    new-instance v0, Lcom/nut/blehunter/ble/r;

    iget v5, v6, Lcom/nut/blehunter/entity/Nut;->p:I

    move v3, v7

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/ble/r;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZLcom/nut/blehunter/ble/t;I)V

    .line 9333
    iput-boolean v7, v0, Lcom/nut/blehunter/ble/r;->q:Z

    .line 8540
    iget-object v2, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v3, v6, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1218
    :pswitch_9
    if-eqz v8, :cond_0

    .line 1221
    const-string v2, "device"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1222
    const-string v2, "rssi"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1223
    const-string v4, "device_name"

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1224
    const-string v4, "dfu_mode"

    invoke-virtual {v8, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1225
    if-eqz v6, :cond_0

    .line 9358
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 9359
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v11

    .line 9360
    if-eqz v4, :cond_9

    .line 9361
    if-eqz v11, :cond_0

    iget v2, v11, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 9362
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/nut/blehunter/provider/l;->h(Ljava/lang/String;)V

    .line 9363
    const/16 v2, 0x1e

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 9364
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9365
    const-string v3, "device_id"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9366
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 9367
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 9372
    :cond_9
    if-nez v11, :cond_b

    .line 9373
    iget-boolean v3, v1, Lcom/nut/blehunter/ble/BLEService;->h:Z

    if-eqz v3, :cond_a

    .line 9374
    const/16 v3, 0x10

    invoke-static {v0, v3}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    .line 9375
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 9376
    const-string v4, "device"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9377
    const-string v4, "rssi"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9378
    const-string v2, "device_name"

    invoke-virtual {v3, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9379
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 9489
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9490
    const-string v2, "com.nutspace.action.found.device"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9491
    const-string v2, "device"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9492
    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 9384
    :cond_b
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v10}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 9385
    if-eqz v0, :cond_c

    .line 9386
    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 9387
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v10}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9389
    :cond_c
    iget v0, v11, Lcom/nut/blehunter/entity/Nut;->K:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_d

    .line 9390
    iput v3, v11, Lcom/nut/blehunter/entity/Nut;->K:I

    .line 9391
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0, v11, v7}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 9394
    :cond_d
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v10}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 9395
    if-nez v0, :cond_1b

    .line 9396
    new-instance v4, Lcom/nut/blehunter/ble/r;

    move-object v5, v1

    move-object v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/nut/blehunter/ble/r;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZLcom/nut/blehunter/ble/t;I)V

    .line 9398
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v10, v4}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9401
    :goto_8
    iget v0, v11, Lcom/nut/blehunter/entity/Nut;->y:I

    if-ne v0, v7, :cond_e

    .line 10287
    iget-boolean v0, v4, Lcom/nut/blehunter/ble/r;->r:Z

    .line 9401
    if-eqz v0, :cond_0

    .line 9405
    :cond_e
    iget-boolean v0, v1, Lcom/nut/blehunter/ble/BLEService;->h:Z

    if-nez v0, :cond_0

    .line 9406
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->a()V

    .line 11255
    iput v9, v4, Lcom/nut/blehunter/ble/r;->p:I

    .line 11271
    iget-boolean v0, v4, Lcom/nut/blehunter/ble/r;->w:Z

    .line 9408
    if-eqz v0, :cond_f

    .line 9409
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v0

    .line 9410
    if-eqz v0, :cond_f

    .line 9411
    iget v0, v0, Lcom/nut/blehunter/entity/t;->j:I

    .line 12267
    iput v0, v4, Lcom/nut/blehunter/ble/r;->v:I

    .line 12275
    iput-boolean v3, v4, Lcom/nut/blehunter/ble/r;->w:Z

    .line 9415
    :cond_f
    invoke-virtual {v1, v4}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/r;)V

    goto/16 :goto_1

    .line 1231
    :pswitch_a
    if-eqz v8, :cond_10

    const-string v0, "is_reset"

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move v0, v7

    .line 1233
    :goto_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1234
    if-eqz v0, :cond_12

    .line 12503
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 12504
    if-eqz v0, :cond_0

    .line 12505
    new-instance v2, Lcom/nut/blehunter/ble/h;

    invoke-direct {v2, v1}, Lcom/nut/blehunter/ble/h;-><init>(Lcom/nut/blehunter/ble/BLEService;)V

    .line 12806
    iput-object v2, v0, Lcom/nut/blehunter/ble/r;->d:Lcom/nut/blehunter/ble/aa;

    .line 12807
    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    instance-of v1, v1, Lcom/nut/blehunter/ble/ag;

    if-eqz v1, :cond_0

    .line 12808
    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    check-cast v1, Lcom/nut/blehunter/ble/ag;

    .line 13340
    iput-boolean v7, v1, Lcom/nut/blehunter/ble/ag;->c:Z

    .line 13341
    invoke-static {}, Lcom/nut/blehunter/ble/d;->a()[B

    move-result-object v2

    .line 13342
    invoke-virtual {v1, v4, v2}, Lcom/nut/blehunter/ble/ag;->a(B[B)Z

    move-result v1

    .line 12809
    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->d:Lcom/nut/blehunter/ble/aa;

    if-eqz v1, :cond_0

    .line 12810
    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->d:Lcom/nut/blehunter/ble/aa;

    invoke-interface {v1, v0, v3}, Lcom/nut/blehunter/ble/aa;->a(Lcom/nut/blehunter/ble/r;Z)V

    goto/16 :goto_1

    :cond_11
    move v0, v3

    .line 1231
    goto :goto_9

    .line 1237
    :cond_12
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 1238
    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {v0, v7}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 1240
    iget-object v1, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1247
    :pswitch_b
    if-eqz v8, :cond_13

    const-string v0, "open_disconnect_alert"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1249
    :goto_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13546
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 13547
    if-eqz v0, :cond_0

    .line 13548
    invoke-virtual {v0, v7}, Lcom/nut/blehunter/ble/r;->b(Z)V

    goto/16 :goto_1

    :cond_13
    move v7, v3

    .line 1247
    goto :goto_a

    .line 1255
    :pswitch_c
    if-eqz v8, :cond_15

    const-string v2, "shutdown"

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v7

    .line 1257
    :goto_b
    if-eqz v8, :cond_16

    const-string v4, "close_manually_scan"

    invoke-virtual {v8, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1260
    :goto_c
    if-eqz v7, :cond_14

    .line 1261
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->c()V

    .line 1263
    :cond_14
    const-string v4, "abort bind device"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    iget-object v4, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    if-eqz v4, :cond_0

    .line 1265
    if-eqz v2, :cond_17

    .line 1266
    iget-object v2, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    invoke-virtual {v2}, Lcom/nut/blehunter/ble/r;->b()V

    .line 1270
    :goto_d
    if-eqz v7, :cond_0

    .line 1271
    iput-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    goto/16 :goto_1

    :cond_15
    move v2, v3

    .line 1255
    goto :goto_b

    :cond_16
    move v7, v3

    .line 1257
    goto :goto_c

    .line 1268
    :cond_17
    iget-object v2, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ble/r;->a(Z)V

    goto :goto_d

    .line 1277
    :pswitch_d
    if-eqz v8, :cond_0

    .line 1280
    const-string v0, "device"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1281
    const-string v0, "device_name"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1282
    new-instance v0, Lcom/nut/blehunter/ble/r;

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/ble/r;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZLcom/nut/blehunter/ble/t;I)V

    iput-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    .line 1284
    invoke-virtual {v1, v3}, Lcom/nut/blehunter/ble/BLEService;->a(Z)V

    .line 1285
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->e:Lcom/nut/blehunter/ble/r;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/r;)V

    goto/16 :goto_1

    .line 1289
    :pswitch_e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 1293
    if-eqz v0, :cond_0

    .line 13816
    iget-object v2, v0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    if-eqz v2, :cond_0

    .line 13817
    iget-object v0, v0, Lcom/nut/blehunter/ble/r;->f:Lcom/nut/blehunter/ble/ac;

    check-cast v0, Lcom/nut/blehunter/ble/ag;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/ag;->a(Lcom/nut/blehunter/ble/ab;)V

    goto/16 :goto_1

    .line 1299
    :pswitch_f
    if-eqz v8, :cond_18

    const-string v0, "look_for_canceled"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1300
    :goto_e
    invoke-virtual {v1, v7}, Lcom/nut/blehunter/ble/BLEService;->b(Z)V

    goto/16 :goto_1

    :cond_18
    move v7, v3

    .line 1299
    goto :goto_e

    .line 1304
    :pswitch_10
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/nut/blehunter/d/q;->b(J)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1307
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v3

    .line 1308
    new-instance v0, Lcom/nut/blehunter/ble/r;

    iget v5, v3, Lcom/nut/blehunter/entity/Nut;->p:I

    move v3, v7

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/nut/blehunter/ble/r;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZLcom/nut/blehunter/ble/t;I)V

    .line 14333
    iput-boolean v7, v0, Lcom/nut/blehunter/ble/r;->q:Z

    .line 1311
    iget-object v1, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v6, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1316
    :pswitch_11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 1319
    if-eqz v0, :cond_0

    .line 1320
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 1321
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    if-eqz v2, :cond_0

    .line 1322
    iget-object v2, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget-object v2, v2, Lcom/nut/blehunter/entity/WechatIdentifier;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget v3, v3, Lcom/nut/blehunter/entity/WechatIdentifier;->b:I

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iget v1, v1, Lcom/nut/blehunter/entity/WechatIdentifier;->c:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1331
    :pswitch_12
    invoke-virtual {v1, v7}, Lcom/nut/blehunter/ble/BLEService;->a(Z)V

    .line 14622
    iget-boolean v0, v1, Lcom/nut/blehunter/ble/BLEService;->h:Z

    if-nez v0, :cond_0

    .line 14623
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->b()V

    .line 14625
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 14626
    invoke-static {v1}, Lcom/nut/blehunter/d/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v5

    .line 14634
    :goto_f
    const-string v2, "schedule next scan after %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14638
    iget-object v2, v1, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_0

    .line 14639
    iget-object v2, v1, Lcom/nut/blehunter/ble/BLEService;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, v1, Lcom/nut/blehunter/ble/BLEService;->f:Lcom/nut/blehunter/ble/m;

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->k:Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_1

    .line 14629
    :cond_19
    const/16 v0, 0xfa0

    goto :goto_f

    .line 14632
    :cond_1a
    const v0, 0x493e0

    goto :goto_f

    .line 1336
    :pswitch_13
    invoke-virtual {v1, v5}, Lcom/nut/blehunter/ble/BLEService;->a(I)V

    goto/16 :goto_1

    .line 14875
    :pswitch_14
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->b:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14876
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 14877
    if-eqz v0, :cond_0

    .line 15305
    iget v2, v0, Lcom/nut/blehunter/ble/r;->m:I

    .line 14877
    if-nez v2, :cond_0

    .line 15337
    iget-boolean v2, v0, Lcom/nut/blehunter/ble/r;->q:Z

    .line 14877
    if-nez v2, :cond_0

    .line 16325
    iput-boolean v3, v0, Lcom/nut/blehunter/ble/r;->o:Z

    .line 16333
    iput-boolean v7, v0, Lcom/nut/blehunter/ble/r;->q:Z

    .line 14881
    const/16 v2, 0x13

    invoke-static {v0, v2}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1344
    :pswitch_15
    invoke-virtual {v1}, Lcom/nut/blehunter/ble/BLEService;->a()V

    goto/16 :goto_1

    .line 1348
    :pswitch_16
    iget-object v0, v1, Lcom/nut/blehunter/ble/BLEService;->a:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 1349
    if-eqz v0, :cond_0

    .line 16952
    iput-object v1, v0, Lcom/nut/blehunter/ble/r;->e:Lcom/nut/blehunter/ble/x;

    .line 16953
    new-array v1, v7, [B

    const/16 v2, 0x1c

    aput-byte v2, v1, v3

    .line 16954
    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/r;->a([B)V

    goto/16 :goto_1

    :cond_1b
    move-object v4, v0

    goto/16 :goto_8

    .line 1163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method
