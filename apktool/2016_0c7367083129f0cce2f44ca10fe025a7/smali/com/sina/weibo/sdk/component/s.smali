.class final Lcom/sina/weibo/sdk/component/s;
.super Lcom/sina/weibo/sdk/component/p;
.source "WidgetWeiboWebViewClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/sina/weibo/sdk/component/q;

.field private d:Lcom/sina/weibo/sdk/a/c;

.field private e:Lcom/sina/weibo/sdk/component/r;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/q;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/p;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sina/weibo/sdk/component/s;->b:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lcom/sina/weibo/sdk/component/s;->c:Lcom/sina/weibo/sdk/component/q;

    .line 1231
    iget-object v0, p2, Lcom/sina/weibo/sdk/component/q;->c:Lcom/sina/weibo/sdk/component/r;

    .line 22
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/s;->e:Lcom/sina/weibo/sdk/component/r;

    .line 2219
    iget-object v0, p2, Lcom/sina/weibo/sdk/component/q;->a:Lcom/sina/weibo/sdk/a/c;

    .line 23
    iput-object v0, p0, Lcom/sina/weibo/sdk/component/s;->d:Lcom/sina/weibo/sdk/a/c;

    .line 24
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0, p2}, Lcom/sina/weibo/sdk/component/d;->c(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/p;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0, p2}, Lcom/sina/weibo/sdk/component/d;->a(Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/p;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 32
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0, p2, p3, p4}, Lcom/sina/weibo/sdk/component/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/p;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/component/d;->a()V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sina/weibo/sdk/component/p;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 84
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->a:Lcom/sina/weibo/sdk/component/d;

    invoke-interface {v0, p2}, Lcom/sina/weibo/sdk/component/d;->b(Ljava/lang/String;)Z

    .line 40
    :cond_0
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 41
    const-string v1, "sinaweibo://browser/close"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    const-string v1, "sinaweibo://browser/datatransfer"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    :cond_1
    invoke-static {p2}, Lcom/sina/weibo/sdk/d/p;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/s;->d:Lcom/sina/weibo/sdk/a/c;

    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/s;->d:Lcom/sina/weibo/sdk/a/c;

    invoke-interface {v2, v1}, Lcom/sina/weibo/sdk/a/c;->a(Landroid/os/Bundle;)V

    .line 52
    :cond_2
    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/s;->b:Landroid/app/Activity;

    .line 54
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/s;->c:Lcom/sina/weibo/sdk/component/q;

    .line 2223
    iget-object v1, v1, Lcom/sina/weibo/sdk/component/q;->b:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/sina/weibo/sdk/component/s;->c:Lcom/sina/weibo/sdk/component/q;

    .line 2235
    iget-object v2, v2, Lcom/sina/weibo/sdk/component/q;->h:Ljava/lang/String;

    .line 53
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sina/weibo/sdk/component/p;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
