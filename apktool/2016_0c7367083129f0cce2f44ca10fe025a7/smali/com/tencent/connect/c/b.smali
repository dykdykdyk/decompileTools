.class public final Lcom/tencent/connect/c/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/utils/f;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tencent/tauth/b;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/tencent/connect/c/a;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/c/a;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/b;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tencent/connect/c/b;->f:Lcom/tencent/connect/c/a;

    iput-object p2, p0, Lcom/tencent/connect/c/b;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/connect/c/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/connect/c/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/connect/c/b;->d:Lcom/tencent/tauth/b;

    iput-object p6, p0, Lcom/tencent/connect/c/b;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/tencent/connect/c/b;->a:Landroid/os/Bundle;

    const-string v1, "imageLocalUrl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/c/b;->f:Lcom/tencent/connect/c/a;

    iget-object v1, p0, Lcom/tencent/connect/c/b;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/connect/c/b;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/tencent/connect/c/b;->d:Lcom/tencent/tauth/b;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/connect/c/a;->a(Lcom/tencent/connect/c/a;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/b;)V

    .line 271
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/tencent/connect/c/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/connect/c/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/tencent/connect/c/b;->d:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/tencent/connect/c/b;->d:Lcom/tencent/tauth/b;

    new-instance v1, Lcom/tencent/tauth/d;

    const/4 v2, -0x6

    const-string v3, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 260
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToMobileQQ -- error: \u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_2
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, p0, Lcom/tencent/connect/c/b;->f:Lcom/tencent/connect/c/a;

    invoke-static {v3}, Lcom/tencent/connect/c/a;->a(Lcom/tencent/connect/c/a;)Lcom/tencent/connect/b/v;

    move-result-object v3

    .line 1023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 262
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0
.end method
