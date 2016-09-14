.class public Lcom/amap/api/mapcore2d/aq;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/z;


# static fields
.field public static volatile a:Landroid/content/Context;


# instance fields
.field private b:Lcom/amap/api/mapcore2d/w;

.field private c:Lcom/amap/api/maps2d/AMapOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-nez v0, :cond_2

    .line 70
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 74
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->g()V

    .line 79
    new-instance v0, Lcom/amap/api/mapcore2d/b;

    sget-object v1, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 85
    const-string v0, "MapOptions"

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/AMapOptions;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/aq;->b(Lcom/amap/api/maps2d/AMapOptions;)V

    .line 90
    const-string v0, "MapFragmentDelegateImp"

    const-string v1, "onCreateView"

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ci;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/amap/api/mapcore2d/w;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-nez v0, :cond_1

    .line 40
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->g()V

    .line 45
    new-instance v0, Lcom/amap/api/mapcore2d/b;

    sget-object v1, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 57
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    .line 25
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v0, "MapFragmentDelegateImp"

    const-string v1, "onCreate"

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ci;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 29
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->y()V

    .line 160
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/w;->g()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    .line 211
    const-string v0, "MapOptions"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 214
    :cond_1
    return-void
.end method

.method b(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCamera()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    iget-object v2, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget v3, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    iget v4, v0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    iget v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-static {v2, v3, v4, v0}, Lcom/amap/api/mapcore2d/l;->a(Lcom/amap/api/maps2d/model/LatLng;FFF)Lcom/amap/api/mapcore2d/l;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/w;->a(Lcom/amap/api/mapcore2d/l;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->e(Z)V

    .line 145
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->b(Z)V

    .line 146
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->f(Z)V

    .line 147
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->c(Z)V

    .line 148
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScaleControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->a(Z)V

    .line 149
    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getLogoPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->a(I)V

    .line 150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getMapType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(I)V

    .line 151
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(Z)V

    .line 153
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aq;->b:Lcom/amap/api/mapcore2d/w;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->z()V

    .line 184
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->k()V

    .line 194
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/mapcore2d/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/w;->v()V

    .line 196
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "onLowMemory"

    const-string v1, "onLowMemory run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    const/16 v3, 0x1e0

    const/16 v2, 0x140

    .line 96
    sget-object v0, Lcom/amap/api/mapcore2d/aq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 98
    sput v0, Lcom/amap/api/mapcore2d/p;->k:I

    .line 100
    if-le v0, v2, :cond_1

    .line 101
    if-gt v0, v3, :cond_0

    .line 102
    const/16 v1, 0x180

    sput v1, Lcom/amap/api/mapcore2d/p;->i:I

    .line 112
    :goto_0
    const/16 v1, 0x78

    if-gt v0, v1, :cond_2

    .line 113
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    .line 133
    :goto_1
    return-void

    .line 104
    :cond_0
    const/16 v1, 0x200

    sput v1, Lcom/amap/api/mapcore2d/p;->i:I

    goto :goto_0

    .line 109
    :cond_1
    const/16 v1, 0x100

    sput v1, Lcom/amap/api/mapcore2d/p;->i:I

    goto :goto_0

    .line 114
    :cond_2
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_3

    .line 115
    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1

    .line 116
    :cond_3
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_4

    .line 117
    const v0, 0x3f5eb852    # 0.87f

    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1

    .line 118
    :cond_4
    if-gt v0, v2, :cond_5

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1

    .line 120
    :cond_5
    if-gt v0, v3, :cond_6

    .line 122
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1

    .line 131
    :cond_6
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/amap/api/mapcore2d/p;->a:F

    goto :goto_1
.end method
