.class public Lcom/amap/api/maps2d/SupportMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "SupportMapFragment.java"


# instance fields
.field private a:Lcom/amap/api/maps2d/AMap;

.field private b:Lcom/amap/api/mapcore2d/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/amap/api/maps2d/SupportMapFragment;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-static {v0}, Lcom/amap/api/maps2d/SupportMapFragment;->newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/SupportMapFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/amap/api/maps2d/AMapOptions;)Lcom/amap/api/maps2d/SupportMapFragment;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/amap/api/maps2d/SupportMapFragment;

    invoke-direct {v0}, Lcom/amap/api/maps2d/SupportMapFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/SupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps2d/AMap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    const-string v1, "getMap"

    .line 72
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v2

    .line 73
    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    :try_start_0
    invoke-interface {v2}, Lcom/amap/api/mapcore2d/z;->a()Lcom/amap/api/mapcore2d/w;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_2

    .line 87
    new-instance v0, Lcom/amap/api/maps2d/AMap;

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMap;-><init>(Lcom/amap/api/mapcore2d/w;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->a:Lcom/amap/api/maps2d/AMap;

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v2, "SupportMapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method protected getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/mapcore2d/z;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/amap/api/mapcore2d/aq;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aq;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/mapcore2d/z;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcom/amap/api/maps2d/SupportMapFragment;->b:Lcom/amap/api/mapcore2d/z;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    return-void
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
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

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

    const-string v2, "SupportMapFragment"

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
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    const-string v2, "SupportMapFragment"

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
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/z;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    const-string v2, "SupportMapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 103
    const-string v1, "onInflate"

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v2}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    invoke-interface {v0, p1, v2, p3}, Lcom/amap/api/mapcore2d/z;->a(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    const-string v2, "SupportMapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 187
    const-string v1, "onLowMemory"

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

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

    const-string v2, "SupportMapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 154
    const-string v1, "onPause"

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

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

    const-string v2, "SupportMapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 143
    const-string v1, "onResume"

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

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

    const-string v2, "SupportMapFragment"

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
    invoke-virtual {p0}, Lcom/amap/api/maps2d/SupportMapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/z;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/z;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v0

    const-string v2, "SupportMapFragment"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method
