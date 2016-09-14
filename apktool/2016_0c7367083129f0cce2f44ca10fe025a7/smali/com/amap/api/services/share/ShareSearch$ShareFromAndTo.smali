.class public Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 1

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const-string v0, "\u8d77\u70b9"

    iput-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->c:Ljava/lang/String;

    .line 602
    const-string v0, "\u7ec8\u70b9"

    iput-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->d:Ljava/lang/String;

    .line 614
    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 615
    iput-object p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 616
    return-void
.end method


# virtual methods
.method public getFrom()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getFromName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getToName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setFromName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->c:Ljava/lang/String;

    .line 627
    return-void
.end method

.method public setToName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->d:Ljava/lang/String;

    .line 638
    return-void
.end method
