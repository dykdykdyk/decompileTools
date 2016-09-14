.class public final Lcom/amap/api/maps2d/UiSettings;
.super Ljava/lang/Object;
.source "UiSettings.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/ak;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ak;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    .line 20
    return-void
.end method


# virtual methods
.method public final getLogoPosition()I
    .locals 3

    .prologue
    .line 273
    const-string v1, "getLogoPosition"

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->g()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getZoomPosition()I
    .locals 3

    .prologue
    .line 288
    const-string v1, "getZoomPosition"

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->h()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isCompassEnabled()Z
    .locals 3

    .prologue
    .line 209
    const-string v1, "isCompassEnabled"

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->c()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isMyLocationButtonEnabled()Z
    .locals 3

    .prologue
    .line 225
    const-string v1, "isMyLocationButtonEnabled"

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->d()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isScaleControlsEnabled()Z
    .locals 3

    .prologue
    .line 177
    const-string v1, "isScaleControlsEnabled"

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isScrollGesturesEnabled()Z
    .locals 3

    .prologue
    .line 241
    const-string v1, "isScrollGestureEnabled"

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->e()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isZoomControlsEnabled()Z
    .locals 3

    .prologue
    .line 193
    const-string v1, "isZoomControlsEnabled"

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->b()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final isZoomGesturesEnabled()Z
    .locals 3

    .prologue
    .line 257
    const-string v1, "isZoomGesturesEnabled"

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setAllGesturesEnabled(Z)V
    .locals 3

    .prologue
    .line 127
    const-string v1, "setAllGesturesEnabled"

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->g(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setCompassEnabled(Z)V
    .locals 3

    .prologue
    .line 60
    const-string v1, "setCompassEnabled"

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setLogoPosition(I)V
    .locals 3

    .prologue
    .line 144
    const-string v1, "setLogoPosition"

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setMyLocationButtonEnabled(Z)V
    .locals 3

    .prologue
    .line 77
    const-string v1, "setMyLocationButtonEnabled"

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->d(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setScaleControlsEnabled(Z)V
    .locals 3

    .prologue
    .line 28
    const-string v1, "setScaleControlsEnabled"

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setScrollGesturesEnabled(Z)V
    .locals 3

    .prologue
    .line 94
    const-string v1, "setScrollGesturesEnabled"

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZoomControlsEnabled(Z)V
    .locals 3

    .prologue
    .line 44
    const-string v1, "setZoomControlsEnabled"

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZoomGesturesEnabled(Z)V
    .locals 3

    .prologue
    .line 111
    const-string v1, "setZoomGesturesEnabled"

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->f(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setZoomPosition(I)V
    .locals 3

    .prologue
    .line 161
    const-string v1, "setZoomPosition"

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
