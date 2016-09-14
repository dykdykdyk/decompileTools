.class Lcom/amap/api/services/a/am$a;
.super Ljava/util/TimerTask;
.source "NearbySearchCore.java"


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/am;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/am;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/amap/api/services/a/am$a;->a:Lcom/amap/api/services/a/am;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/am;Lcom/amap/api/services/a/am$1;)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/am$a;-><init>(Lcom/amap/api/services/a/am;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/am$a;->a:Lcom/amap/api/services/a/am;

    invoke-static {v0}, Lcom/amap/api/services/a/am;->d(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/nearby/UploadInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/amap/api/services/a/am$a;->a:Lcom/amap/api/services/a/am;

    invoke-static {v0}, Lcom/amap/api/services/a/am;->d(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/nearby/UploadInfoCallback;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Lcom/amap/api/services/nearby/UploadInfoCallback;->OnUploadInfoCallback()Lcom/amap/api/services/nearby/UploadInfo;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/amap/api/services/a/am$a;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1, v0}, Lcom/amap/api/services/a/am;->b(Lcom/amap/api/services/a/am;Lcom/amap/api/services/nearby/UploadInfo;)I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/amap/api/services/a/am$a;->a:Lcom/amap/api/services/a/am;

    invoke-static {v1}, Lcom/amap/api/services/a/am;->a(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/a/q;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 386
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 387
    iget-object v2, p0, Lcom/amap/api/services/a/am$a;->a:Lcom/amap/api/services/a/am;

    invoke-static {v2}, Lcom/amap/api/services/a/am;->b(Lcom/amap/api/services/a/am;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 388
    iput v0, v1, Landroid/os/Message;->what:I

    .line 389
    iget-object v0, p0, Lcom/amap/api/services/a/am$a;->a:Lcom/amap/api/services/a/am;

    invoke-static {v0}, Lcom/amap/api/services/a/am;->a(Lcom/amap/api/services/a/am;)Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/q;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    const-string v1, "NearbySearch"

    const-string v2, "UpdateDataTask"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
