.class public abstract Lcom/twitter/sdk/android/core/internal/oauth/f;
.super Ljava/lang/Object;
.source "OAuthService.java"


# instance fields
.field private final a:Ljavax/net/ssl/SSLSocketFactory;

.field public final b:Lcom/twitter/sdk/android/core/q;

.field public final c:Lcom/twitter/sdk/android/core/internal/f;

.field final d:Ljava/lang/String;

.field final e:Lretrofit/RestAdapter;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/q;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/f;)V
    .locals 5

    .prologue
    const/16 v4, 0x2f

    const/16 v3, 0x3b

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->b:Lcom/twitter/sdk/android/core/q;

    .line 29
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 30
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->c:Lcom/twitter/sdk/android/core/internal/f;

    .line 31
    const-string v0, "TwitterAndroidSDK"

    .line 1059
    const-string v1, "1.3.1.37"

    .line 2051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2063
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->d:Ljava/lang/String;

    .line 34
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    .line 3055
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->c:Lcom/twitter/sdk/android/core/internal/f;

    .line 4023
    iget-object v1, v1, Lcom/twitter/sdk/android/core/internal/f;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/g;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/g;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/g;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/internal/oauth/g;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/f;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->e:Lretrofit/RestAdapter;

    .line 44
    return-void
.end method
