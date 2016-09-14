.class public final Lcom/loc/dq;
.super Ljava/lang/Object;
.source "GPSLocation.java"


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/content/Context;

.field c:Landroid/location/LocationManager;

.field d:Lcom/amap/api/location/AMapLocationClientOption;

.field e:Lcom/loc/di;

.field f:Lcom/amap/api/location/CoordinateConverter;

.field g:J

.field h:J

.field i:Z

.field j:J

.field k:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/j;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/dq;->e:Lcom/loc/di;

    iput-object v0, p0, Lcom/loc/dq;->f:Lcom/amap/api/location/CoordinateConverter;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/loc/dq;->g:J

    iput-wide v2, p0, Lcom/loc/dq;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/dq;->i:Z

    iput-wide v2, p0, Lcom/loc/dq;->j:J

    new-instance v0, Lcom/loc/dr;

    invoke-direct {v0, p0}, Lcom/loc/dr;-><init>(Lcom/loc/dq;)V

    iput-object v0, p0, Lcom/loc/dq;->k:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/loc/dq;->b:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/location/CoordinateConverter;

    iget-object v1, p0, Lcom/loc/dq;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/dq;->f:Lcom/amap/api/location/CoordinateConverter;

    iput-object p2, p0, Lcom/loc/dq;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/loc/dq;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/dq;->c:Landroid/location/LocationManager;

    new-instance v0, Lcom/loc/di;

    invoke-direct {v0}, Lcom/loc/di;-><init>()V

    iput-object v0, p0, Lcom/loc/dq;->e:Lcom/loc/di;

    return-void
.end method
