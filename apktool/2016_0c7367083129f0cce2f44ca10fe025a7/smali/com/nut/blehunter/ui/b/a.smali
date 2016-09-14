.class public Lcom/nut/blehunter/ui/b/a;
.super Lcom/nut/blehunter/ui/b/i;
.source "AMapFragment.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;
.implements Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;
.implements Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;
.implements Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;
.implements Lcom/amap/api/maps2d/AMap$OnMapClickListener;
.implements Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;
.implements Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;
.implements Lcom/amap/api/maps2d/LocationSource;
.implements Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;


# instance fields
.field private o:Lcom/amap/api/maps2d/AMap;

.field private p:Lcom/amap/api/maps2d/model/Circle;

.field private q:Lcom/amap/api/maps2d/MapView;

.field private r:Lcom/amap/api/services/geocoder/GeocodeSearch;

.field private s:Lcom/amap/api/services/poisearch/PoiSearch$Query;

.field private t:Lcom/amap/api/location/AMapLocationClient;

.field private u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/amap/api/location/AMapLocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b/i;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/amap/api/maps2d/CameraUpdate;Z)V
    .locals 4

    .prologue
    .line 447
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 450
    :cond_0
    if-eqz p2, :cond_1

    .line 451
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/b/a;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/nut/blehunter/ui/b/a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 6

    .prologue
    .line 442
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    .line 6048
    iget-wide v2, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 6052
    iget-wide v4, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 442
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 594
    if-nez v0, :cond_0

    .line 611
    :goto_0
    return-void

    .line 597
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5!\u9519\u8bef\u7801\u4e3a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 599
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\u641c\u7d22\u5931\u8d25,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 603
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":key\u9a8c\u8bc1\u65e0\u6548\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/nut/blehunter/ui/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 183
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_0

    .line 184
    const-string v0, "addMarker params is error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 188
    :cond_0
    if-eqz p3, :cond_5

    .line 189
    invoke-static {p3}, Lcom/nut/blehunter/ui/b/a;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    .line 194
    :goto_1
    new-instance v1, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 195
    invoke-virtual {p2}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/nut/blehunter/ui/b/a;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {v1, p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 199
    :cond_1
    if-eqz p3, :cond_2

    .line 200
    invoke-virtual {v1, v3, v3}, Lcom/amap/api/maps2d/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    .line 203
    invoke-static {p3}, Lcom/nut/blehunter/ui/b/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->showInfoWindow()V

    .line 206
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_4
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILcom/nut/blehunter/entity/Nut;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    const-string v0, "addMarker params is error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    .line 217
    :cond_1
    new-instance v0, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 218
    invoke-virtual {p2}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/a;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p3, p4}, Lcom/nut/blehunter/ui/b/a;->a(Landroid/content/Context;ILcom/nut/blehunter/entity/Nut;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 226
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    const-string v0, "addMarker params is error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    .line 236
    :cond_1
    new-instance v0, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    .line 237
    invoke-virtual {p2}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/a;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p3, p4}, Lcom/nut/blehunter/ui/b/a;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_3
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 378
    invoke-static {p1}, Lcom/amap/api/maps2d/CameraUpdateFactory;->zoomTo(F)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nut/blehunter/ui/b/a;->a(Lcom/amap/api/maps2d/CameraUpdate;Z)V

    .line 379
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->p:Lcom/amap/api/maps2d/model/Circle;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->p:Lcom/amap/api/maps2d/model/Circle;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps2d/model/Circle;->setRadius(D)V

    .line 3149
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_0

    .line 3150
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->invalidate()V

    .line 331
    :cond_0
    return-void
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;)V
    .locals 6

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    .line 368
    new-instance v1, Lcom/amap/api/services/core/LatLonPoint;

    .line 4048
    iget-wide v2, v0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 4052
    iget-wide v4, v0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 368
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 4619
    new-instance v0, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    const/high16 v2, 0x43480000    # 200.0f

    const-string v3, "autonavi"

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/services/geocoder/RegeocodeQuery;-><init>(Lcom/amap/api/services/core/LatLonPoint;FLjava/lang/String;)V

    .line 4620
    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a;->r:Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-virtual {v2, v0}, Lcom/amap/api/services/geocoder/GeocodeSearch;->getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    .line 4621
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->r:Lcom/amap/api/services/geocoder/GeocodeSearch;

    new-instance v2, Lcom/nut/blehunter/ui/b/c;

    invoke-direct {v2, p0, v1}, Lcom/nut/blehunter/ui/b/c;-><init>(Lcom/nut/blehunter/ui/b/a;Lcom/amap/api/services/core/LatLonPoint;)V

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch;->setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V

    .line 369
    return-void
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;D)V
    .locals 6

    .prologue
    const/16 v5, 0x32

    .line 322
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 2458
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    if-eqz v1, :cond_0

    .line 2459
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    new-instance v2, Lcom/amap/api/maps2d/model/CircleOptions;

    invoke-direct {v2}, Lcom/amap/api/maps2d/model/CircleOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/amap/api/maps2d/model/CircleOptions;->center(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/amap/api/maps2d/model/CircleOptions;->radius(D)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v0

    const/16 v2, 0x2c

    const/16 v3, 0x9b

    const/16 v4, 0x7a

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->strokeColor(I)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v0

    const/16 v2, 0x44

    const/16 v3, 0xc6

    const/16 v4, 0x97

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->fillColor(I)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/CircleOptions;->strokeWidth(F)Lcom/amap/api/maps2d/model/CircleOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->addCircle(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/maps2d/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->p:Lcom/amap/api/maps2d/model/Circle;

    .line 323
    :cond_0
    return-void
.end method

.method public final a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    if-nez p1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 296
    new-instance v1, Lcom/amap/api/maps2d/model/CameraPosition;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    .line 297
    invoke-static {v1}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    .line 298
    invoke-direct {p0, v0, p2}, Lcom/nut/blehunter/ui/b/a;->a(Lcom/amap/api/maps2d/CameraUpdate;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    .line 254
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    if-eqz p2, :cond_1

    .line 263
    invoke-static {p2}, Lcom/nut/blehunter/ui/b/a;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    move-object v1, v0

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/Marker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 269
    :cond_0
    return-void

    .line 265
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILcom/nut/blehunter/entity/Nut;)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/nut/blehunter/ui/b/a;->a(Landroid/content/Context;ILcom/nut/blehunter/entity/Nut;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    .line 275
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/Marker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 277
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/nut/blehunter/ui/b/a;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    .line 283
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/Marker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 285
    :cond_2
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nut/blehunter/entity/CustomLatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 303
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-virtual {p0, v0, v3}, Lcom/nut/blehunter/ui/b/a;->a(Lcom/nut/blehunter/entity/CustomLatLng;Z)V

    goto :goto_0

    .line 310
    :cond_1
    new-instance v1, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;-><init>()V

    .line 311
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/CustomLatLng;

    .line 312
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/CustomLatLng;->a()Lcom/nut/blehunter/entity/CustomLatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a;->b(Lcom/nut/blehunter/entity/CustomLatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    .line 313
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_1

    .line 315
    :cond_2
    invoke-virtual {v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    .line 316
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v0

    .line 317
    invoke-direct {p0, v0, v3}, Lcom/nut/blehunter/ui/b/a;->a(Lcom/amap/api/maps2d/CameraUpdate;Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/nut/blehunter/ui/b/a;->g:Z

    .line 403
    return-void
.end method

.method public activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a;->u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    .line 495
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->d()V

    .line 496
    return-void
.end method

.method public final b(I)F
    .locals 1

    .prologue
    .line 384
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    .line 385
    const/high16 v0, 0x41900000    # 18.0f

    .line 397
    :goto_0
    return v0

    .line 386
    :cond_0
    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_1

    .line 387
    const/high16 v0, 0x41880000    # 17.0f

    goto :goto_0

    .line 388
    :cond_1
    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_2

    .line 389
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0

    .line 390
    :cond_2
    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_3

    .line 391
    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    .line 392
    :cond_3
    const/16 v0, 0xfa0

    if-gt p1, v0, :cond_4

    .line 393
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0

    .line 395
    :cond_4
    const/high16 v0, 0x41500000    # 13.0f

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 343
    new-instance v0, Lcom/amap/api/services/help/Inputtips;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/nut/blehunter/ui/b/b;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/b/b;-><init>(Lcom/nut/blehunter/ui/b/a;)V

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/help/Inputtips;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V

    .line 359
    :try_start_0
    sget-object v1, Lcom/nut/blehunter/ui/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/services/help/Inputtips;->requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    const-string v1, "requestInputTips AMapException"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 158
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    .line 161
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 373
    const-string v0, ""

    sget-object v1, Lcom/nut/blehunter/ui/b/a;->d:Ljava/lang/String;

    .line 5471
    new-instance v2, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-direct {v2, p1, v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nut/blehunter/ui/b/a;->s:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 5472
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->s:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageSize(I)V

    .line 5473
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->s:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageNum(I)V

    .line 5475
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a;->s:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/poisearch/PoiSearch;-><init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    .line 5476
    invoke-virtual {v0, p0}, Lcom/amap/api/services/poisearch/PoiSearch;->setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V

    .line 5477
    invoke-virtual {v0}, Lcom/amap/api/services/poisearch/PoiSearch;->searchPOIAsyn()V

    .line 374
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 165
    .line 2170
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_0

    .line 2171
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 2174
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 2175
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 2176
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocationClientOption;->setInterval(J)Lcom/amap/api/location/AMapLocationClientOption;

    .line 2177
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 2178
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 166
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    .line 501
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->c()V

    .line 502
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->p:Lcom/amap/api/maps2d/model/Circle;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->p:Lcom/amap/api/maps2d/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Circle;->remove()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->p:Lcom/amap/api/maps2d/model/Circle;

    .line 339
    :cond_0
    return-void
.end method

.method public final f_()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->clear()V

    .line 137
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->w:Lcom/amap/api/location/AMapLocation;

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 145
    :cond_0
    return-void
.end method

.method public getInfoContents(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCameraChange(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 7

    .prologue
    .line 678
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 682
    iget-object v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 683
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->n:Lcom/nut/blehunter/ui/b/p;

    if-eqz v0, :cond_0

    .line 684
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    .line 685
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->n:Lcom/nut/blehunter/ui/b/p;

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/b/p;->b(Lcom/nut/blehunter/entity/CustomLatLng;)V

    goto :goto_0
.end method

.method public onCameraChangeFinish(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 7

    .prologue
    .line 691
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 695
    iget-object v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 696
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->n:Lcom/nut/blehunter/ui/b/p;

    if-eqz v0, :cond_0

    .line 697
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    .line 698
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->n:Lcom/nut/blehunter/ui/b/p;

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/b/p;->c(Lcom/nut/blehunter/entity/CustomLatLng;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/i;->onCreate(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 90
    const v0, 0x7f03006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1406
    const v0, 0x7f0d01a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/MapView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    .line 1407
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0, p3}, Lcom/amap/api/maps2d/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 1408
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    const v2, 0x7f020284

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/MapView;->setBackgroundResource(I)V

    .line 1415
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    .line 1416
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V

    .line 1417
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V

    .line 1418
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/AMap;->setOnInfoWindowClickListener(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V

    .line 1419
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/AMap;->setInfoWindowAdapter(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V

    .line 1420
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/AMap;->setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V

    .line 1421
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V

    .line 1423
    new-instance v0, Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->r:Lcom/amap/api/services/geocoder/GeocodeSearch;

    .line 93
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 100
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    .line 104
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onDestroy()V

    .line 107
    :cond_1
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/i;->onDestroy()V

    .line 108
    return-void
.end method

.method public onInfoWindowClick(Lcom/amap/api/maps2d/model/Marker;)V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 506
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    .line 507
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    .line 508
    cmpl-double v0, v2, v8

    if-nez v0, :cond_1

    cmpl-double v0, v4, v8

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->t:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->getLastKnownLocation()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    .line 510
    if-nez p1, :cond_0

    .line 529
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    .line 514
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    .line 515
    cmpl-double v0, v2, v8

    if-nez v0, :cond_1

    cmpl-double v0, v4, v8

    if-nez v0, :cond_1

    .line 516
    const-string v0, "\u83b7\u53d6\u7ecf\u7eac\u5ea6\u4fe1\u606f\u5931\u8d25"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 520
    :cond_1
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/a;->w:Lcom/amap/api/location/AMapLocation;

    .line 521
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nut/blehunter/ui/b/a;->d:Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->u:Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->i:Lcom/nut/blehunter/ui/b/t;

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->i:Lcom/nut/blehunter/ui/b/t;

    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    invoke-interface {v0, v1}, Lcom/nut/blehunter/ui/b/t;->a(Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 528
    :cond_3
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->c()V

    goto :goto_0
.end method

.method public onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 7

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->j:Lcom/nut/blehunter/ui/b/u;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->j:Lcom/nut/blehunter/ui/b/u;

    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/u;->d()V

    .line 550
    :cond_0
    return-void
.end method

.method public onMapLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    .line 6427
    new-instance v0, Lcom/amap/api/maps2d/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/MyLocationStyle;-><init>()V

    .line 6428
    const v1, 0x7f02026e

    invoke-static {v1}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 6430
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/MyLocationStyle;->strokeColor(I)Lcom/amap/api/maps2d/model/MyLocationStyle;

    .line 6433
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMap;->setMyLocationStyle(Lcom/amap/api/maps2d/model/MyLocationStyle;)V

    .line 6434
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/AMap;->setLocationSource(Lcom/amap/api/maps2d/LocationSource;)V

    .line 6435
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 6437
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    .line 6438
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    iget-boolean v1, p0, Lcom/nut/blehunter/ui/b/a;->g:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setMyLocationEnabled(Z)V

    .line 537
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->h:Lcom/nut/blehunter/ui/b/s;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->h:Lcom/nut/blehunter/ui/b/s;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/b/s;->p()V

    .line 540
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 665
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/b/a;->f:Z

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/Marker;->showInfoWindow()V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->k:Lcom/nut/blehunter/ui/b/v;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 669
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    .line 671
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->k:Lcom/nut/blehunter/ui/b/v;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/Marker;->getTitle()Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/nut/blehunter/ui/b/v;->a(Ljava/lang/String;Lcom/nut/blehunter/entity/CustomLatLng;)V

    .line 673
    :cond_1
    return v6
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/i;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onPause()V

    .line 120
    return-void
.end method

.method public onPoiItemSearched(Lcom/amap/api/services/core/PoiItem;I)V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method public onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V
    .locals 4

    .prologue
    const v3, 0x7f0601ea

    .line 557
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_4

    .line 558
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 559
    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->s:Lcom/amap/api/services/poisearch/PoiSearch$Query;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getPois()Ljava/util/ArrayList;

    move-result-object v0

    .line 564
    invoke-virtual {p1}, Lcom/amap/api/services/poisearch/PoiResult;->getSearchSuggestionCitys()Ljava/util/List;

    move-result-object v1

    .line 566
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 567
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMap;->clear()V

    .line 568
    new-instance v1, Lcom/amap/api/maps2d/overlay/PoiOverlay;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/a;->o:Lcom/amap/api/maps2d/AMap;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/maps2d/overlay/PoiOverlay;-><init>(Lcom/amap/api/maps2d/AMap;Ljava/util/List;)V

    .line 569
    invoke-virtual {v1}, Lcom/amap/api/maps2d/overlay/PoiOverlay;->removeFromMap()V

    .line 570
    invoke-virtual {v1}, Lcom/amap/api/maps2d/overlay/PoiOverlay;->addToMap()V

    .line 571
    invoke-virtual {v1}, Lcom/amap/api/maps2d/overlay/PoiOverlay;->zoomToSpan()V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 575
    :cond_2
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 582
    :cond_4
    const-string v0, "onPoiSearched"

    invoke-direct {p0, v0, p2}, Lcom/nut/blehunter/ui/b/a;->b(Ljava/lang/String;I)V

    .line 583
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/nut/blehunter/ui/b/i;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapView;->onResume()V

    .line 126
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/a;->q:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method
