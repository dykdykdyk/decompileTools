.class public final Lcom/amap/api/maps2d/model/GroundOverlay;
.super Ljava/lang/Object;
.source "GroundOverlay.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/y;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/y;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 394
    const-string v1, "equals"

    .line 395
    instance-of v0, p1, Lcom/amap/api/maps2d/model/GroundOverlay;

    if-nez v0, :cond_0

    .line 396
    const/4 v0, 0x0

    return v0

    .line 398
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getBearing()F
    .locals 3

    .prologue
    .line 267
    const-string v1, "getBearing"

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->m()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 3

    .prologue
    .line 229
    const-string v1, "getBounds"

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->k()Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getHeight()F
    .locals 3

    .prologue
    .line 191
    const-string v1, "getHeight"

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->j()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    const-string v1, "getId"

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 60
    const-string v0, ""

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->c()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 3

    .prologue
    .line 95
    const-string v1, "getPosition"

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->h()Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getTransparency()F
    .locals 3

    .prologue
    .line 381
    const-string v1, "getTransparency"

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->n()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getWidth()F
    .locals 3

    .prologue
    .line 172
    const-string v1, "getWidth"

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->i()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZIndex()F
    .locals 3

    .prologue
    .line 305
    const-string v1, "getZIndex"

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->d()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 3

    .prologue
    .line 343
    const-string v1, "isVisible"

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 38
    const-string v1, "remove"

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/y;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setBearing(F)V
    .locals 3

    .prologue
    .line 248
    const-string v1, "setBearing"

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->c(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setDimensions(F)V
    .locals 3

    .prologue
    .line 114
    const-string v1, "setDimensions"

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setDimensions(FF)V
    .locals 3

    .prologue
    .line 153
    const-string v1, "setDimensions"

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/y;->a(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setImage(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 3

    .prologue
    .line 133
    const-string v1, "setImage"

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 3

    .prologue
    .line 76
    const-string v1, "setPosition"

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setPositionFromBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 3

    .prologue
    .line 210
    const-string v1, "setPositionFromBounds"

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setTransparency(F)V
    .locals 3

    .prologue
    .line 362
    const-string v1, "setTransparency"

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->d(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setVisible(Z)V
    .locals 3

    .prologue
    .line 324
    const-string v1, "setVisible"

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZIndex(F)V
    .locals 3

    .prologue
    .line 286
    const-string v1, "setZIndex"

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlay;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
