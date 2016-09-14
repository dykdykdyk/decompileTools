.class final Lcom/twitter/sdk/android/core/identity/i;
.super Landroid/webkit/WebViewClient;
.source "OAuthWebViewClient.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/twitter/sdk/android/core/identity/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/identity/j;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/i;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/i;->b:Lcom/twitter/sdk/android/core/identity/j;

    .line 28
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i;->b:Lcom/twitter/sdk/android/core/identity/j;

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/core/identity/j;->a(Landroid/webkit/WebView;)V

    .line 34
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i;->b:Lcom/twitter/sdk/android/core/identity/j;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/q;

    invoke-direct {v1, p2, p3, p4}, Lcom/twitter/sdk/android/core/identity/q;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/identity/j;->a(Lcom/twitter/sdk/android/core/identity/q;)V

    .line 56
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 61
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i;->b:Lcom/twitter/sdk/android/core/identity/j;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/q;

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    invoke-direct {v1, v2, v3, v3}, Lcom/twitter/sdk/android/core/identity/q;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/identity/j;->a(Lcom/twitter/sdk/android/core/identity/q;)V

    .line 62
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/network/q;->a(Ljava/net/URI;Z)Ljava/util/TreeMap;

    move-result-object v0

    .line 41
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 42
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/i;->b:Lcom/twitter/sdk/android/core/identity/j;

    invoke-interface {v0, v2}, Lcom/twitter/sdk/android/core/identity/j;->a(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_1
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
