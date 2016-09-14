.class public Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 790
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    const-class v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    .line 779
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;I)V
    .locals 0

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 731
    iput p2, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    .line 732
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;
    .locals 3

    .prologue
    .line 848
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;-><init>(Lcom/amap/api/services/route/RouteSearch$FromAndTo;I)V

    return-object v0

    .line 850
    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "WalkRouteQueryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 825
    if-ne p0, p1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 827
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 828
    goto :goto_0

    .line 829
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 830
    goto :goto_0

    .line 831
    :cond_3
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    .line 832
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v2, :cond_4

    .line 833
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-eqz v2, :cond_5

    move v0, v1

    .line 834
    goto :goto_0

    .line 835
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 836
    goto :goto_0

    .line 837
    :cond_5
    iget v2, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    iget v3, p1, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 838
    goto :goto_0
.end method

.method public getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 811
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    add-int/2addr v0, v1

    .line 812
    return v0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->a:Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 768
    iget v0, p0, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    return-void
.end method
