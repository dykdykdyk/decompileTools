.class final Lcom/amap/api/services/a/cf$1;
.super Ljava/lang/Thread;
.source "DexFileManager.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amap/api/services/a/cf$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/services/a/cf$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/a/cf$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 233
    :try_start_0
    new-instance v1, Lcom/amap/api/services/a/bm;

    iget-object v0, p0, Lcom/amap/api/services/a/cf$1;->a:Landroid/content/Context;

    .line 234
    invoke-static {}, Lcom/amap/api/services/a/ci;->c()Lcom/amap/api/services/a/ci;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amap/api/services/a/bm;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bl;)V

    .line 235
    iget-object v0, p0, Lcom/amap/api/services/a/cf$1;->b:Ljava/lang/String;

    .line 237
    invoke-static {v0}, Lcom/amap/api/services/a/cj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/amap/api/services/a/cj;

    .line 236
    invoke-virtual {v1, v0, v2}, Lcom/amap/api/services/a/bm;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/cj;

    .line 243
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->c()Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v4, p0, Lcom/amap/api/services/a/cf$1;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/amap/api/services/a/cj;->a()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v3, p0, Lcom/amap/api/services/a/cf$1;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/amap/api/services/a/cf;->b(Landroid/content/Context;Lcom/amap/api/services/a/bm;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    const-string v1, "DexFileManager"

    const-string v2, "clearUnSuitableVersion"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_1
    return-void
.end method
