.class Lcom/amap/api/mapcore2d/ef$1;
.super Lcom/amap/api/mapcore2d/el;
.source "NetManger.java"


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/eg;

.field final synthetic b:Lcom/amap/api/mapcore2d/eh;

.field final synthetic c:Lcom/amap/api/mapcore2d/ef;


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ef$1;->c:Lcom/amap/api/mapcore2d/ef;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ef$1;->a:Lcom/amap/api/mapcore2d/eg;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ef;->b(Lcom/amap/api/mapcore2d/eg;Z)Lcom/amap/api/mapcore2d/ei;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ef$1;->c:Lcom/amap/api/mapcore2d/ef;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ef$1;->b:Lcom/amap/api/mapcore2d/eh;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore2d/ef;->a(Lcom/amap/api/mapcore2d/ef;Lcom/amap/api/mapcore2d/ei;Lcom/amap/api/mapcore2d/eh;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ef$1;->c:Lcom/amap/api/mapcore2d/ef;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ef$1;->b:Lcom/amap/api/mapcore2d/eh;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore2d/ef;->a(Lcom/amap/api/mapcore2d/ef;Lcom/amap/api/mapcore2d/cl;Lcom/amap/api/mapcore2d/eh;)V

    goto :goto_0
.end method
