.class public abstract Lcom/sina/weibo/sdk/component/e;
.super Ljava/lang/Object;
.source "BrowserRequestParamBase.java"


# instance fields
.field protected d:Landroid/content/Context;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/sina/weibo/sdk/component/c;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->d:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "key_url"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->f:Lcom/sina/weibo/sdk/component/c;

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "key_launcher"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/e;->f:Lcom/sina/weibo/sdk/component/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    const-string v1, "key_specify_title"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/e;->b(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method

.method public abstract a(Landroid/app/Activity;)V
.end method

.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/e;->e:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract b(Landroid/os/Bundle;)V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final c()Lcom/sina/weibo/sdk/component/c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->f:Lcom/sina/weibo/sdk/component/c;

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "key_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->e:Ljava/lang/String;

    .line 33
    const-string v0, "key_launcher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/component/c;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->f:Lcom/sina/weibo/sdk/component/c;

    .line 34
    const-string v0, "key_specify_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/component/e;->a(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/e;->g:Ljava/lang/String;

    return-object v0
.end method
