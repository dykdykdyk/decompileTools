.class final Lcom/twitter/sdk/android/core/identity/c;
.super Ljava/lang/Object;
.source "OAuthController.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/identity/j;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/identity/f;

.field b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

.field final c:Landroid/webkit/WebView;

.field final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

.field private final f:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/identity/f;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/c;->f:Landroid/widget/ProgressBar;

    .line 43
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/c;->c:Landroid/webkit/WebView;

    .line 44
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/c;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 45
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/c;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 46
    iput-object p5, p0, Lcom/twitter/sdk/android/core/identity/c;->a:Lcom/twitter/sdk/android/core/identity/f;

    .line 47
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 163
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->b()V

    .line 164
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    return-void
.end method


# virtual methods
.method protected final a(ILcom/twitter/sdk/android/core/TwitterAuthException;)V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    const-string v1, "auth_error"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/c;->a:Lcom/twitter/sdk/android/core/identity/f;

    invoke-interface {v1, p1, v0}, Lcom/twitter/sdk/android/core/identity/f;->a(ILandroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 178
    .line 1107
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v3, "OAuth web view completed successfully"

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v0, "oauth_verifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1110
    if-eqz v6, :cond_0

    .line 1112
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v3, "Converting the request token to an access token."

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v7, p0, Lcom/twitter/sdk/android/core/identity/c;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 1131
    new-instance v8, Lcom/twitter/sdk/android/core/identity/e;

    invoke-direct {v8, p0}, Lcom/twitter/sdk/android/core/identity/e;-><init>(Lcom/twitter/sdk/android/core/identity/c;)V

    .line 1114
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3055
    iget-object v3, v7, Lcom/twitter/sdk/android/core/internal/oauth/f;->c:Lcom/twitter/sdk/android/core/internal/f;

    .line 4023
    iget-object v3, v3, Lcom/twitter/sdk/android/core/internal/f;->a:Ljava/lang/String;

    .line 2108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/oauth/access_token"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4047
    iget-object v0, v7, Lcom/twitter/sdk/android/core/internal/oauth/f;->b:Lcom/twitter/sdk/android/core/q;

    .line 4063
    iget-object v0, v0, Lcom/twitter/sdk/android/core/q;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 2100
    const-string v3, "POST"

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2104
    iget-object v1, v7, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    invoke-virtual {v7, v8}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Lcom/twitter/sdk/android/core/f;)Lcom/twitter/sdk/android/core/f;

    move-result-object v2

    invoke-interface {v1, v0, v6, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/f;)V

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->a()V

    .line 180
    return-void

    .line 1121
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get authorization, bundle incomplete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1123
    const/4 v0, 0x1

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v2, "Failed to get authorization, bundle incomplete"

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    goto :goto_0
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->b()V

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 174
    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/identity/q;)V
    .locals 3

    .prologue
    .line 184
    .line 4156
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "OAuth web view completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4157
    const/4 v0, 0x1

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string v2, "OAuth web view completed with an error"

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/core/identity/c;->a(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    .line 185
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/c;->a()V

    .line 186
    return-void
.end method
