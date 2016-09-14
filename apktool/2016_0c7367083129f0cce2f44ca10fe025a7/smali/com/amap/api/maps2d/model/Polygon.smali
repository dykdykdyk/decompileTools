.class public final Lcom/amap/api/maps2d/model/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/ae;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ae;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    .line 42
    return-void
.end method


# virtual methods
.method public final contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 3

    .prologue
    .line 315
    const-string v1, "contains"

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(Lcom/amap/api/maps2d/model/LatLng;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 334
    const-string v2, "equeals"

    .line 335
    instance-of v1, p1, Lcom/amap/api/maps2d/model/Polygon;

    if-nez v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    check-cast p1, Lcom/amap/api/maps2d/model/Polygon;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    .line 347
    invoke-interface {v1, v3}, Lcom/amap/api/mapcore2d/ae;->a(Lcom/amap/api/mapcore2d/ac;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    const-string v3, "Polygon"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getFillColor()I
    .locals 3

    .prologue
    .line 221
    const-string v1, "getFillColor"

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    const-string v1, "getId"

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->c()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getPoints()Ljava/util/List;
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
    .line 107
    const-string v1, "getPoints"

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->i()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getStrokeColor()I
    .locals 3

    .prologue
    .line 183
    const-string v1, "getStrokeColor"

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->j()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getStrokeWidth()F
    .locals 3

    .prologue
    .line 145
    const-string v1, "getStrokeWidth"

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->g()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZIndex()F
    .locals 3

    .prologue
    .line 259
    const-string v1, "getZIndex"

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->d()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 356
    const-string v1, "hashCode"

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 2

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 50
    const-string v1, "remove"

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ae;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setFillColor(I)V
    .locals 3

    .prologue
    .line 202
    const-string v1, "setFillColor"

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setPoints(Ljava/util/List;)V
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
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setStrokeColor(I)V
    .locals 3

    .prologue
    .line 164
    const-string v1, "setStrokeColor"

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setStrokeWidth(F)V
    .locals 3

    .prologue
    .line 126
    const-string v1, "setStrokeWidth"

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setVisible(Z)V
    .locals 3

    .prologue
    .line 278
    const-string v1, "setVisible"

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZIndex(F)V
    .locals 3

    .prologue
    .line 240
    const-string v1, "setZIndex"

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Polygon;->a:Lcom/amap/api/mapcore2d/ae;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ae;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v2, "Polygon"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
