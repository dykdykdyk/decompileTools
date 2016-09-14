.class Lcom/amap/api/services/a/ah$1;
.super Ljava/lang/Object;
.source "BusLineSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/ah;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ah;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amap/api/services/a/ah$1;->a:Lcom/amap/api/services/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 133
    const/4 v0, 0x3

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 134
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->what:I

    .line 135
    new-instance v0, Lcom/amap/api/services/a/q$a;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$a;-><init>()V

    .line 136
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    iget-object v2, p0, Lcom/amap/api/services/a/ah$1;->a:Lcom/amap/api/services/a/ah;

    invoke-static {v2}, Lcom/amap/api/services/a/ah;->a(Lcom/amap/api/services/a/ah;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/a/q$a;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    .line 138
    iget-object v2, p0, Lcom/amap/api/services/a/ah$1;->a:Lcom/amap/api/services/a/ah;

    invoke-virtual {v2}, Lcom/amap/api/services/a/ah;->searchBusLine()Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v2

    .line 139
    iput-object v2, v0, Lcom/amap/api/services/a/q$a;->a:Lcom/amap/api/services/busline/BusLineResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v0, p0, Lcom/amap/api/services/a/ah$1;->a:Lcom/amap/api/services/a/ah;

    invoke-static {v0}, Lcom/amap/api/services/a/ah;->b(Lcom/amap/api/services/a/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iget-object v0, p0, Lcom/amap/api/services/a/ah$1;->a:Lcom/amap/api/services/a/ah;

    invoke-static {v0}, Lcom/amap/api/services/a/ah;->b(Lcom/amap/api/services/a/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/ah$1;->a:Lcom/amap/api/services/a/ah;

    invoke-static {v2}, Lcom/amap/api/services/a/ah;->b(Lcom/amap/api/services/a/ah;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
