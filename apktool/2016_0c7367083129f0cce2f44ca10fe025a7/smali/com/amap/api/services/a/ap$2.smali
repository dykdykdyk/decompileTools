.class Lcom/amap/api/services/a/ap$2;
.super Ljava/lang/Thread;
.source "ShareSearchCore.java"


# instance fields
.field final synthetic a:Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;

.field final synthetic b:Lcom/amap/api/services/a/ap;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    iput-object p2, p0, Lcom/amap/api/services/a/ap$2;->a:Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v0}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 247
    const/16 v0, 0xb

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 248
    const/16 v0, 0x44f

    iput v0, v1, Landroid/os/Message;->what:I

    .line 249
    iget-object v0, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    invoke-static {v0}, Lcom/amap/api/services/a/ap;->a(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ap$2;->b:Lcom/amap/api/services/a/ap;

    iget-object v2, p0, Lcom/amap/api/services/a/ap$2;->a:Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;

    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/ap;->searchBusRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 253
    const-string v3, "shareurlkey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 255
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
