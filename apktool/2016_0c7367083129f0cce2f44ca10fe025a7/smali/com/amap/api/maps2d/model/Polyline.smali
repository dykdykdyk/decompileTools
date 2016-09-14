.class public Lcom/amap/api/maps2d/model/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/af;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/af;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 337
    const-string v1, "equals"

    .line 338
    instance-of v2, p1, Lcom/amap/api/maps2d/model/Polyline;

    if-nez v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-eqz v2, :cond_0

    .line 348
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    check-cast p1, Lcom/amap/api/maps2d/model/Polyline;

    iget-object v2, p1, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    .line 349
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/af;->a(Lcom/amap/api/mapcore2d/ac;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getColor()I
    .locals 3

    .prologue
    .line 184
    const-string v1, "getColor"

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    const-string v1, "getId"

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 72
    const-string v0, ""

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->c()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const-string v1, "getPoints"

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->i()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getWidth()F
    .locals 3

    .prologue
    .line 146
    const-string v1, "getWidth"

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->g()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getZIndex()F
    .locals 3

    .prologue
    .line 222
    const-string v1, "getZIndex"

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->d()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 358
    const-string v1, "hashCode"

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isDottedLine()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->j()Z

    move-result v0

    goto :goto_0
.end method

.method public isGeodesic()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->k()Z

    move-result v0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 260
    const-string v1, "isVisible"

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 50
    const-string v1, "remove"

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setColor(I)V
    .locals 3

    .prologue
    .line 165
    const-string v1, "setColor"

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setDottedLine(Z)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->b(Z)V

    goto :goto_0
.end method

.method public setGeodesic(Z)V
    .locals 3

    .prologue
    .line 279
    const-string v1, "setGeodesic"

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/af;->k()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 286
    iget-object v2, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v2, p1}, Lcom/amap/api/mapcore2d/af;->c(Z)V

    .line 287
    invoke-virtual {p0, v0}, Lcom/amap/api/maps2d/model/Polyline;->setPoints(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    const-string v1, "setPoints"

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setVisible(Z)V
    .locals 3

    .prologue
    .line 241
    const-string v1, "setVisible"

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setWidth(F)V
    .locals 3

    .prologue
    .line 127
    const-string v1, "setWidth"

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZIndex(F)V
    .locals 3

    .prologue
    .line 203
    const-string v1, "setZIndex"

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polyline;->a:Lcom/amap/api/mapcore2d/af;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/af;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v2, "Polyline"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
