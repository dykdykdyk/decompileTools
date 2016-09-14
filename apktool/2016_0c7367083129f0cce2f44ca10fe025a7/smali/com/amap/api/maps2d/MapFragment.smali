.class public Lcom/amap/api/maps2d/MapFragment;
.super Landroid/app/Fragment;
.source "MapFragment.java"


# instance fields
.field private a:Lcom/amap/api/maps2d/AMap;

.field private b:Lcom/amap/api/mapcore2d/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/amap/api/maps2d/MapFragment;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-static {v0}, Lcom/amap/api/maps2d/MapFragment;->newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/MapFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/MapFragment;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/amap/api/maps2d/MapFragment;

    invoke-direct {v0}, Lcom/amap/api/maps2d/MapFragment;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/MapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps2d/AMap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 69
    const-string v1, "getMap"

    .line 71
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v2

    .line 72
    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    :try_start_0
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/z;->a()Lcom/amap/api/mapcore2d/w;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->a:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Lcom/amap/api/maps2d/AMap;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMap;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->a:Lcom/amap/api/maps2d/AMap;

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->a:Lcom/amap/api/maps2d/AMap;

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->b:Lcom/amap/api/mapcore2d/z;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/amap/api/mapcore2d/aq;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aq;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->b:Lcom/amap/api/mapcore2d/z;

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->b:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/content/Context;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps2d/MapFragment;->b:Lcom/amap/api/mapcore2d/z;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v1, "onCreate"

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 127
    const-string v1, "onCreateView"

    .line 129
    if-nez p3, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/mapcore2d/z;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 175
    const-string v1, "onDestroy"

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 164
    const-string v1, "onDestroyView"

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 102
    const-string v1, "onInflate"

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v2}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-interface {v0, p1, v2, p3}, Lcom/amap/api/mapcore2d/z;->a(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 187
    const-string v1, "onLowMemory"

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 154
    const-string v1, "onPause"

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 143
    const-string v1, "onResume"

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 197
    const-string v1, "onSaveInstanceState"

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v0

    const-string v2, "MapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method
