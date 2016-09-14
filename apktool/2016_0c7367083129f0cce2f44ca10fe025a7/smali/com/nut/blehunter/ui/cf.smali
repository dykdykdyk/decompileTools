.class final Lcom/nut/blehunter/ui/cf;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/a/c;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/nut/blehunter/ui/cf;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 654
    const-string v0, "Weibo auth result is %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    invoke-static {p1}, Lcom/sina/weibo/sdk/a/b;->a(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/a/b;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, v0, Lcom/sina/weibo/sdk/a/b;->a:Ljava/lang/String;

    .line 1212
    iget-object v0, v0, Lcom/sina/weibo/sdk/a/b;->b:Ljava/lang/String;

    .line 659
    iget-object v2, p0, Lcom/nut/blehunter/ui/cf;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v3

    const-string v4, "weibo"

    invoke-static {v1, v0}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->createWithWeibo(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->login(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/LoginRequestBody;)Lrx/h;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Lrx/h;)V

    .line 663
    :goto_0
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/cf;->a:Lcom/nut/blehunter/ui/LoginActivity;

    const-string v1, "Weibo login failed"

    .line 2039
    invoke-static {v0, v3, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/nut/blehunter/ui/cf;->a:Lcom/nut/blehunter/ui/LoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Weibo login failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3039
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 672
    return-void
.end method
