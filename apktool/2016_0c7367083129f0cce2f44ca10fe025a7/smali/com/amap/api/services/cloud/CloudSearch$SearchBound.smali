.class public Lcom/amap/api/services/cloud/CloudSearch$SearchBound;
.super Ljava/lang/Object;
.source "CloudSearch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BOUND_SHAPE:Ljava/lang/String; = "Bound"

.field public static final LOCAL_SHAPE:Ljava/lang/String; = "Local"

.field public static final POLYGON_SHAPE:Ljava/lang/String; = "Polygon"

.field public static final RECTANGLE_SHAPE:Ljava/lang/String; = "Rectangle"


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:I

.field private d:Lcom/amap/api/services/core/LatLonPoint;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;I)V
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    const-string v0, "Bound"

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->e:Ljava/lang/String;

    .line 630
    iput p2, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->c:I

    .line 631
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 632
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    const-string v0, "Rectangle"

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->e:Ljava/lang/String;

    .line 642
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V

    .line 643
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    const-string v0, "Local"

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->e:Ljava/lang/String;

    .line 662
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->g:Ljava/lang/String;

    .line 663
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    const-string v0, "Polygon"

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->e:Ljava/lang/String;

    .line 652
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->f:Ljava/util/List;

    .line 653
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 805
    const/4 v0, 0x0

    .line 813
    :goto_0
    return-object v0

    .line 807
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 808
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 809
    new-instance v3, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    .line 810
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 811
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 813
    goto :goto_0
.end method

.method private a(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 4

    .prologue
    .line 666
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 667
    iput-object p2, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 668
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 669
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid rect "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 739
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v0, v1

    .line 751
    :goto_0
    return v0

    .line 742
    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 743
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 744
    :goto_1
    if-ge v3, v4, :cond_2

    .line 745
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 746
    goto :goto_0

    .line 744
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 749
    goto :goto_0

    :cond_3
    move v0, v2

    .line 751
    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;
    .locals 3

    .prologue
    .line 822
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    new-instance v0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget v2, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->c:I

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;-><init>(Lcom/amap/api/services/core/LatLonPoint;I)V

    .line 834
    :goto_1
    return-object v0

    .line 825
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Polygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    new-instance v0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    invoke-direct {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 832
    new-instance v0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 834
    :cond_2
    new-instance v0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;-><init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->clone()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 783
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    if-nez v2, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v0

    .line 786
    :cond_1
    check-cast p1, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    .line 787
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    iget-object v2, p1, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->c:I

    iget v3, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->c:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 793
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Polygon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 794
    iget-object v0, p1, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->f:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 795
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->getShape()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Local"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 796
    iget-object v0, p1, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 798
    :cond_4
    iget-object v2, p1, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 799
    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCenter()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLowerLeft()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getPolyGonList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->f:Ljava/util/List;

    return-object v0
.end method

.method public getRange()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->c:I

    return v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperRight()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 761
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_0

    move v0, v1

    .line 762
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 763
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_1

    move v0, v1

    .line 764
    :goto_1
    add-int/2addr v0, v2

    .line 765
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_2

    move v0, v1

    .line 766
    :goto_2
    add-int/2addr v0, v2

    .line 767
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->f:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    .line 768
    :goto_3
    add-int/2addr v0, v2

    .line 769
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->c:I

    add-int/2addr v0, v2

    .line 770
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 771
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->g:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 772
    return v0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->d:Lcom/amap/api/services/core/LatLonPoint;

    .line 762
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 764
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_1

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 766
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_2

    .line 767
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->f:Ljava/util/List;

    .line 768
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_3

    .line 770
    :cond_4
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 771
    :cond_5
    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method
