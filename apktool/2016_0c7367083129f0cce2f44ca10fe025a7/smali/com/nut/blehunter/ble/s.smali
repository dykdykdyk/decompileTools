.class final Lcom/nut/blehunter/ble/s;
.super Ljava/lang/Object;
.source "NutDeviceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ble/r;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ble/r;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/nut/blehunter/ble/s;->a:Lcom/nut/blehunter/ble/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/nut/blehunter/ble/s;->a:Lcom/nut/blehunter/ble/r;

    invoke-static {v0}, Lcom/nut/blehunter/ble/r;->a(Lcom/nut/blehunter/ble/r;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/ble/s;->a:Lcom/nut/blehunter/ble/r;

    invoke-static {v0}, Lcom/nut/blehunter/ble/r;->a(Lcom/nut/blehunter/ble/r;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 493
    :goto_0
    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/nut/blehunter/ble/s;->a:Lcom/nut/blehunter/ble/r;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ble/r;->a(Z)V

    .line 496
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 492
    goto :goto_0
.end method
