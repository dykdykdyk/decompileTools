.class Lcom/amap/api/services/a/aj$2;
.super Ljava/lang/Thread;
.source "CloudSearchCore.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/services/a/aj;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/aj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/amap/api/services/a/aj$2;->c:Lcom/amap/api/services/a/aj;

    iput-object p2, p0, Lcom/amap/api/services/a/aj$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/services/a/aj$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 164
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 166
    const/16 v0, 0xc

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 167
    const/16 v0, 0x2bd

    iput v0, v1, Landroid/os/Message;->what:I

    .line 168
    new-instance v0, Lcom/amap/api/services/a/q$c;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$c;-><init>()V

    .line 169
    iget-object v2, p0, Lcom/amap/api/services/a/aj$2;->c:Lcom/amap/api/services/a/aj;

    invoke-static {v2}, Lcom/amap/api/services/a/aj;->a(Lcom/amap/api/services/a/aj;)Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/a/q$c;->b:Lcom/amap/api/services/cloud/CloudSearch$OnCloudSearchListener;

    .line 170
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v2, p0, Lcom/amap/api/services/a/aj$2;->c:Lcom/amap/api/services/a/aj;

    iget-object v3, p0, Lcom/amap/api/services/a/aj$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/services/a/aj$2;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/aj;->a(Lcom/amap/api/services/a/aj;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/services/cloud/CloudItemDetail;

    move-result-object v2

    .line 172
    iput-object v2, v0, Lcom/amap/api/services/a/q$c;->a:Lcom/amap/api/services/cloud/CloudItemDetail;

    .line 173
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v0, p0, Lcom/amap/api/services/a/aj$2;->c:Lcom/amap/api/services/a/aj;

    invoke-static {v0}, Lcom/amap/api/services/a/aj;->b(Lcom/amap/api/services/a/aj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-object v0, p0, Lcom/amap/api/services/a/aj$2;->c:Lcom/amap/api/services/a/aj;

    invoke-static {v0}, Lcom/amap/api/services/a/aj;->b(Lcom/amap/api/services/a/aj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/aj$2;->c:Lcom/amap/api/services/a/aj;

    invoke-static {v2}, Lcom/amap/api/services/a/aj;->b(Lcom/amap/api/services/a/aj;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
