.class final Lcom/nut/blehunter/service/r;
.super Ljava/lang/Object;
.source "NutTrackerService.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/nut/blehunter/service/r;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 1768
    iget-object v0, p0, Lcom/nut/blehunter/service/r;->a:Lcom/nut/blehunter/service/NutTrackerService;

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1778
    :goto_0
    return-void

    .line 1772
    :cond_0
    const-string v0, "Location:<%f, %f>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1773
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v2

    .line 1774
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 1775
    iget-object v0, p0, Lcom/nut/blehunter/service/r;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/Position;->a()Ljava/lang/String;

    move-result-object v2

    .line 2062
    const-string v3, "save_latest_location"

    invoke-static {v0, v3, v2}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    new-instance v0, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v2, v1, Lcom/nut/blehunter/entity/Position;->d:D

    iget-wide v4, v1, Lcom/nut/blehunter/entity/Position;->c:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    .line 1777
    iget-object v1, p0, Lcom/nut/blehunter/service/r;->a:Lcom/nut/blehunter/service/NutTrackerService;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/service/NutTrackerService;Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1782
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1786
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1790
    return-void
.end method
