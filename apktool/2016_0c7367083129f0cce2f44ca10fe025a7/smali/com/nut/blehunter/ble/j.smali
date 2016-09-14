.class final Lcom/nut/blehunter/ble/j;
.super Ljava/lang/Object;
.source "BLEService.java"

# interfaces
.implements Lcom/nut/blehunter/ble/y;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ble/r;

.field final synthetic b:Lcom/nut/blehunter/ble/BLEService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ble/BLEService;Lcom/nut/blehunter/ble/r;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/nut/blehunter/ble/j;->b:Lcom/nut/blehunter/ble/BLEService;

    iput-object p2, p0, Lcom/nut/blehunter/ble/j;->a:Lcom/nut/blehunter/ble/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    .line 982
    iget-object v0, p0, Lcom/nut/blehunter/ble/j;->b:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v0}, Lcom/nut/blehunter/ble/BLEService;->e(Lcom/nut/blehunter/ble/BLEService;)Lcom/nut/blehunter/ble/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ble/j;->a:Lcom/nut/blehunter/ble/r;

    .line 1309
    iget-object v1, v1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 982
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    .line 2032
    const-wide/16 v4, -0x78

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 2033
    :cond_0
    const-string v4, "Abnormal Value device=%s rssi=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2034
    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->a:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2035
    iget-object v0, v0, Lcom/nut/blehunter/ble/ae;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 984
    :goto_0
    iget-object v1, p0, Lcom/nut/blehunter/ble/j;->a:Lcom/nut/blehunter/ble/r;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/nut/blehunter/ble/BLEService;->d(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v1

    .line 985
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 986
    const-string v3, "rssi"

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 987
    iget-object v0, p0, Lcom/nut/blehunter/ble/j;->b:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/BLEService;Landroid/os/Message;)V

    .line 988
    return-void

    .line 2037
    :cond_1
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, -0x32

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 2040
    :cond_2
    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/ble/ae;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2041
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method
