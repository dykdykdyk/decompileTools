.class public final Lcom/amap/api/maps2d/model/Circle;
.super Ljava/lang/Object;
.source "Circle.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/x;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/x;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    .line 28
    return-void
.end method


# virtual methods
.method public final contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 3

    .prologue
    .line 344
    const-string v1, "contains"

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->b(Lcom/amap/api/maps2d/model/LatLng;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 363
    const-string v1, "equals"

    .line 364
    instance-of v2, p1, Lcom/amap/api/maps2d/model/Circle;

    if-nez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-eqz v2, :cond_0

    .line 374
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    check-cast p1, Lcom/amap/api/maps2d/model/Circle;

    iget-object v2, p1, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    .line 375
    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/x;->a(Lcom/amap/api/mapcore2d/ac;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getCenter()Lcom/amap/api/maps2d/model/LatLng;
    .locals 3

    .prologue
    .line 94
    const-string v1, "getCenter"

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->g()Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getFillColor()I
    .locals 3

    .prologue
    .line 248
    const-string v1, "getFillColor"

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->k()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    const-string v1, "getId"

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 58
    const-string v0, ""

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->c()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getRadius()D
    .locals 3

    .prologue
    .line 133
    const-string v1, "getRadius"

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    .line 138
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->h()D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getStrokeColor()I
    .locals 3

    .prologue
    .line 210
    const-string v1, "getStrokeColor"

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->j()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getStrokeWidth()F
    .locals 3

    .prologue
    .line 172
    const-string v1, "getStrokeWidth"

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->i()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZIndex()F
    .locals 3

    .prologue
    .line 286
    const-string v1, "getZIndex"

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->d()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 383
    const-string v1, "hashCode"

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 388
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->f()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isVisible()Z
    .locals 3

    .prologue
    .line 324
    const-string v1, "isVisible"

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 36
    const-string v1, "remove"

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/x;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setCenter(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 3

    .prologue
    .line 75
    const-string v1, "setCenter"

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->a(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setFillColor(I)V
    .locals 3

    .prologue
    .line 229
    const-string v1, "setFillColor"

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setRadius(D)V
    .locals 3

    .prologue
    .line 114
    const-string v1, "setRadius"

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/x;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setStrokeColor(I)V
    .locals 3

    .prologue
    .line 191
    const-string v1, "setStrokeColor"

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setStrokeWidth(F)V
    .locals 3

    .prologue
    .line 153
    const-string v1, "setStrokeWidth"

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->b(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setVisible(Z)V
    .locals 3

    .prologue
    .line 305
    const-string v1, "setVisible"

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZIndex(F)V
    .locals 3

    .prologue
    .line 267
    const-string v1, "setZIndex"

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Circle;->a:Lcom/amap/api/mapcore2d/x;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/x;->a(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
