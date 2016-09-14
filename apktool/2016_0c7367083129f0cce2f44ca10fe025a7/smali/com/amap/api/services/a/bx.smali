.class public Lcom/amap/api/services/a/bx;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/a/bm;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/services/a/bx;->b:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/amap/api/services/a/bx;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bx;->a(Landroid/content/Context;)Lcom/amap/api/services/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/amap/api/services/a/bm;
    .locals 4

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/bm;

    const-class v2, Lcom/amap/api/services/a/bt;

    invoke-static {v2}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Class;)Lcom/amap/api/services/a/bl;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    const-string v2, "UpdateLogDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/services/a/by;
    .locals 4

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amap/api/services/a/bx;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bx;->a(Landroid/content/Context;)Lcom/amap/api/services/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    .line 40
    :cond_0
    const-string v0, "1=1"

    .line 41
    iget-object v2, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    const-class v3, Lcom/amap/api/services/a/by;

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 44
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/by;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    const-string v2, "UpdateLogDB"

    const-string v3, "getUpdateLog"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/services/a/by;)V
    .locals 3

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/amap/api/services/a/bx;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/bx;->a(Landroid/content/Context;)Lcom/amap/api/services/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    .line 64
    :cond_1
    const-string v0, "1=1"

    .line 65
    iget-object v1, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    const-class v2, Lcom/amap/api/services/a/by;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    const-string v1, "UpdateLogDB"

    const-string v2, "updateLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/services/a/bx;->a:Lcom/amap/api/services/a/bm;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/services/a/bm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
