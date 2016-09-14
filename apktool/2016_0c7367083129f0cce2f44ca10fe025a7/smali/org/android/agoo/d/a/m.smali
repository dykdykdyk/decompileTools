.class final Lorg/android/agoo/d/a/m;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lorg/android/agoo/d/a/b;

.field private volatile e:Z

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/android/agoo/d/a/b;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/android/agoo/d/a/m;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 31
    iput-object p3, p0, Lorg/android/agoo/d/a/m;->b:Lorg/apache/http/protocol/HttpContext;

    .line 32
    iput-object p1, p0, Lorg/android/agoo/d/a/m;->f:Landroid/content/Context;

    .line 33
    iput-object p4, p0, Lorg/android/agoo/d/a/m;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 34
    iput-object p5, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    .line 39
    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 89
    .line 2071
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2072
    iget-object v0, p0, Lorg/android/agoo/d/a/m;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lorg/android/agoo/d/a/m;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lorg/android/agoo/d/a/m;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2073
    const-string v1, "AsyncHttp.request"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http request:["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/android/agoo/d/a/m;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]===response[:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2075
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2073
    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2077
    iget-object v1, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    if-eqz v1, :cond_0

    .line 2078
    iget-object v1, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    invoke-virtual {v1, v0}, Lorg/android/agoo/d/a/b;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :cond_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "AsyncHttp.request"

    const-string v2, "http request makeRequestWithRetries"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    const-string v1, "AsyncHttp.request"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NPE in HttpClient"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    .line 1080
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/a/b;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/a/b;->b(Landroid/os/Message;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/android/agoo/d/a/m;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http request network connection error["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/android/agoo/d/a/m;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 50
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lorg/android/agoo/d/a/b;->a(Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    iget-object v0, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    invoke-virtual {v0}, Lorg/android/agoo/d/a/b;->a()V

    .line 68
    :cond_1
    :goto_1
    return-void

    .line 52
    :cond_2
    invoke-direct {p0}, Lorg/android/agoo/d/a/m;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "AsyncHttp.request"

    const-string v2, "http request io"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    iget-object v1, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    invoke-virtual {v1}, Lorg/android/agoo/d/a/b;->a()V

    .line 61
    iget-boolean v1, p0, Lorg/android/agoo/d/a/m;->e:Z

    .line 64
    iget-object v1, p0, Lorg/android/agoo/d/a/m;->d:Lorg/android/agoo/d/a/b;

    invoke-virtual {v1, v0}, Lorg/android/agoo/d/a/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
