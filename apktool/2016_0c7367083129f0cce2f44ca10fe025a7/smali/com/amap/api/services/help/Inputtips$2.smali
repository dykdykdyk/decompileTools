.class Lcom/amap/api/services/help/Inputtips$2;
.super Ljava/lang/Thread;
.source "Inputtips.java"


# instance fields
.field final synthetic a:Lcom/amap/api/services/help/InputtipsQuery;

.field final synthetic b:Lcom/amap/api/services/help/Inputtips;


# direct methods
.method constructor <init>(Lcom/amap/api/services/help/Inputtips;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amap/api/services/help/Inputtips$2;->b:Lcom/amap/api/services/help/Inputtips;

    iput-object p2, p0, Lcom/amap/api/services/help/Inputtips$2;->a:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 156
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$2;->b:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v0}, Lcom/amap/api/services/help/Inputtips;->a(Lcom/amap/api/services/help/Inputtips;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$2;->b:Lcom/amap/api/services/help/Inputtips;

    iget-object v2, p0, Lcom/amap/api/services/help/Inputtips$2;->a:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-static {v0, v2}, Lcom/amap/api/services/help/Inputtips;->a(Lcom/amap/api/services/help/Inputtips;Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 161
    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 164
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$2;->b:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v0}, Lcom/amap/api/services/help/Inputtips;->c(Lcom/amap/api/services/help/Inputtips;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    :try_start_1
    const-string v2, "Inputtips"

    const-string v3, "requestInputtips"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iget-object v0, p0, Lcom/amap/api/services/help/Inputtips$2;->b:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v0}, Lcom/amap/api/services/help/Inputtips;->c(Lcom/amap/api/services/help/Inputtips;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/help/Inputtips$2;->b:Lcom/amap/api/services/help/Inputtips;

    invoke-static {v2}, Lcom/amap/api/services/help/Inputtips;->c(Lcom/amap/api/services/help/Inputtips;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
