.class Lcom/amap/api/mapcore2d/ed$1;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ed;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ed;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ed$1;->a:Lcom/amap/api/mapcore2d/ed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 443
    const-string v1, "*.amap.com"

    invoke-interface {v0, v1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
