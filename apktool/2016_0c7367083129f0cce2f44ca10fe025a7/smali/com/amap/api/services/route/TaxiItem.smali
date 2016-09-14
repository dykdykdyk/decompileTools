.class public Lcom/amap/api/services/route/TaxiItem;
.super Ljava/lang/Object;
.source "TaxiItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/TaxiItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:F

.field private d:F

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/amap/api/services/route/TaxiItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/TaxiItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/TaxiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 146
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/TaxiItem;->c:F

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/TaxiItem;->d:F

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->e:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->f:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getDestination()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/amap/api/services/route/TaxiItem;->c:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/amap/api/services/route/TaxiItem;->d:F

    return v0
.end method

.method public getOrigin()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getmSname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getmTname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setDestination(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amap/api/services/route/TaxiItem;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 85
    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/amap/api/services/route/TaxiItem;->c:F

    .line 93
    return-void
.end method

.method public setDuration(F)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/amap/api/services/route/TaxiItem;->d:F

    .line 101
    return-void
.end method

.method public setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amap/api/services/route/TaxiItem;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 77
    return-void
.end method

.method public setSname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amap/api/services/route/TaxiItem;->e:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setTname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amap/api/services/route/TaxiItem;->f:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    iget-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    iget v0, p0, Lcom/amap/api/services/route/TaxiItem;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 134
    iget v0, p0, Lcom/amap/api/services/route/TaxiItem;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 135
    iget-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/route/TaxiItem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return-void
.end method
