.class public Lcom/nut/blehunter/b/a;
.super Ljava/lang/Object;
.source "MixAddress.java"


# instance fields
.field public a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createTime"
    .end annotation
.end field

.field public b:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field public c:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countryName"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adminArea"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subAdminArea"
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locality"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subLocality"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thoroughfare"
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subThoroughfare"
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thoroughfareNumber"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(DDLandroid/location/Address;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/b/a;->a:J

    .line 57
    iput-wide p1, p0, Lcom/nut/blehunter/b/a;->b:D

    .line 58
    iput-wide p3, p0, Lcom/nut/blehunter/b/a;->c:D

    .line 59
    invoke-virtual {p5}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->d:Ljava/lang/String;

    .line 60
    invoke-virtual {p5}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->e:Ljava/lang/String;

    .line 61
    invoke-virtual {p5}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    .line 62
    invoke-virtual {p5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->g:Ljava/lang/String;

    .line 63
    invoke-virtual {p5}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->h:Ljava/lang/String;

    .line 64
    invoke-virtual {p5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->i:Ljava/lang/String;

    .line 65
    invoke-virtual {p5}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->j:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(DDLcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/nut/blehunter/d/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/b/a;->a:J

    .line 70
    iput-wide p1, p0, Lcom/nut/blehunter/b/a;->b:D

    .line 71
    iput-wide p3, p0, Lcom/nut/blehunter/b/a;->c:D

    .line 72
    invoke-virtual {p5}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getProvince()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->e:Ljava/lang/String;

    .line 73
    invoke-virtual {p5}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    .line 74
    invoke-virtual {p5}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getDistrict()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->g:Ljava/lang/String;

    .line 75
    invoke-virtual {p5}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getTownship()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->h:Ljava/lang/String;

    .line 76
    invoke-virtual {p5}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->i:Ljava/lang/String;

    .line 77
    invoke-virtual {p5}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getRoads()Ljava/util/List;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeRoad;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->j:Ljava/lang/String;

    .line 84
    :cond_0
    invoke-virtual {p5}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getStreetNumber()Lcom/amap/api/services/geocoder/StreetNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p5}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getStreetNumber()Lcom/amap/api/services/geocoder/StreetNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/StreetNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b/a;->k:Ljava/lang/String;

    .line 87
    :cond_1
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Lcom/nut/blehunter/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "%s %s%s,%s,%s%s,%s"

    .line 99
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->k:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->i:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->j:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->g:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/nut/blehunter/b/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/nut/blehunter/b/a;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    const-string v0, "%s%s%s%s%s"

    .line 103
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->g:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->j:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/nut/blehunter/b/a;->k:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-direct {p0}, Lcom/nut/blehunter/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string v0, ""

    .line 118
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/u;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string v1, "%s %s%s,%s"

    .line 113
    iget-object v0, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    .line 114
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nut/blehunter/b/a;->k:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/nut/blehunter/b/a;->i:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nut/blehunter/b/a;->j:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/b/a;->e:Ljava/lang/String;

    goto :goto_1

    .line 116
    :cond_2
    const-string v1, "%s%s%s"

    .line 117
    iget-object v0, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    .line 118
    :goto_2
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/nut/blehunter/b/a;->j:Ljava/lang/String;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/nut/blehunter/b/a;->k:Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/b/a;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MixAddress{createTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/nut/blehunter/b/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nut/blehunter/b/a;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nut/blehunter/b/a;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adminArea=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subAdminArea=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locality=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subLocality=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thoroughfare=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subThoroughfare=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thoroughfareNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/b/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
