.class final Lokhttp3/internal/e/f;
.super Lokhttp3/internal/e/e;
.source "TrustRootIndex.java"


# instance fields
.field private final a:Ljavax/net/ssl/X509TrustManager;

.field private final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lokhttp3/internal/e/e;-><init>()V

    .line 65
    iput-object p2, p0, Lokhttp3/internal/e/f;->b:Ljava/lang/reflect/Method;

    .line 66
    iput-object p1, p0, Lokhttp3/internal/e/f;->a:Ljavax/net/ssl/X509TrustManager;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 71
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/f;->b:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lokhttp3/internal/e/f;->a:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 73
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
