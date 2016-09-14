.class public Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# instance fields
.field private a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;I)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    .line 460
    iput p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->b:I

    .line 461
    return-void
.end method


# virtual methods
.method public getShareFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    return-object v0
.end method

.method public getWalkMode()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->b:I

    return v0
.end method
