.class Lcom/amap/api/services/help/Inputtips$1;
.super Ljava/lang/Thread;
.source "Inputtips.java"


# instance fields
.field final synthetic a:Lcom/amap/api/services/help/Inputtips;


# direct methods
.method constructor <init>(Lcom/amap/api/services/help/Inputtips;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v0}, Lcom/amap/api/services/help/Inputtips;->a(Lcom/amap/api/services/help/Inputtips;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Lcom/amap/api/services/help/Inputtips;

    iget-object v2, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v2}, Lcom/amap/api/services/help/Inputtips;->b(Lcom/amap/api/services/help/Inputtips;)Lcom/amap/api/services/help/InputtipsQuery;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/services/help/Inputtips;->a(Lcom/amap/api/services/help/Inputtips;Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 92
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v0}, Lcom/amap/api/services/help/Inputtips;->c(Lcom/amap/api/services/help/Inputtips;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v0}, Lcom/amap/api/services/help/Inputtips;->c(Lcom/amap/api/services/help/Inputtips;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/help/Inputtips$1;->a:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v2}, Lcom/amap/api/services/help/Inputtips;->c(Lcom/amap/api/services/help/Inputtips;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
