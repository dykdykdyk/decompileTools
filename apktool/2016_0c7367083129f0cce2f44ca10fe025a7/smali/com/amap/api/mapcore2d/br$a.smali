.class Lcom/amap/api/mapcore2d/br$a;
.super Ljava/lang/Object;
.source "TileOverlayView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/br;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/br;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amap/api/mapcore2d/br$a;->a:Lcom/amap/api/mapcore2d/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/br;Lcom/amap/api/mapcore2d/br$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/br$a;-><init>(Lcom/amap/api/mapcore2d/br;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 23
    const-string v1, "compare"

    .line 24
    check-cast p1, Lcom/amap/api/mapcore2d/aj;

    .line 25
    check-cast p2, Lcom/amap/api/mapcore2d/aj;

    .line 27
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 28
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aj;->d()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/aj;->d()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    .line 30
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aj;->d()F

    move-result v0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/aj;->d()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 31
    const/4 v0, -0x1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    const-string v2, "TileOverlayView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
