.class public Lcom/amap/api/mapcore2d/at$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapOverlayViewGroup.java"


# instance fields
.field public a:I

.field public b:Lcom/amap/api/maps2d/model/LatLng;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IILcom/amap/api/maps2d/model/LatLng;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/at$a;->a:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/at$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 44
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->c:I

    .line 45
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->d:I

    .line 46
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/mapcore2d/at$a;->e:I

    .line 55
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->a:I

    .line 56
    iput-object p3, p0, Lcom/amap/api/mapcore2d/at$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 57
    iput p4, p0, Lcom/amap/api/mapcore2d/at$a;->c:I

    .line 58
    iput p5, p0, Lcom/amap/api/mapcore2d/at$a;->d:I

    .line 59
    iput p6, p0, Lcom/amap/api/mapcore2d/at$a;->e:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/at$a;->a:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/at$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 44
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->c:I

    .line 45
    iput v1, p0, Lcom/amap/api/mapcore2d/at$a;->d:I

    .line 46
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/mapcore2d/at$a;->e:I

    .line 75
    return-void
.end method
