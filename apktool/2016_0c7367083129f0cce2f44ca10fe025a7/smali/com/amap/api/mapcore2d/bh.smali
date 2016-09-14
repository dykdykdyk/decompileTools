.class abstract Lcom/amap/api/mapcore2d/bh;
.super Lcom/amap/api/mapcore2d/eg;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore2d/eg;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/eg;-><init>()V

    .line 191
    iput v1, p0, Lcom/amap/api/mapcore2d/bh;->b:I

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/bh;->f:I

    .line 29
    iput v1, p0, Lcom/amap/api/mapcore2d/bh;->b:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/bh;->f:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bh;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bh;->a:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private b([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bh;->a([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v2, "GetDataMayThrow"

    .line 97
    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bh;->b()[B

    move-result-object v1

    .line 100
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/bh;->b([B)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bh;->c()Ljava/lang/Object;

    .line 104
    new-instance v1, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :catch_1
    move-exception v1

    const-string v3, "ProtocalHandler"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bh;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bh;->d()Ljava/lang/Object;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0
.end method

.method protected abstract a([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method protected b()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 66
    const-string v2, "getData"

    .line 69
    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/bh;->b:I

    if-ge v0, v1, :cond_1

    .line 71
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ef;->a(Z)Lcom/amap/api/mapcore2d/ef;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p0}, Lcom/amap/api/mapcore2d/ef;->d(Lcom/amap/api/mapcore2d/eg;)[B
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_1
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    iget v3, p0, Lcom/amap/api/mapcore2d/bh;->b:I

    if-ge v0, v3, :cond_0

    .line 79
    :try_start_1
    iget v3, p0, Lcom/amap/api/mapcore2d/bh;->f:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    const-string v3, "ProtocalHandler"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cl;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/cl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method
