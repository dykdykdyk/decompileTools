.class public Lcom/amap/api/services/geocoder/GeocodeQuery;
.super Ljava/lang/Object;
.source "GeocodeQuery.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    check-cast p1, Lcom/amap/api/services/geocoder/GeocodeQuery;

    .line 87
    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 88
    iget-object v2, p1, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 93
    iget-object v2, p1, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 96
    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 68
    :goto_1
    add-int/2addr v0, v1

    .line 69
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeQuery;->a:Ljava/lang/String;

    .line 39
    return-void
.end method
