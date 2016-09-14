.class public Lcom/amap/api/services/core/PoiItem;
.super Ljava/lang/Object;
.source "PoiItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/amap/api/services/core/LatLonPoint;

.field private h:Lcom/amap/api/services/core/LatLonPoint;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field protected final mPoint:Lcom/amap/api/services/core/LatLonPoint;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/amap/api/services/poisearch/IndoorData;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 486
    new-instance v0, Lcom/amap/api/services/core/PoiItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/core/PoiItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/PoiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/util/List;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    .line 455
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 457
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 456
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mPoint:Lcom/amap/api/services/core/LatLonPoint;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mSnippet:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    .line 461
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 463
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 462
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->g:Lcom/amap/api/services/core/LatLonPoint;

    .line 464
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 466
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 465
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->h:Lcom/amap/api/services/core/LatLonPoint;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->j:Ljava/lang/String;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->k:Ljava/lang/String;

    .line 470
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 471
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 472
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/amap/api/services/core/PoiItem;->p:Z

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->s:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->t:Ljava/lang/String;

    .line 480
    const-class v0, Lcom/amap/api/services/poisearch/SubPoiItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/util/List;

    .line 481
    const-class v0, Lcom/amap/api/services/poisearch/IndoorData;

    .line 483
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 482
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/poisearch/IndoorData;

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->q:Lcom/amap/api/services/poisearch/IndoorData;

    .line 484
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/amap/api/services/core/PoiItem;->mPoint:Lcom/amap/api/services/core/LatLonPoint;

    .line 67
    iput-object p3, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/amap/api/services/core/PoiItem;->mSnippet:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 541
    if-ne p0, p1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v0

    .line 543
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 544
    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 546
    goto :goto_0

    .line 547
    :cond_3
    check-cast p1, Lcom/amap/api/services/core/PoiItem;

    .line 548
    iget-object v2, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 549
    iget-object v2, p1, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 550
    goto :goto_0

    .line 551
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 552
    goto :goto_0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getEnter()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->g:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getExit()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->h:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getIndoorData()Lcom/amap/api/services/poisearch/IndoorData;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->q:Lcom/amap/api/services/poisearch/IndoorData;

    return-object v0
.end method

.method public getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mPoint:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getParkingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSubPois()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/util/List;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 565
    return v0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isIndoorMap()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/amap/api/services/core/PoiItem;->p:Z

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setAdName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setBusinessArea(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->s:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    .line 205
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->k:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setEnter(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->g:Lcom/amap/api/services/core/LatLonPoint;

    .line 269
    return-void
.end method

.method public setExit(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->h:Lcom/amap/api/services/core/LatLonPoint;

    .line 288
    return-void
.end method

.method public setIndoorDate(Lcom/amap/api/services/poisearch/IndoorData;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->q:Lcom/amap/api/services/poisearch/IndoorData;

    .line 446
    return-void
.end method

.method public setIndoorMap(Z)V
    .locals 0

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/amap/api/services/core/PoiItem;->p:Z

    .line 371
    return-void
.end method

.method public setParkingType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->t:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setPostcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->j:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setProvinceCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSubPois(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 421
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/util/List;

    .line 422
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setTypeDes(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget v0, p0, Lcom/amap/api/services/core/PoiItem;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mPoint:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->g:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->h:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/services/core/PoiItem;->p:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 523
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->u:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 531
    iget-object v0, p0, Lcom/amap/api/services/core/PoiItem;->q:Lcom/amap/api/services/poisearch/IndoorData;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 532
    return-void
.end method
