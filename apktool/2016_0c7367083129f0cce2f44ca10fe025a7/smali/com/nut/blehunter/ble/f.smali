.class final Lcom/nut/blehunter/ble/f;
.super Ljava/lang/Object;
.source "BLEService.java"

# interfaces
.implements Lcom/nut/blehunter/ble/ah;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nut/blehunter/ble/BLEService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ble/BLEService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/nut/blehunter/ble/f;->b:Lcom/nut/blehunter/ble/BLEService;

    iput-object p2, p0, Lcom/nut/blehunter/ble/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/ble/r;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 439
    iget-object v0, p0, Lcom/nut/blehunter/ble/f;->b:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v0}, Lcom/nut/blehunter/ble/BLEService;->b(Lcom/nut/blehunter/ble/BLEService;)V

    .line 440
    if-eqz p2, :cond_1

    .line 1321
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/nut/blehunter/ble/r;->n:Z

    .line 442
    invoke-virtual {p1, v1}, Lcom/nut/blehunter/ble/r;->b(Z)V

    .line 443
    iget-object v0, p0, Lcom/nut/blehunter/ble/f;->b:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/BLEService;Lcom/nut/blehunter/ble/r;)V

    .line 444
    iget-object v0, p0, Lcom/nut/blehunter/ble/f;->b:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v0}, Lcom/nut/blehunter/ble/BLEService;->c(Lcom/nut/blehunter/ble/BLEService;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ble/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/nut/blehunter/ble/f;->b:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v0}, Lcom/nut/blehunter/ble/BLEService;->d(Lcom/nut/blehunter/ble/BLEService;)Lcom/nut/blehunter/ble/r;

    .line 449
    :goto_0
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/nut/blehunter/ble/BLEService;->d(Lcom/nut/blehunter/ble/r;I)Landroid/os/Message;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 451
    const-string v2, "bind_result"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    const-string v2, "hardware_version"

    .line 2243
    iget-object v3, p1, Lcom/nut/blehunter/ble/r;->i:Ljava/lang/String;

    .line 452
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v2, "firmware_version"

    .line 2247
    iget-object v3, p1, Lcom/nut/blehunter/ble/r;->j:Ljava/lang/String;

    .line 453
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v2, "manufacture_name"

    .line 2251
    iget-object v3, p1, Lcom/nut/blehunter/ble/r;->k:Ljava/lang/String;

    .line 454
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v2, "device_name"

    .line 2259
    iget v3, p1, Lcom/nut/blehunter/ble/r;->p:I

    .line 455
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3259
    iget v2, p1, Lcom/nut/blehunter/ble/r;->p:I

    .line 456
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 457
    const-string v2, "battery"

    .line 3279
    iget v3, p1, Lcom/nut/blehunter/ble/r;->u:I

    .line 457
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ble/f;->b:Lcom/nut/blehunter/ble/BLEService;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ble/BLEService;->a(Lcom/nut/blehunter/ble/BLEService;Landroid/os/Message;)V

    .line 460
    return-void

    .line 447
    :cond_1
    invoke-virtual {p1, v1}, Lcom/nut/blehunter/ble/r;->a(Z)V

    goto :goto_0
.end method
