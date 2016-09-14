.class Lcom/amap/api/services/a/ao$1;
.super Ljava/lang/Thread;
.source "RouteSearchCore.java"


# instance fields
.field final synthetic a:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

.field final synthetic b:Lcom/amap/api/services/a/ao;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amap/api/services/a/ao$1;->b:Lcom/amap/api/services/a/ao;

    iput-object p2, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 94
    const/16 v0, 0x66

    iput v0, v2, Landroid/os/Message;->what:I

    .line 95
    const/4 v0, 0x1

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 96
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 97
    const/4 v1, 0x0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao$1;->b:Lcom/amap/api/services/a/ao;

    iget-object v4, p0, Lcom/amap/api/services/a/ao$1;->a:Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    invoke-virtual {v0, v4}, Lcom/amap/api/services/a/ao;->calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;

    move-result-object v1

    .line 100
    const-string v0, "errorCode"

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/amap/api/services/a/ao$1;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Lcom/amap/api/services/a/ao$1;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/a/ao;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_1
    const-string v4, "errorCode"

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/amap/api/services/a/ao$1;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    const-string v0, "result"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Lcom/amap/api/services/a/ao$1;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v0}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/a/ao;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/amap/api/services/a/ao$1;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v4}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    const-string v4, "result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    iget-object v1, p0, Lcom/amap/api/services/a/ao$1;->b:Lcom/amap/api/services/a/ao;

    invoke-static {v1}, Lcom/amap/api/services/a/ao;->b(Lcom/amap/api/services/a/ao;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
