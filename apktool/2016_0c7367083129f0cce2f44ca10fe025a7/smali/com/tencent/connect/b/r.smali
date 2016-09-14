.class final Lcom/tencent/connect/b/r;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/connect/b/j;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/b/j;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    iput-object p1, p0, Lcom/tencent/connect/b/r;->b:Lcom/tencent/connect/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/connect/b/r;->a:Ljava/lang/String;

    .line 453
    iput-object p2, p0, Lcom/tencent/connect/b/r;->a:Ljava/lang/String;

    .line 454
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 458
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-->timeoutUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/connect/b/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mRetryUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/connect/b/r;->b:Lcom/tencent/connect/b/j;

    invoke-static {v2}, Lcom/tencent/connect/b/j;->i(Lcom/tencent/connect/b/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/tencent/connect/b/r;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/connect/b/r;->b:Lcom/tencent/connect/b/j;

    invoke-static {v1}, Lcom/tencent/connect/b/j;->i(Lcom/tencent/connect/b/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/tencent/connect/b/r;->b:Lcom/tencent/connect/b/j;

    invoke-static {v0}, Lcom/tencent/connect/b/j;->f(Lcom/tencent/connect/b/j;)Lcom/tencent/connect/b/p;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/d;

    const/16 v2, 0x232a

    const-string v3, "\u8bf7\u6c42\u9875\u9762\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    iget-object v4, p0, Lcom/tencent/connect/b/r;->b:Lcom/tencent/connect/b/j;

    invoke-static {v4}, Lcom/tencent/connect/b/j;->i(Lcom/tencent/connect/b/j;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/b/p;->a(Lcom/tencent/tauth/d;)V

    .line 461
    iget-object v0, p0, Lcom/tencent/connect/b/r;->b:Lcom/tencent/connect/b/j;

    invoke-virtual {v0}, Lcom/tencent/connect/b/j;->dismiss()V

    .line 463
    :cond_0
    return-void
.end method
