.class final Lcom/nut/blehunter/ble/h;
.super Ljava/lang/Object;
.source "BLEService.java"

# interfaces
.implements Lcom/nut/blehunter/ble/aa;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ble/BLEService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ble/BLEService;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/nut/blehunter/ble/h;->a:Lcom/nut/blehunter/ble/BLEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/ble/r;Z)V
    .locals 3

    .prologue
    .line 508
    if-eqz p2, :cond_1

    .line 1309
    iget-object v0, p1, Lcom/nut/blehunter/ble/r;->a:Landroid/bluetooth/BluetoothDevice;

    .line 509
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/d/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 512
    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->J:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 513
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/l;->i(Ljava/lang/String;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ble/h;->a:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v0}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/BLEService;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_1
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/BLEService;->d(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 519
    const-string v2, "delete_result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 520
    iget-object v1, p0, Lcom/nut/blehunter/ble/h;->a:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/BLEService;Landroid/os/Message;)V

    .line 521
    return-void
.end method
