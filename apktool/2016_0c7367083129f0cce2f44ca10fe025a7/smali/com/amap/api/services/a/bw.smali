.class public Lcom/amap/api/services/a/bw;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/a/bm;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/services/a/bw;->b:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/amap/api/services/a/bw;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/amap/api/services/a/bw;->a(Landroid/content/Context;Z)Lcom/amap/api/services/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bw;->a:Lcom/amap/api/services/a/bm;

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;Z)Lcom/amap/api/services/a/bm;
    .locals 4

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 26
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/bm;

    const-class v2, Lcom/amap/api/services/a/bt;

    invoke-static {v2}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Class;)Lcom/amap/api/services/a/bl;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    if-nez p2, :cond_0

    .line 29
    const-string v2, "SDKDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/a/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/ba;->e()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/amap/api/services/a/bw;->a:Lcom/amap/api/services/a/bm;

    const-class v3, Lcom/amap/api/services/a/ba;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/services/a/ba;)V
    .locals 3

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bw;->a:Lcom/amap/api/services/a/bm;

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/amap/api/services/a/bw;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/a/bw;->a(Landroid/content/Context;Z)Lcom/amap/api/services/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bw;->a:Lcom/amap/api/services/a/bm;

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/a/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/amap/api/services/a/bw;->a:Lcom/amap/api/services/a/bm;

    const-class v2, Lcom/amap/api/services/a/ba;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/a/bw;->a:Lcom/amap/api/services/a/bm;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "SDKDB"

    const-string v2, "insert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 55
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/services/a/bw;->a:Lcom/amap/api/services/a/bm;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
