.class final Lcom/nut/blehunter/ble/e;
.super Ljava/lang/Object;
.source "BLEService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ble/BLEService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ble/BLEService;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nut/blehunter/ble/e;->a:Lcom/nut/blehunter/ble/BLEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-static {p3}, Lcom/nut/blehunter/ble/af;->a([B)Lcom/nut/blehunter/ble/af;

    move-result-object v3

    .line 111
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v4, "device name %s mac address %s is found rssi is %d service %s deviceId is %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 1164
    iget-object v6, v3, Lcom/nut/blehunter/ble/af;->d:Ljava/lang/String;

    .line 112
    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 2111
    iget-object v6, v3, Lcom/nut/blehunter/ble/af;->b:Ljava/util/List;

    .line 112
    aput-object v6, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    iget-object v4, v3, Lcom/nut/blehunter/ble/af;->d:Ljava/lang/String;

    .line 116
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "nut"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3128
    :cond_1
    iget-object v0, v3, Lcom/nut/blehunter/ble/af;->c:Landroid/util/SparseArray;

    const/16 v4, 0x59

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 118
    if-eqz v0, :cond_5

    .line 3169
    array-length v4, v0

    if-ne v4, v9, :cond_4

    .line 3170
    aget-byte v4, v0, v1

    shl-int/lit8 v4, v4, 0x18

    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aget-byte v5, v0, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v4

    .line 4111
    :goto_0
    iget-object v3, v3, Lcom/nut/blehunter/ble/af;->b:Ljava/util/List;

    .line 121
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v5, "device"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 123
    const-string v5, "rssi"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v5, "device_name"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v0, "dfu_mode"

    if-eqz v3, :cond_2

    sget-object v5, Lcom/nut/blehunter/ble/aj;->l:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    iget-object v0, p0, Lcom/nut/blehunter/ble/e;->a:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v0}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/BLEService;)Lcom/nut/blehunter/ble/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/ble/l;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 131
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 132
    iget-object v1, p0, Lcom/nut/blehunter/ble/e;->a:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v1}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/BLEService;)Lcom/nut/blehunter/ble/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ble/l;->sendMessage(Landroid/os/Message;)Z

    .line 134
    :cond_3
    return-void

    .line 3172
    :cond_4
    array-length v4, v0

    if-ne v4, v7, :cond_5

    .line 3173
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    .line 3176
    goto :goto_0
.end method
