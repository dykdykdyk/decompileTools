.class final Lcom/twitter/sdk/android/core/internal/oauth/g;
.super Ljava/lang/Object;
.source "OAuthService.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/oauth/f;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/f;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/g;->a:Lcom/twitter/sdk/android/core/internal/oauth/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .prologue
    .line 40
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/g;->a:Lcom/twitter/sdk/android/core/internal/oauth/f;

    .line 1059
    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/oauth/f;->d:Ljava/lang/String;

    .line 40
    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
