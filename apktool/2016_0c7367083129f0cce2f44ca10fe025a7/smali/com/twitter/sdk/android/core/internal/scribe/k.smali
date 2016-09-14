.class final Lcom/twitter/sdk/android/core/internal/scribe/k;
.super Ljava/lang/Object;
.source "ScribeFilesSender.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/scribe/f;

.field private final b:Lio/fabric/sdk/android/services/b/x;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/f;Lio/fabric/sdk/android/services/b/x;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->a:Lcom/twitter/sdk/android/core/internal/scribe/f;

    .line 233
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->b:Lio/fabric/sdk/android/services/b/x;

    .line 234
    return-void
.end method


# virtual methods
.method public final intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->a:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/scribe/f;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->a:Lcom/twitter/sdk/android/core/internal/scribe/f;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/scribe/f;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->b:Lio/fabric/sdk/android/services/b/x;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/x;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    const-string v0, "X-Client-UUID"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/k;->b:Lio/fabric/sdk/android/services/b/x;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/x;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_1
    const-string v0, "X-Twitter-Polling"

    const-string v1, "true"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method
