.class final Lcom/twitter/sdk/android/core/identity/d;
.super Lcom/twitter/sdk/android/core/f;
.source "OAuthController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/f",
        "<",
        "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/c;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/c;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get request token"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    const/4 v1, 0x1

    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v3, "Failed to get request token"

    invoke-direct {v2, v3}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    .line 80
    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 62
    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->a:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iput-object v0, v2, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 63
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    .line 1026
    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/c;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 63
    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 2055
    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/f;->c:Lcom/twitter/sdk/android/core/internal/f;

    .line 1117
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "oauth"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    const-string v5, "authorize"

    aput-object v5, v3, v4

    .line 4023
    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/f;->a:Ljava/lang/String;

    .line 3033
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move v0, v1

    .line 3035
    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v5, v3, v0

    .line 3036
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3035
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    const-string v0, "oauth_token"

    iget-object v2, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Twitter"

    const-string v4, "Redirecting user to web view to complete authorization flow"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    .line 4026
    iget-object v2, v2, Lcom/twitter/sdk/android/core/identity/c;->c:Landroid/webkit/WebView;

    .line 67
    new-instance v3, Lcom/twitter/sdk/android/core/identity/i;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    .line 6026
    iget-object v4, v4, Lcom/twitter/sdk/android/core/identity/c;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 67
    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/sdk/android/core/identity/d;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-direct {v3, v4, v5}, Lcom/twitter/sdk/android/core/identity/i;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/identity/j;)V

    new-instance v4, Lcom/twitter/sdk/android/core/identity/h;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/identity/h;-><init>()V

    .line 6095
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 6096
    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 6097
    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6098
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 6099
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 6100
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 6101
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6102
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 6103
    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 70
    return-void
.end method
