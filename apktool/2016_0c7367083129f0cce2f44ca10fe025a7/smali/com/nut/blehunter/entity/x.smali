.class public final Lcom/nut/blehunter/entity/x;
.super Ljava/lang/Object;
.source "ScannedDevice.java"


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:J

.field public e:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/entity/x;->a:Z

    .line 25
    iput p3, p0, Lcom/nut/blehunter/entity/x;->b:I

    .line 26
    iput p2, p0, Lcom/nut/blehunter/entity/x;->c:I

    .line 27
    iput-object p1, p0, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/x;->d:J

    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50
    instance-of v2, p1, Lcom/nut/blehunter/entity/x;

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    check-cast p1, Lcom/nut/blehunter/entity/x;

    .line 57
    iget-object v2, p1, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p1, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nut/blehunter/entity/x;->e:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method
