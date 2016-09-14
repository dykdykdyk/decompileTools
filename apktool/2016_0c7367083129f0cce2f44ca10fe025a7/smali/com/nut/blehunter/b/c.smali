.class final Lcom/nut/blehunter/b/c;
.super Ljava/lang/Object;
.source "MixReGeocodeAddress.java"

# interfaces
.implements Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/b/e;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:D

.field final synthetic d:D

.field final synthetic e:Lcom/nut/blehunter/b/b;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/b/b;Lcom/nut/blehunter/b/e;Landroid/content/Context;DD)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nut/blehunter/b/c;->e:Lcom/nut/blehunter/b/b;

    iput-object p2, p0, Lcom/nut/blehunter/b/c;->a:Lcom/nut/blehunter/b/e;

    iput-object p3, p0, Lcom/nut/blehunter/b/c;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/nut/blehunter/b/c;->c:D

    iput-wide p6, p0, Lcom/nut/blehunter/b/c;->d:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/nut/blehunter/b/c;->a:Lcom/nut/blehunter/b/e;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 54
    :cond_0
    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MixReGeocodeAddress rCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/nut/blehunter/b/c;->a:Lcom/nut/blehunter/b/e;

    invoke-interface {v0, v8, v7}, Lcom/nut/blehunter/b/e;->a(Lcom/nut/blehunter/b/a;I)V

    goto :goto_0

    .line 61
    :cond_1
    :try_start_0
    new-instance v1, Lcom/nut/blehunter/b/a;

    iget-wide v2, p0, Lcom/nut/blehunter/b/c;->c:D

    iget-wide v4, p0, Lcom/nut/blehunter/b/c;->d:D

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeResult;->getRegeocodeAddress()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/nut/blehunter/b/a;-><init>(DDLcom/amap/api/services/geocoder/RegeocodeAddress;)V

    .line 62
    iget-object v0, p0, Lcom/nut/blehunter/b/c;->a:Lcom/nut/blehunter/b/e;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nut/blehunter/b/e;->a(Lcom/nut/blehunter/b/a;I)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reGeocodeAddress result:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/b/c;->a:Lcom/nut/blehunter/b/e;

    invoke-interface {v0, v8, v7}, Lcom/nut/blehunter/b/e;->a(Lcom/nut/blehunter/b/a;I)V

    goto :goto_0
.end method
