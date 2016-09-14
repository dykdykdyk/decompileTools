.class final Lcom/sina/weibo/sdk/component/k;
.super Lcom/sina/weibo/sdk/component/p;
.source "WeiboGameClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/sina/weibo/sdk/component/f;

.field private d:Lcom/sina/weibo/sdk/a/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/f;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/p;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/k;->b:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/k;->c:Lcom/sina/weibo/sdk/component/f;

    .line 24
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->c:Lcom/sina/weibo/sdk/component/f;

    .line 1094
    iget-object v0, v0, Lcom/sina/weibo/sdk/component/f;->a:Lcom/sina/weibo/sdk/a/c;

    .line 24
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/k;->d:Lcom/sina/weibo/sdk/a/c;

    .line 25
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0, p2}, Lcom/sina/weibo/sdk/component/d;->c(Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/p;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0, p2}, Lcom/sina/weibo/sdk/component/d;->a(Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/p;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 34
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0, p2, p3, p4}, Lcom/sina/weibo/sdk/component/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/p;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/component/d;->a()V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/p;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 88
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0, p2}, Lcom/sina/weibo/sdk/component/d;->b(Ljava/lang/String;)Z

    .line 42
    :cond_0
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-static {p2}, Lcom/sina/weibo/sdk/d/p;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/k;->d:Lcom/sina/weibo/sdk/a/c;

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/k;->d:Lcom/sina/weibo/sdk/a/c;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/a/c;->a(Landroid/os/Bundle;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/k;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/k;->c:Lcom/sina/weibo/sdk/component/f;

    .line 1098
    iget-object v1, v1, Lcom/sina/weibo/sdk/component/f;->b:Ljava/lang/String;

    .line 60
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/p;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
