.class public Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# instance fields
.field private a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;I)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    .line 567
    iput p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;->b:I

    .line 568
    return-void
.end method


# virtual methods
.method public getBusMode()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;->b:I

    return v0
.end method

.method public getShareFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    return-object v0
.end method
