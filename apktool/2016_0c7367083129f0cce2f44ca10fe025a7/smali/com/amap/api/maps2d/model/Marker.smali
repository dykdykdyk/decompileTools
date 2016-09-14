.class public final Lcom/amap/api/maps2d/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# instance fields
.field a:Lcom/amap/api/mapcore2d/aa;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/aa;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/MarkerOptions;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .prologue
    .line 182
    const-string v1, "destroy"

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 361
    instance-of v0, p1, Lcom/amap/api/maps2d/model/Marker;

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    check-cast p1, Lcom/amap/api/maps2d/model/Marker;

    iget-object v1, p1, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    .line 366
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/aa;->a(Lcom/amap/api/mapcore2d/aa;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getIcons()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const-string v1, "getIcons"

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->p()Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->u()Ljava/lang/Object;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPeriod()I
    .locals 3

    .prologue
    .line 136
    const-string v1, "getPeriod"

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->o()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->r()F

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->m()I

    move-result v0

    return v0
.end method

.method public final hideInfoWindow()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->j()V

    .line 312
    return-void
.end method

.method public final isDraggable()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->h()Z

    move-result v0

    return v0
.end method

.method public final isInfoWindowShown()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->k()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->s()Z

    move-result v0

    return v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 81
    const-string v1, "remove"

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setAnchor(FF)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/aa;->a(FF)V

    .line 272
    return-void
.end method

.method public final setDraggable(Z)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->a(Z)V

    .line 281
    return-void
.end method

.method public final setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 1

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 260
    :cond_0
    return-void
.end method

.method public final setIcons(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    const-string v1, "setIcons"

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->a(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public final setPeriod(I)V
    .locals 3

    .prologue
    .line 120
    const-string v1, "setPeriod"

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->b(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 43
    return-void
.end method

.method public final setPositionByPixels(II)V
    .locals 3

    .prologue
    .line 386
    const-string v1, "setPositionByPixels"

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/aa;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final setRotateAngle(F)V
    .locals 3

    .prologue
    .line 350
    const-string v1, "setRotateAngle"

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setSnippet(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->b(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->a(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->b(Z)V

    .line 331
    return-void
.end method

.method public final setZIndex(F)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aa;->b(F)V

    .line 73
    return-void
.end method

.method public final showInfoWindow()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/aa;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aa;->i()V

    .line 303
    :cond_0
    return-void
.end method
