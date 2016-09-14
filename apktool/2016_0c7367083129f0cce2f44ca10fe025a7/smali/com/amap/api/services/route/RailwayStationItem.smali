.class public Lcom/amap/api/services/route/RailwayStationItem;
.super Ljava/lang/Object;
.source "RailwayStationItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RailwayStationItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amap/api/services/core/LatLonPoint;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/amap/api/services/route/RailwayStationItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RailwayStationItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RailwayStationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    .line 16
    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v1, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    .line 16
    iput-boolean v1, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->a:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->b:Ljava/lang/String;

    .line 199
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->d:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->e:Ljava/lang/String;

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 204
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    .line 205
    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->h:F

    .line 207
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getAdcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWait()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->h:F

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    return v0
.end method

.method public setAdcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->d:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->a:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setLocation(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    .line 123
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->b:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->e:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setWait(F)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->h:F

    .line 168
    return-void
.end method

.method public setisEnd(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    .line 159
    return-void
.end method

.method public setisStart(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    .line 150
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 189
    iget v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 190
    return-void
.end method
