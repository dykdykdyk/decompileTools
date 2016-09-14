.class public Lcom/amap/api/maps2d/MapView;
.super Landroid/widget/FrameLayout;
.source "MapView.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/z;

.field private b:Lcom/amap/api/maps2d/AMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amap/api/mapcore2d/z;->a(Lcom/amap/api/maps2d/AMapOptions;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps2d/AMap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    const-string v1, "getMap"

    .line 102
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v2

    .line 103
    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    :try_start_0
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/z;->a()Lcom/amap/api/mapcore2d/w;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/amap/api/maps2d/MapView;->b:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Lcom/amap/api/maps2d/AMap;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMap;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/MapView;->b:Lcom/amap/api/maps2d/AMap;

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps2d/MapView;->b:Lcom/amap/api/maps2d/AMap;

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v2, "MapView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amap/api/maps2d/MapView;->a:Lcom/amap/api/mapcore2d/z;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/amap/api/mapcore2d/aq;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aq;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/MapView;->a:Lcom/amap/api/mapcore2d/z;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/MapView;->a:Lcom/amap/api/mapcore2d/z;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 131
    const-string v1, "onCreate"

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 135
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 138
    invoke-virtual {p0, v0, v2}, Lcom/amap/api/maps2d/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    const-string v2, "MapView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    const-string v2, "MapView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    .line 180
    const-string v1, "onDestroy"

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    const-string v2, "MapView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 3

    .prologue
    .line 193
    const-string v1, "onLowMemory"

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    const-string v2, "MapView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPause()V
    .locals 3

    .prologue
    .line 166
    const-string v1, "onPause"

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    const-string v2, "MapView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 152
    const-string v1, "onResume"

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    const-string v2, "MapView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 208
    const-string v1, "onSaveInstanceState"

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapView;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    const-string v2, "MapView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
