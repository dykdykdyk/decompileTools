.class public final Lcom/umeng/message/proguard/k;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Lcom/umeng/message/proguard/bd;


# instance fields
.field private c:Ljava/net/HttpURLConnection;

.field private final d:Ljava/net/URL;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/message/proguard/k;->a:[Ljava/lang/String;

    .line 369
    sget-object v0, Lcom/umeng/message/proguard/bd;->a:Lcom/umeng/message/proguard/bd;

    sput-object v0, Lcom/umeng/message/proguard/k;->b:Lcom/umeng/message/proguard/bd;

    return-void
.end method

.method private a()Ljava/net/HttpURLConnection;
    .locals 7

    .prologue
    .line 1421
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1422
    sget-object v0, Lcom/umeng/message/proguard/k;->b:Lcom/umeng/message/proguard/bd;

    iget-object v1, p0, Lcom/umeng/message/proguard/k;->d:Ljava/net/URL;

    .line 3415
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/umeng/message/proguard/k;->f:Ljava/lang/String;

    iget v6, p0, Lcom/umeng/message/proguard/k;->g:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 1422
    invoke-interface {v0, v1, v2}, Lcom/umeng/message/proguard/bd;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1425
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/proguard/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1426
    return-object v0

    .line 1424
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/k;->b:Lcom/umeng/message/proguard/bd;

    iget-object v1, p0, Lcom/umeng/message/proguard/k;->d:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/umeng/message/proguard/bd;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    new-instance v1, Lcom/umeng/message/proguard/k$e;

    invoke-direct {v1, v0}, Lcom/umeng/message/proguard/k$e;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private b()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->c:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1444
    invoke-direct {p0}, Lcom/umeng/message/proguard/k;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/k;->c:Ljava/net/HttpURLConnection;

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/k;->c:Ljava/net/HttpURLConnection;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4104
    invoke-direct {p0}, Lcom/umeng/message/proguard/k;->b()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5095
    invoke-direct {p0}, Lcom/umeng/message/proguard/k;->b()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 1434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
