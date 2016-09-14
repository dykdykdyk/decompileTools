.class final Lcom/nut/blehunter/ui/b/c;
.super Ljava/lang/Object;
.source "AMapFragment.java"

# interfaces
.implements Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;


# instance fields
.field final synthetic a:Lcom/amap/api/services/core/LatLonPoint;

.field final synthetic b:Lcom/nut/blehunter/ui/b/a;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/a;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/c;->b:Lcom/nut/blehunter/ui/b/a;

    iput-object p2, p0, Lcom/nut/blehunter/ui/b/c;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 645
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 646
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/GeocodeResult;->getGeocodeAddressList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/GeocodeResult;->getGeocodeAddressList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 648
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/GeocodeResult;->getGeocodeAddressList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/geocoder/GeocodeAddress;

    .line 649
    const-string v1, "\u7ecf\u7eac\u5ea6:%s<%s>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/GeocodeAddress;->getFormatAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    :goto_0
    return-void

    .line 651
    :cond_0
    const-string v0, "result is null."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/c;->b:Lcom/nut/blehunter/ui/b/a;

    const-string v1, "onGeocodeSearched"

    invoke-static {v0, v1, p2}, Lcom/nut/blehunter/ui/b/a;->a(Lcom/nut/blehunter/ui/b/a;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 626
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_1

    .line 628
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeResult;->getRegeocodeAddress()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getFormatAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 636
    :goto_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/c;->b:Lcom/nut/blehunter/ui/b/a;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a;->m:Lcom/nut/blehunter/ui/b/q;

    if-eqz v1, :cond_0

    .line 637
    new-instance v1, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/c;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/nut/blehunter/ui/b/c;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v4}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DDB)V

    .line 639
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/c;->b:Lcom/nut/blehunter/ui/b/a;

    iget-object v1, v1, Lcom/nut/blehunter/ui/b/a;->m:Lcom/nut/blehunter/ui/b/q;

    invoke-interface {v1, v0}, Lcom/nut/blehunter/ui/b/q;->c(Ljava/lang/String;)V

    .line 641
    :cond_0
    return-void

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/c;->b:Lcom/nut/blehunter/ui/b/a;

    const-string v2, "onReGeocodeSearched"

    invoke-static {v1, v2, p2}, Lcom/nut/blehunter/ui/b/a;->a(Lcom/nut/blehunter/ui/b/a;Ljava/lang/String;I)V

    goto :goto_0

    .line 630
    :catch_0
    move-exception v1

    goto :goto_0
.end method
