.class Lcom/amap/api/services/a/ao$2;
.super Ljava/lang/Thread;
.source "RouteSearchCore.java"


# instance fields
.field final synthetic a:Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

.field final synthetic b:Lcom/amap/api/services/a/ao;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/amap/api/services/a/ao$2;->b:Lcom/amap/api/services/a/ao;

    iput-object p2, p0, Lcom/amap/api/services/a/ao$2;->a:Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 152
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 153
    const/16 v0, 0x64

    iput v0, v2, Landroid/os/Message;->what:I

    .line 154
    const/4 v0, 0x1

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 155
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 156
    const/4 v1, 0x0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao$2;->b:Lcom/amap/api/services/a/ao;

    iget-object v4, p0, Lcom/amap/api/services/a/ao$2;->a:Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    invoke-virtual {v0, v4}, Lcom/amap/api/services/a/ao;->calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;

    move-result-object v1

    .line 159
    const-string v0, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/amap/api/services/a/ao$2;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/amap/api/services/a/ao$2;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/a/ao;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :try_start_1
    const-string v4, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/amap/api/services/a/ao$2;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/amap/api/services/a/ao$2;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/a/ao;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/amap/api/services/a/ao$2;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v4}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    const-string v4, "result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 166
    iget-object v1, p0, Lcom/amap/api/services/a/ao$2;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v1}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/a/ao;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
