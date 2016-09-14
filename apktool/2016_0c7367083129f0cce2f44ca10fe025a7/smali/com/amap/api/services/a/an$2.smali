.class Lcom/amap/api/services/a/an$2;
.super Ljava/lang/Thread;
.source "PoiSearchCore.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/services/a/an;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/an;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/amap/api/services/a/an$2;->b:Lcom/amap/api/services/a/an;

    iput-object p2, p0, Lcom/amap/api/services/a/an$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 224
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 225
    const/4 v0, 0x6

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 226
    const/16 v0, 0x25a

    iput v0, v2, Landroid/os/Message;->what:I

    .line 227
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 228
    const/4 v1, 0x0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/an$2;->b:Lcom/amap/api/services/a/an;

    iget-object v4, p0, Lcom/amap/api/services/a/an$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/amap/api/services/a/an;->searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v1

    .line 231
    const-string v0, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    new-instance v0, Lcom/amap/api/services/a/q$g;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$g;-><init>()V

    .line 237
    iget-object v4, p0, Lcom/amap/api/services/a/an$2;->b:Lcom/amap/api/services/a/an;

    invoke-static {v4}, Lcom/amap/api/services/a/an;->b(Lcom/amap/api/services/a/an;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 238
    iput-object v1, v0, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    .line 239
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p0, Lcom/amap/api/services/a/an$2;->b:Lcom/amap/api/services/a/an;

    invoke-static {v0}, Lcom/amap/api/services/a/an;->a(Lcom/amap/api/services/a/an;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :try_start_1
    const-string v4, "PoiSearch"

    const-string v5, "searchPOIIdAsyn"

    invoke-static {v0, v4, v5}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v4, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    new-instance v0, Lcom/amap/api/services/a/q$g;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$g;-><init>()V

    .line 237
    iget-object v4, p0, Lcom/amap/api/services/a/an$2;->b:Lcom/amap/api/services/a/an;

    invoke-static {v4}, Lcom/amap/api/services/a/an;->b(Lcom/amap/api/services/a/an;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v4

    iput-object v4, v0, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 238
    iput-object v1, v0, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    .line 239
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p0, Lcom/amap/api/services/a/an$2;->b:Lcom/amap/api/services/a/an;

    invoke-static {v0}, Lcom/amap/api/services/a/an;->a(Lcom/amap/api/services/a/an;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    new-instance v4, Lcom/amap/api/services/a/q$g;

    invoke-direct {v4}, Lcom/amap/api/services/a/q$g;-><init>()V

    .line 237
    iget-object v5, p0, Lcom/amap/api/services/a/an$2;->b:Lcom/amap/api/services/a/an;

    invoke-static {v5}, Lcom/amap/api/services/a/an;->b(Lcom/amap/api/services/a/an;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v5

    iput-object v5, v4, Lcom/amap/api/services/a/q$g;->b:Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    .line 238
    iput-object v1, v4, Lcom/amap/api/services/a/q$g;->a:Lcom/amap/api/services/core/PoiItem;

    .line 239
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 241
    iget-object v1, p0, Lcom/amap/api/services/a/an$2;->b:Lcom/amap/api/services/a/an;

    invoke-static {v1}, Lcom/amap/api/services/a/an;->a(Lcom/amap/api/services/a/an;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    throw v0
.end method
