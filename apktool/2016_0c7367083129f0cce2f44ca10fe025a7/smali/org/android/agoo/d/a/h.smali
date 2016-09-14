.class Lorg/android/agoo/d/a/h;
.super Ljava/lang/Object;
.source "AbsHttpClient.java"


# static fields
.field private static c:I

.field private static d:I


# instance fields
.field final a:Lorg/apache/http/impl/client/DefaultHttpClient;

.field final b:Lorg/apache/http/protocol/HttpContext;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xa

    sput v0, Lorg/android/agoo/d/a/h;->c:I

    .line 49
    const/16 v0, 0x2710

    sput v0, Lorg/android/agoo/d/a/h;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 58
    sget v1, Lorg/android/agoo/d/a/h;->d:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 59
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v2, Lorg/android/agoo/d/a/h;->c:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 61
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    sget v1, Lorg/android/agoo/d/a/h;->d:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    sget v1, Lorg/android/agoo/d/a/h;->d:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 66
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 67
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 70
    const-string v1, "Agoo-sdk-%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/android/agoo/d/a/h;->e:Ljava/util/Map;

    .line 73
    new-instance v1, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v1, p0, Lorg/android/agoo/d/a/h;->b:Lorg/apache/http/protocol/HttpContext;

    .line 74
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lorg/android/agoo/d/a/h;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 75
    iget-object v0, p0, Lorg/android/agoo/d/a/h;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/android/agoo/d/a/i;

    invoke-direct {v1, p0}, Lorg/android/agoo/d/a/i;-><init>(Lorg/android/agoo/d/a/h;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 86
    iget-object v0, p0, Lorg/android/agoo/d/a/h;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/android/agoo/d/a/j;

    invoke-direct {v1, p0}, Lorg/android/agoo/d/a/j;-><init>(Lorg/android/agoo/d/a/h;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 104
    iget-object v0, p0, Lorg/android/agoo/d/a/h;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/android/agoo/d/a/k;

    invoke-direct {v1, p0}, Lorg/android/agoo/d/a/k;-><init>(Lorg/android/agoo/d/a/h;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 134
    return-void
.end method

.method protected static a(Ljava/lang/String;Lorg/android/agoo/d/a/e;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Lorg/android/agoo/d/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    :cond_0
    return-object p0
.end method

.method static synthetic a(Lorg/android/agoo/d/a/h;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/android/agoo/d/a/h;->e:Ljava/util/Map;

    return-object v0
.end method
