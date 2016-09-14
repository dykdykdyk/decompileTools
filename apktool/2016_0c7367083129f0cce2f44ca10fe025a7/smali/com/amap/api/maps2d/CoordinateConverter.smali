.class public Lcom/amap/api/maps2d/CoordinateConverter;
.super Ljava/lang/Object;
.source "CoordinateConverter.java"


# instance fields
.field private a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

.field private b:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    .line 18
    iput-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    return-void
.end method


# virtual methods
.method public convert()Lcom/amap/api/maps2d/model/LatLng;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/amap/api/maps2d/CoordinateConverter;->a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/amap/api/maps2d/CoordinateConverter$1;->a:[I

    iget-object v2, p0, Lcom/amap/api/maps2d/CoordinateConverter;->a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/CoordinateConverter$CoordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cd;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cf;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    goto :goto_0

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cg;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public coord(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CoordinateConverter;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amap/api/maps2d/CoordinateConverter;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 27
    return-object p0
.end method

.method public from(Lcom/amap/api/maps2d/CoordinateConverter$CoordType;)Lcom/amap/api/maps2d/CoordinateConverter;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/amap/api/maps2d/CoordinateConverter;->a:Lcom/amap/api/maps2d/CoordinateConverter$CoordType;

    .line 22
    return-object p0
.end method
