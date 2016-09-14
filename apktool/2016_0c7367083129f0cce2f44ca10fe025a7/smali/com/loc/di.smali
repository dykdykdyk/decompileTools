.class public final Lcom/loc/di;
.super Ljava/lang/Object;
.source "ReportEntity.java"


# instance fields
.field a:J

.field b:J

.field c:Lcom/autonavi/aps/amapapi/model/AmapLoc;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/di;->a:J

    iput-wide v0, p0, Lcom/loc/di;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/di;->c:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-void
.end method
