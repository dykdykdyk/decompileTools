.class Lcom/amap/api/services/a/cu$1;
.super Lcom/amap/api/services/a/dd;
.source "NetManger.java"


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/cv;

.field final synthetic b:Lcom/amap/api/services/a/cw;

.field final synthetic c:Lcom/amap/api/services/a/cu;


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/cu$1;->c:Lcom/amap/api/services/a/cu;

    iget-object v1, p0, Lcom/amap/api/services/a/cu$1;->a:Lcom/amap/api/services/a/cv;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/cu;->b(Lcom/amap/api/services/a/cv;Z)Lcom/amap/api/services/a/cx;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amap/api/services/a/cu$1;->c:Lcom/amap/api/services/a/cu;

    iget-object v2, p0, Lcom/amap/api/services/a/cu$1;->b:Lcom/amap/api/services/a/cw;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/cu;->a(Lcom/amap/api/services/a/cu;Lcom/amap/api/services/a/cx;Lcom/amap/api/services/a/cw;)V
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/services/a/cu$1;->c:Lcom/amap/api/services/a/cu;

    iget-object v2, p0, Lcom/amap/api/services/a/cu$1;->b:Lcom/amap/api/services/a/cw;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/a/cu;->a(Lcom/amap/api/services/a/cu;Lcom/amap/api/services/a/ar;Lcom/amap/api/services/a/cw;)V

    goto :goto_0
.end method
