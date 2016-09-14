.class Lcom/amap/api/services/a/al$2;
.super Ljava/lang/Object;
.source "GeocodeSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/services/geocoder/GeocodeQuery;

.field final synthetic b:Lcom/amap/api/services/a/al;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/al;Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amap/api/services/a/al$2;->b:Lcom/amap/api/services/a/al;

    iput-object p2, p0, Lcom/amap/api/services/a/al$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 168
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 170
    const/16 v0, 0xc8

    :try_start_0
    iput v0, v1, Landroid/os/Message;->what:I

    .line 171
    const/4 v0, 0x2

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 173
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 174
    new-instance v0, Lcom/amap/api/services/a/q$e;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$e;-><init>()V

    .line 175
    iget-object v2, p0, Lcom/amap/api/services/a/al$2;->b:Lcom/amap/api/services/a/al;

    invoke-static {v2}, Lcom/amap/api/services/a/al;->a(Lcom/amap/api/services/a/al;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/a/q$e;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 176
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/amap/api/services/a/al$2;->b:Lcom/amap/api/services/a/al;

    iget-object v3, p0, Lcom/amap/api/services/a/al$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/al;->getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;

    move-result-object v2

    .line 178
    new-instance v3, Lcom/amap/api/services/geocoder/GeocodeResult;

    iget-object v4, p0, Lcom/amap/api/services/a/al$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-direct {v3, v4, v2}, Lcom/amap/api/services/geocoder/GeocodeResult;-><init>(Lcom/amap/api/services/geocoder/GeocodeQuery;Ljava/util/List;)V

    iput-object v3, v0, Lcom/amap/api/services/a/q$e;->a:Lcom/amap/api/services/geocoder/GeocodeResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, p0, Lcom/amap/api/services/a/al$2;->b:Lcom/amap/api/services/a/al;

    invoke-static {v0}, Lcom/amap/api/services/a/al;->b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-object v0, p0, Lcom/amap/api/services/a/al$2;->b:Lcom/amap/api/services/a/al;

    invoke-static {v0}, Lcom/amap/api/services/a/al;->b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/al$2;->b:Lcom/amap/api/services/a/al;

    invoke-static {v2}, Lcom/amap/api/services/a/al;->b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
