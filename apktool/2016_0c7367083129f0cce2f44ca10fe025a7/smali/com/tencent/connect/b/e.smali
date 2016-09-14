.class final Lcom/tencent/connect/b/e;
.super Lcom/tencent/connect/b/h;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/tauth/b;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/tencent/connect/b/d;


# direct methods
.method constructor <init>(Lcom/tencent/connect/b/d;Landroid/app/Dialog;Lcom/tencent/tauth/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/tencent/connect/b/e;->c:Lcom/tencent/connect/b/d;

    iput-object p3, p0, Lcom/tencent/connect/b/e;->a:Lcom/tencent/tauth/b;

    iput-object p4, p0, Lcom/tencent/connect/b/e;->b:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/b/h;-><init>(Lcom/tencent/connect/b/d;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 534
    iget-object v0, p0, Lcom/tencent/connect/b/e;->c:Lcom/tencent/connect/b/d;

    .line 1770
    iget-object v1, v0, Lcom/tencent/connect/b/d;->b:Lcom/tencent/connect/b/a;

    invoke-static {v1}, Lcom/tencent/connect/b/a;->g(Lcom/tencent/connect/b/a;)Landroid/os/Bundle;

    move-result-object v4

    .line 1771
    iget-object v1, v0, Lcom/tencent/connect/b/d;->b:Lcom/tencent/connect/b/a;

    invoke-static {v1}, Lcom/tencent/connect/b/a;->e(Lcom/tencent/connect/b/a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1772
    if-eqz v2, :cond_0

    .line 1773
    iget-object v0, v0, Lcom/tencent/connect/b/d;->b:Lcom/tencent/connect/b/a;

    invoke-static {v0}, Lcom/tencent/connect/b/a;->h(Lcom/tencent/connect/b/a;)Lcom/tencent/connect/b/v;

    move-result-object v1

    const-string v3, "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi"

    const-string v5, "POST"

    .line 2323
    const-string v0, "openSDK_LOG.HttpUtils"

    const-string v6, "OpenApi requestAsync"

    invoke-static {v0, v6}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    new-instance v0, Lcom/tencent/open/utils/h;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/utils/h;-><init>(Lcom/tencent/connect/b/v;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/open/utils/h;->start()V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/b/e;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/connect/b/e;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/tencent/connect/b/e;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/tencent/connect/b/e;->a:Lcom/tencent/tauth/b;

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/tencent/connect/b/e;->a:Lcom/tencent/tauth/b;

    iget-object v1, p0, Lcom/tencent/connect/b/e;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V

    .line 541
    :cond_2
    return-void
.end method
