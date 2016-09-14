.class final Lcom/nut/blehunter/v;
.super Ljava/lang/Object;
.source "NutLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/u;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/u;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nut/blehunter/v;->a:Lcom/nut/blehunter/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/nut/blehunter/v;->a:Lcom/nut/blehunter/u;

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->e()V

    .line 61
    iget-object v0, p0, Lcom/nut/blehunter/v;->a:Lcom/nut/blehunter/u;

    invoke-static {v0}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/u;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/v;->a:Lcom/nut/blehunter/u;

    invoke-static {v0}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    .line 64
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 65
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, v1, Lcom/nut/blehunter/entity/Position;->h:F

    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/v;->a:Lcom/nut/blehunter/u;

    invoke-static {v0}, Lcom/nut/blehunter/u;->b(Lcom/nut/blehunter/u;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Position;->a()Ljava/lang/String;

    move-result-object v1

    .line 1062
    const-string v2, "save_latest_location"

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/nut/blehunter/v;->a:Lcom/nut/blehunter/u;

    invoke-static {v0}, Lcom/nut/blehunter/u;->c(Lcom/nut/blehunter/u;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/v;->a:Lcom/nut/blehunter/u;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/nut/blehunter/u;->a(Lcom/nut/blehunter/u;DDF)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    packed-switch p2, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-string v0, "Network location available again"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :pswitch_1
    const-string v0, "Network location out of service"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "Network location temporarily unavailable"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
