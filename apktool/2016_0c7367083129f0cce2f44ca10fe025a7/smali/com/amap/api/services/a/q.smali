.class public Lcom/amap/api/services/a/q;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# static fields
.field private static a:Lcom/amap/api/services/a/q;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 192
    return-void
.end method

.method public static declared-synchronized a()Lcom/amap/api/services/a/q;
    .locals 3

    .prologue
    .line 175
    const-class v1, Lcom/amap/api/services/a/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;

    if-nez v0, :cond_1

    .line 176
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 178
    :cond_0
    new-instance v0, Lcom/amap/api/services/a/q;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/services/a/q;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;

    .line 183
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 180
    :cond_2
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/q;

    invoke-direct {v0}, Lcom/amap/api/services/a/q;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/q;->a:Lcom/amap/api/services/a/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 246
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    .line 248
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 249
    const-string v3, "shareurlkey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 253
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onPoiShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onBusRouteShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    .line 262
    :pswitch_2
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onDrivingRouteShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    .line 265
    :pswitch_3
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onWalkRouteShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    .line 268
    :pswitch_4
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onLocationShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    .line 271
    :pswitch_5
    invoke-interface {v0, v2, v1}, Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;->onNaviShareUrlSearched(Ljava/lang/String;I)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 278
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    return-void

    .line 281
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    .line 282
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoUploaded(I)V

    goto :goto_0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$f;

    .line 288
    if-nez v0, :cond_1

    .line 302
    :cond_0
    return-void

    .line 291
    :cond_1
    iget-object v2, v0, Lcom/amap/api/services/a/q$f;->a:Ljava/util/List;

    .line 292
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 296
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 297
    iget-object v0, v0, Lcom/amap/api/services/a/q$f;->b:Lcom/amap/api/services/nearby/NearbySearchResult;

    move-object v1, v0

    .line 298
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    .line 299
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v3}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onNearbyInfoSearched(Lcom/amap/api/services/nearby/NearbySearchResult;I)V

    goto :goto_0
.end method

.method private d(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 306
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 313
    :cond_0
    return-void

    .line 309
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;

    .line 310
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v2}, Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;->onUserInfoCleared(I)V

    goto :goto_0
.end method

.method private e(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 316
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$b;

    .line 317
    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v2, v0, Lcom/amap/api/services/a/q$b;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    .line 321
    if-eqz v2, :cond_0

    .line 323
    const/4 v1, 0x0

    .line 324
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 325
    iget-object v0, v0, Lcom/amap/api/services/a/q$b;->a:Lcom/amap/api/services/busline/BusStationResult;

    .line 326
    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;->onBusStationSearched(Lcom/amap/api/services/busline/BusStationResult;I)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private f(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_2

    .line 333
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$h;

    .line 334
    if-nez v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$h;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 339
    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 343
    if-eqz v2, :cond_0

    .line 344
    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 346
    iget-object v0, v0, Lcom/amap/api/services/a/q$h;->a:Lcom/amap/api/services/poisearch/PoiResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V

    goto :goto_0

    .line 348
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x25a

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$g;

    .line 350
    if-eqz v0, :cond_0

    .line 353
    iget-object v1, v0, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 354
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_0

    .line 356
    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 357
    iget-object v0, v0, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V

    goto :goto_0
.end method

.method private g(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    .line 377
    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 380
    :cond_0
    const/4 v1, 0x0

    .line 381
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    .line 382
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 383
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/help/Inputtips$InputtipsListener;->onGetInputtips(Ljava/util/List;I)V

    goto :goto_0
.end method

.method private h(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 388
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    .line 389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$i;

    .line 390
    if-nez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$i;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 394
    if-eqz v1, :cond_0

    .line 399
    iget-object v0, v0, Lcom/amap/api/services/a/q$i;->a:Lcom/amap/api/services/geocoder/RegeocodeResult;

    .line 400
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V

    goto :goto_0

    .line 402
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$e;

    .line 404
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, v0, Lcom/amap/api/services/a/q$e;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 408
    if-eqz v1, :cond_0

    .line 413
    iget-object v0, v0, Lcom/amap/api/services/a/q$e;->a:Lcom/amap/api/services/geocoder/GeocodeResult;

    .line 414
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V

    goto :goto_0
.end method

.method private i(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 419
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    .line 420
    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/district/DistrictResult;

    .line 424
    invoke-interface {v0, v1}, Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;->onDistrictSearched(Lcom/amap/api/services/district/DistrictResult;)V

    goto :goto_0
.end method

.method private j(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 428
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$a;

    .line 429
    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v2, v0, Lcom/amap/api/services/a/q$a;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    .line 433
    if-eqz v2, :cond_0

    .line 436
    const/4 v1, 0x0

    .line 437
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 438
    iget-object v0, v0, Lcom/amap/api/services/a/q$a;->a:Lcom/amap/api/services/busline/BusLineResult;

    .line 439
    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;->onBusLineSearched(Lcom/amap/api/services/busline/BusLineResult;I)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private k(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 444
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    .line 446
    if-nez v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    .line 450
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_0

    .line 452
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 453
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/BusRouteResult;

    .line 454
    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onBusRouteSearched(Lcom/amap/api/services/route/BusRouteResult;I)V

    goto :goto_0

    .line 456
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_3

    .line 457
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_0

    .line 459
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 460
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/DriveRouteResult;

    .line 462
    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onDriveRouteSearched(Lcom/amap/api/services/route/DriveRouteResult;I)V

    goto :goto_0

    .line 464
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    .line 465
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_0

    .line 467
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 468
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "result"

    .line 469
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/route/WalkRouteResult;

    .line 470
    invoke-interface {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onWalkRouteSearched(Lcom/amap/api/services/route/WalkRouteResult;I)V

    goto :goto_0
.end method

.method private l(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 477
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_2

    .line 478
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$d;

    .line 479
    if-nez v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$d;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    .line 483
    iget-object v0, v0, Lcom/amap/api/services/a/q$d;->a:Lcom/amap/api/services/cloud/CloudResult;

    .line 484
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudSearched(Lcom/amap/api/services/cloud/CloudResult;I)V

    goto :goto_0

    .line 485
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$c;

    .line 487
    if-eqz v0, :cond_0

    .line 490
    iget-object v1, v0, Lcom/amap/api/services/a/q$c;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    .line 491
    iget-object v0, v0, Lcom/amap/api/services/a/q$c;->a:Lcom/amap/api/services/cloud/CloudItemDetail;

    .line 492
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;->onCloudItemDetailSearched(Lcom/amap/api/services/cloud/CloudItemDetail;I)V

    goto :goto_0
.end method

.method private m(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 497
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x515

    if-ne v0, v1, :cond_2

    .line 498
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$k;

    .line 499
    if-nez v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v1, v0, Lcom/amap/api/services/a/q$k;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 503
    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 507
    if-eqz v2, :cond_0

    .line 508
    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 509
    iget-object v0, v0, Lcom/amap/api/services/a/q$k;->a:Lcom/amap/api/services/weather/LocalWeatherLiveResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherLiveSearched(Lcom/amap/api/services/weather/LocalWeatherLiveResult;I)V

    goto :goto_0

    .line 511
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x516

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/a/q$j;

    .line 513
    if-eqz v0, :cond_0

    .line 516
    iget-object v1, v0, Lcom/amap/api/services/a/q$j;->b:Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;

    .line 517
    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 521
    if-eqz v2, :cond_0

    .line 522
    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 523
    iget-object v0, v0, Lcom/amap/api/services/a/q$j;->a:Lcom/amap/api/services/weather/LocalWeatherForecastResult;

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/weather/WeatherSearch$OnWeatherSearchListener;->onWeatherForecastSearched(Lcom/amap/api/services/weather/LocalWeatherForecastResult;I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 197
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 199
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->k(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    const-string v1, "MessageHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->j(Landroid/os/Message;)V

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->i(Landroid/os/Message;)V

    goto :goto_0

    .line 208
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->h(Landroid/os/Message;)V

    goto :goto_0

    .line 211
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->g(Landroid/os/Message;)V

    goto :goto_0

    .line 214
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->f(Landroid/os/Message;)V

    goto :goto_0

    .line 217
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->e(Landroid/os/Message;)V

    goto :goto_0

    .line 220
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->d(Landroid/os/Message;)V

    goto :goto_0

    .line 223
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->c(Landroid/os/Message;)V

    goto :goto_0

    .line 226
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->b(Landroid/os/Message;)V

    goto :goto_0

    .line 229
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->a(Landroid/os/Message;)V

    goto :goto_0

    .line 232
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->l(Landroid/os/Message;)V

    goto :goto_0

    .line 235
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/q;->m(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
