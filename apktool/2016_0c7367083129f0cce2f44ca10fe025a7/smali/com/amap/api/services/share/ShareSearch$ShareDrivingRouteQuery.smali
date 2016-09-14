.class public Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# instance fields
.field private a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;I)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    .line 509
    iput p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->b:I

    .line 510
    return-void
.end method


# virtual methods
.method public getDrivingMode()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->b:I

    return v0
.end method

.method public getShareFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    return-object v0
.end method
