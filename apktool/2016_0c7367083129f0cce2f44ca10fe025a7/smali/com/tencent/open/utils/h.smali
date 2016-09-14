.class public final Lcom/tencent/open/utils/h;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/connect/b/v;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/tencent/tauth/a;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/b/v;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, Lcom/tencent/open/utils/h;->a:Lcom/tencent/connect/b/v;

    iput-object p2, p0, Lcom/tencent/open/utils/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/open/utils/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/open/utils/h;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/open/utils/h;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/h;->a:Lcom/tencent/connect/b/v;

    iget-object v1, p0, Lcom/tencent/open/utils/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/open/utils/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/open/utils/h;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/utils/h;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/open/utils/HttpUtils;->a(Lcom/tencent/connect/b/v;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 330
    iget-object v0, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "openSDK_LOG.HttpUtils"

    const-string v1, "OpenApi onComplete"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    iget-object v1, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync MalformedURLException"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    .line 340
    iget-object v1, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    .line 342
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onConnectTimeoutException"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 344
    :catch_2
    move-exception v0

    .line 345
    iget-object v1, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onSocketTimeoutException"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :catch_3
    move-exception v0

    .line 350
    iget-object v1, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onNetworkUnavailableException"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 354
    :catch_4
    move-exception v0

    .line 355
    iget-object v1, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    .line 357
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onHttpStatusException"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    :catch_5
    move-exception v0

    .line 360
    iget-object v1, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync IOException"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 364
    :catch_6
    move-exception v0

    .line 365
    iget-object v1, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    .line 367
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync JSONException"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 369
    :catch_7
    move-exception v0

    .line 370
    iget-object v1, p0, Lcom/tencent/open/utils/h;->f:Lcom/tencent/tauth/a;

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "openSDK_LOG.HttpUtils"

    const-string v2, "OpenApi requestAsync onUnknowException"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
