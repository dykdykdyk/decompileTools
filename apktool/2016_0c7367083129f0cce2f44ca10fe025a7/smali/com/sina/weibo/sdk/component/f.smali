.class public final Lcom/sina/weibo/sdk/component/f;
.super Lcom/sina/weibo/sdk/component/e;
.source "GameRequestParam.java"


# instance fields
.field a:Lcom/sina/weibo/sdk/a/c;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/e;-><init>(Landroid/content/Context;)V

    .line 23
    sget-object v0, Lcom/sina/weibo/sdk/component/c;->c:Lcom/sina/weibo/sdk/component/c;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/f;->f:Lcom/sina/weibo/sdk/component/c;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/f;->h:Ljava/lang/String;

    .line 29
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/f;->c:Ljava/lang/String;

    .line 31
    const-string v0, "key_listener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/f;->b:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/j;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/j;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/j;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/a/c;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/f;->a:Lcom/sina/weibo/sdk/a/c;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/f;->e:Ljava/lang/String;

    .line 1061
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1064
    const-string v1, "version"

    const-string v2, "0031405000"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1066
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/f;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1067
    const-string v1, "source"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1069
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/f;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1070
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1073
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/f;->e:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 47
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "source"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/j;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/j;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/f;->a:Lcom/sina/weibo/sdk/a/c;

    if-eqz v1, :cond_0

    .line 1076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/sina/weibo/sdk/component/f;->b:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/f;->a:Lcom/sina/weibo/sdk/a/c;

    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/component/j;->a(Ljava/lang/String;Lcom/sina/weibo/sdk/a/c;)V

    .line 55
    const-string v0, "key_listener"

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method
