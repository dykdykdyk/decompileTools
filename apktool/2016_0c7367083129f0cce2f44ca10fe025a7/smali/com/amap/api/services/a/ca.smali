.class public Lcom/amap/api/services/a/ca;
.super Ljava/lang/Object;
.source "DexDownloadItem.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amap/api/services/a/ca;->h:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/amap/api/services/a/ca;->i:Ljava/lang/String;

    .line 55
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    array-length v1, v0

    .line 58
    if-gt v1, v2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 61
    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/amap/api/services/a/ca;->a:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/amap/api/services/a/ca;->a:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/amap/api/services/a/ca;->b:Ljava/lang/String;

    .line 67
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/amap/api/services/a/ca;->c:Ljava/lang/String;

    .line 69
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/amap/api/services/a/ca;->d:Ljava/lang/String;

    .line 71
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/services/a/ca;->f:I

    .line 73
    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/a/ca;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    const-string v1, "DexDownloadItem"

    const-string v2, "DexDownloadItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/services/a/ca;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/a/ca;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amap/api/services/a/ca;->c:Ljava/lang/String;

    return-object v0
.end method
