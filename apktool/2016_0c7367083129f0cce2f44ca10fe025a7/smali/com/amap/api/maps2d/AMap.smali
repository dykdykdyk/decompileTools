.class public final Lcom/amap/api/maps2d/AMap;
.super Ljava/lang/Object;
.source "AMap.java"


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh_cn"

.field public static final ENGLISH:Ljava/lang/String; = "en"

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/w;

.field private b:Lcom/amap/api/maps2d/UiSettings;

.field private c:Lcom/amap/api/maps2d/Projection;


# direct methods
.method protected constructor <init>(Lcom/amap/api/mapcore2d/w;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    .line 284
    return-void
.end method

.method private a()Lcom/amap/api/mapcore2d/w;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    const-string v0, "2.9.0"

    return-object v0
.end method


# virtual methods
.method public final addCircle(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/maps2d/model/Circle;
    .locals 3

    .prologue
    .line 473
    const-string v1, "addCircle"

    .line 475
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/Circle;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/x;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/Circle;-><init>(Lcom/amap/api/mapcore2d/x;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addGroundOverlay(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/maps2d/model/GroundOverlay;
    .locals 3

    .prologue
    .line 528
    const-string v1, "addGroundOverlay"

    .line 530
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/GroundOverlay;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/mapcore2d/y;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/GroundOverlay;-><init>(Lcom/amap/api/mapcore2d/y;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .locals 3

    .prologue
    .line 512
    const-string v1, "addMarker"

    .line 514
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addPolygon(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/maps2d/model/Polygon;
    .locals 3

    .prologue
    .line 490
    const-string v1, "addPolygon"

    .line 492
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/Polygon;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/Polygon;-><init>(Lcom/amap/api/mapcore2d/ae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addPolyline(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/maps2d/model/Polyline;
    .locals 3

    .prologue
    .line 440
    const-string v1, "addPolyline"

    .line 442
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/Polyline;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/mapcore2d/af;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/model/Polyline;-><init>(Lcom/amap/api/mapcore2d/af;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addText(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    .locals 3

    .prologue
    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 457
    :catch_0
    move-exception v0

    .line 459
    const-string v1, "AMap"

    const-string v2, "addText"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final addTileOverlay(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    .locals 3

    .prologue
    .line 545
    const-string v1, "addtileOverlay"

    .line 547
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 3

    .prologue
    .line 356
    const-string v1, "animateCamera"

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 358
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/w;->b(Lcom/amap/api/mapcore2d/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps2d/CameraUpdate;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 4

    .prologue
    .line 404
    const-string v1, "animateCamera"

    .line 406
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    const-string v2, "durationMs must be positive"

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 408
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 409
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 408
    invoke-interface {v0, v2, p2, p3, p4}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps2d/CameraUpdate;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 3

    .prologue
    .line 379
    const-string v1, "animateCamera"

    .line 381
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 382
    invoke-interface {v0, v2, p2}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final clear()V
    .locals 3

    .prologue
    .line 560
    const-string v1, "clear"

    .line 562
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->k()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 569
    :catch_1
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 3

    .prologue
    .line 297
    const-string v1, "getCameraPosition"

    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->g()Lcom/amap/api/maps2d/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMapScreenMarkers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1007
    const-string v1, "getMapScreenaMarkers"

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->S()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMapScreenShot(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V
    .locals 1

    .prologue
    .line 978
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V

    .line 979
    invoke-virtual {p0}, Lcom/amap/api/maps2d/AMap;->invalidate()V

    .line 980
    return-void
.end method

.method public final getMapType()I
    .locals 3

    .prologue
    .line 580
    const-string v1, "getMapType"

    .line 582
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->l()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getMaxZoomLevel()F
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->h()F

    move-result v0

    return v0
.end method

.method public final getMinZoomLevel()F
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->i()F

    move-result v0

    return v0
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 704
    const-string v1, "getMyLocation"

    .line 706
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->p()Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getProjection()Lcom/amap/api/maps2d/Projection;
    .locals 3

    .prologue
    .line 773
    const-string v1, "getProjection"

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lcom/amap/api/maps2d/Projection;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    .line 777
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/w;->r()Lcom/amap/api/mapcore2d/ag;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/Projection;-><init>(Lcom/amap/api/mapcore2d/ag;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getScalePerPixel()F
    .locals 1

    .prologue
    .line 989
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->w()F

    move-result v0

    return v0
.end method

.method public final getUiSettings()Lcom/amap/api/maps2d/UiSettings;
    .locals 3

    .prologue
    .line 752
    const-string v1, "getUiSettings"

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Lcom/amap/api/maps2d/UiSettings;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v2

    .line 756
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/w;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/UiSettings;-><init>(Lcom/amap/api/mapcore2d/ak;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final invalidate()V
    .locals 0

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/amap/api/maps2d/AMap;->postInvalidate()V

    .line 1032
    return-void
.end method

.method public final isMyLocationEnabled()Z
    .locals 3

    .prologue
    .line 660
    const-string v1, "isMyLocationEnabled"

    .line 662
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->n()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isTrafficEnabled()Z
    .locals 3

    .prologue
    .line 628
    const-string v1, "isTrafficEnable"

    .line 630
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->m()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 3

    .prologue
    .line 338
    const-string v1, "moveCamera"

    .line 340
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    .line 341
    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/l;

    move-result-object v2

    .line 340
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final postInvalidate()V
    .locals 1

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->R()V

    .line 1023
    return-void
.end method

.method public final removecache()V
    .locals 3

    .prologue
    .line 1056
    const-string v1, "removecache"

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->T()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    return-void

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final removecache(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .locals 3

    .prologue
    .line 1072
    const-string v1, "removecache"

    .line 1074
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    return-void

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setInfoWindowAdapter(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    .locals 3

    .prologue
    .line 931
    const-string v1, "setInfoWindowAdapter"

    .line 933
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    return-void

    .line 934
    :catch_0
    move-exception v0

    .line 935
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLocationSource(Lcom/amap/api/maps2d/LocationSource;)V
    .locals 3

    .prologue
    .line 720
    const-string v1, "setLocationSource"

    .line 722
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/LocationSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMapLanguage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1041
    const-string v1, "setMapLanguage"

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    return-void

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMapType(I)V
    .locals 3

    .prologue
    .line 596
    const-string v1, "setMapType"

    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 3

    .prologue
    .line 687
    const-string v1, "setMyLocationEnabled"

    .line 689
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationRotateAngle(F)V
    .locals 3

    .prologue
    .line 612
    const-string v1, "setMyLocationRoteteAngle"

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationStyle(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .locals 3

    .prologue
    .line 736
    const-string v1, "setMyLocationStyle"

    .line 738
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnCameraChangeListener(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .locals 3

    .prologue
    .line 794
    const-string v1, "setOnCameraChangeListener"

    .line 796
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    return-void

    .line 797
    :catch_0
    move-exception v0

    .line 798
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnInfoWindowClickListener(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    .locals 3

    .prologue
    .line 912
    const-string v1, "setOnInfoWindowClickListener"

    .line 914
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    return-void

    .line 915
    :catch_0
    move-exception v0

    .line 916
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .locals 3

    .prologue
    .line 810
    const-string v1, "setOnMapClickListener"

    .line 812
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLoadedListener(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    .locals 3

    .prologue
    .line 947
    const-string v1, "setOnMapLoadedListener"

    .line 949
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    return-void

    .line 950
    :catch_0
    move-exception v0

    .line 951
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLongClickListener(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .locals 3

    .prologue
    .line 861
    const-string v1, "setOnMapLongClickListener"

    .line 863
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapTouchListener(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    .locals 3

    .prologue
    .line 826
    const-string v1, "setOnMapTouchListener"

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerClickListener(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .locals 3

    .prologue
    .line 878
    const-string v1, "setOnMarkerClickListener"

    .line 880
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerDragListener(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    .locals 3

    .prologue
    .line 895
    const-string v1, "setOnMarkerDragListener"

    .line 897
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 899
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMyLocationChangeListener(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    .locals 3

    .prologue
    .line 843
    const-string v1, "setOnMyLocaitonChangeListener"

    .line 845
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setTrafficEnabled(Z)V
    .locals 3

    .prologue
    .line 644
    const-string v1, "setTradficEnabled"

    .line 646
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/w;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final stopAnimation()V
    .locals 3

    .prologue
    .line 423
    const-string v1, "stopAnimation"

    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
