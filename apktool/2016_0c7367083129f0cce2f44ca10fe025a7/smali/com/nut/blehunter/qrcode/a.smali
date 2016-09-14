.class final Lcom/nut/blehunter/qrcode/a;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcom/nut/blehunter/qrcode/a/f;

.field c:Landroid/hardware/Sensor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/a;->a:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 74
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/a;->b:Lcom/nut/blehunter/qrcode/a/f;

    if-eqz v1, :cond_0

    .line 75
    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a;->b:Lcom/nut/blehunter/qrcode/a/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/qrcode/a/f;->a(Z)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/high16 v1, 0x43e10000    # 450.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/a;->b:Lcom/nut/blehunter/qrcode/a/f;

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/qrcode/a/f;->a(Z)V

    goto :goto_0
.end method
