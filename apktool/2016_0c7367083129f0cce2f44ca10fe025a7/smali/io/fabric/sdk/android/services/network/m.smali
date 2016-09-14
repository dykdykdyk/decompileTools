.class public final Lio/fabric/sdk/android/services/network/m;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static final a(Lio/fabric/sdk/android/services/network/n;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 37
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 38
    new-instance v1, Lio/fabric/sdk/android/services/network/p;

    invoke-interface {p0}, Lio/fabric/sdk/android/services/network/n;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p0}, Lio/fabric/sdk/android/services/network/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/fabric/sdk/android/services/network/p;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 40
    new-instance v2, Lio/fabric/sdk/android/services/network/o;

    invoke-direct {v2, v1, p0}, Lio/fabric/sdk/android/services/network/o;-><init>(Lio/fabric/sdk/android/services/network/p;Lio/fabric/sdk/android/services/network/n;)V

    .line 41
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v4, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 42
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
