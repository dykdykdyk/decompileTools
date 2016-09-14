.class final Lcom/loc/dr;
.super Ljava/lang/Object;
.source "GPSLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/loc/dq;


# direct methods
.method constructor <init>(Lcom/loc/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 0
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_8

    const-string v0, "satellites"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    :goto_1
    if-gtz v1, :cond_2

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->e:Lcom/loc/di;

    .line 1000
    iput-wide v2, v0, Lcom/loc/di;->b:J

    .line 0
    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-wide v4, v0, Lcom/loc/dq;->j:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-wide v4, v0, Lcom/loc/dq;->g:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/loc/cr;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->d:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iget-object v2, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v2, v2, Lcom/loc/dq;->f:Lcom/amap/api/location/CoordinateConverter;

    new-instance v3, Lcom/amap/api/location/DPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/amap/api/location/CoordinateConverter;->coord(Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/CoordinateConverter;

    move-result-object v2

    sget-object v3, Lcom/amap/api/location/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/location/CoordinateConverter$CoordType;

    invoke-virtual {v2, v3}, Lcom/amap/api/location/CoordinateConverter;->from(Lcom/amap/api/location/CoordinateConverter$CoordType;)Lcom/amap/api/location/CoordinateConverter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/CoordinateConverter;->convert()Lcom/amap/api/location/DPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    :goto_2
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    sget-boolean v0, Lcom/loc/cr;->o:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/cr;->o:Z

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->b:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "colde"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/dq;->j:J

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    .line 2000
    iget-wide v0, v0, Lcom/loc/dq;->h:J

    .line 0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-boolean v0, v0, Lcom/loc/dq;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v1, v1, Lcom/loc/dq;->e:Lcom/loc/di;

    invoke-static {v0, v1}, Lcom/loc/dj;->b(Landroid/content/Context;Lcom/loc/di;)V

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/dq;->i:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_8
    move v1, v0

    goto/16 :goto_1
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "onProviderDisabled"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/dr;->a:Lcom/loc/dq;

    iget-object v0, v0, Lcom/loc/dq;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GPSLocation"

    const-string v2, "onStatusChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
