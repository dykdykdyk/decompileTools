.class public Lcom/twitter/sdk/android/core/identity/OAuthActivity;
.super Landroid/app/Activity;
.source "OAuthActivity.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/identity/f;


# instance fields
.field a:Lcom/twitter/sdk/android/core/identity/c;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->finish()V

    .line 76
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->a:Lcom/twitter/sdk/android/core/identity/c;

    const/4 v1, 0x0

    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v3, "Authorization failed, request was canceled."

    invoke-direct {v2, v3}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/twitter/sdk/android/core/R$layout;->tw__activity_oauth:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->setContentView(I)V

    .line 40
    sget v0, Lcom/twitter/sdk/android/core/R$id;->tw__spinner:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->b:Landroid/widget/ProgressBar;

    .line 41
    sget v0, Lcom/twitter/sdk/android/core/R$id;->tw__web_view:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->c:Landroid/webkit/WebView;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string v0, "progress"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    invoke-static {}, Lcom/twitter/sdk/android/core/q;->e()Lcom/twitter/sdk/android/core/q;

    move-result-object v5

    .line 52
    new-instance v0, Lcom/twitter/sdk/android/core/identity/c;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "auth_config"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    new-instance v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-virtual {v5}, Lcom/twitter/sdk/android/core/q;->f()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    new-instance v7, Lcom/twitter/sdk/android/core/internal/f;

    invoke-direct {v7}, Lcom/twitter/sdk/android/core/internal/f;-><init>()V

    invoke-direct {v4, v5, v6, v7}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;-><init>(Lcom/twitter/sdk/android/core/q;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/f;)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/identity/c;-><init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/identity/f;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->a:Lcom/twitter/sdk/android/core/identity/c;

    .line 55
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->a:Lcom/twitter/sdk/android/core/identity/c;

    .line 1051
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Obtaining request token to start the sign in flow"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v6, v0, Lcom/twitter/sdk/android/core/identity/c;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 1059
    new-instance v7, Lcom/twitter/sdk/android/core/identity/d;

    invoke-direct {v7, v0}, Lcom/twitter/sdk/android/core/identity/d;-><init>(Lcom/twitter/sdk/android/core/identity/c;)V

    .line 2047
    iget-object v0, v6, Lcom/twitter/sdk/android/core/internal/oauth/f;->b:Lcom/twitter/sdk/android/core/q;

    .line 2063
    iget-object v0, v0, Lcom/twitter/sdk/android/core/q;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 2074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3055
    iget-object v2, v6, Lcom/twitter/sdk/android/core/internal/oauth/f;->c:Lcom/twitter/sdk/android/core/internal/f;

    .line 4023
    iget-object v2, v2, Lcom/twitter/sdk/android/core/internal/f;->a:Ljava/lang/String;

    .line 2074
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/oauth/request_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1069
    iget-object v8, v6, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    move-object v1, v9

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/f;)Lcom/twitter/sdk/android/core/f;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;->getTempToken(Ljava/lang/String;Lcom/twitter/sdk/android/core/f;)V

    .line 56
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/OAuthActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string v0, "progress"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method
