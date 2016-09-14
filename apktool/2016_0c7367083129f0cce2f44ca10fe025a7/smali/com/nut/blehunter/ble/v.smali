.class final Lcom/nut/blehunter/ble/v;
.super Landroid/os/Handler;
.source "NutDeviceController.java"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nut/blehunter/ble/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ble/r;)V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nut/blehunter/ble/v;->a:Ljava/lang/ref/WeakReference;

    .line 156
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v0, p0, Lcom/nut/blehunter/ble/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/ble/r;

    .line 161
    if-nez v0, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 167
    :pswitch_0
    const-string v1, "DeviceController timeout:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ble/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0, v4}, Lcom/nut/blehunter/ble/r;->a(Z)V

    goto :goto_0

    .line 1719
    :pswitch_1
    iget v1, v0, Lcom/nut/blehunter/ble/r;->m:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_3

    .line 1720
    :cond_2
    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    iget v1, v0, Lcom/nut/blehunter/ble/r;->m:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 1721
    invoke-virtual {v0, v4}, Lcom/nut/blehunter/ble/r;->a(Z)V

    goto :goto_0

    .line 1726
    :cond_3
    iget-object v1, v0, Lcom/nut/blehunter/ble/r;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1727
    const-string v1, "read rssi failed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1728
    invoke-virtual {v0, v4}, Lcom/nut/blehunter/ble/r;->a(Z)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
