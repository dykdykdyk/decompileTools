.class public final Lokhttp3/internal/connection/c;
.super Lokhttp3/internal/framed/n;
.source "RealConnection.java"

# interfaces
.implements Lokhttp3/n;


# instance fields
.field public final a:Lokhttp3/bc;

.field public b:Ljava/net/Socket;

.field public c:Ljava/net/Socket;

.field public d:Lokhttp3/aa;

.field public volatile e:Lokhttp3/internal/framed/e;

.field public f:I

.field public g:Lokio/BufferedSource;

.field public h:Lokio/BufferedSink;

.field public i:I

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lokhttp3/internal/connection/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:J

.field private n:Lokhttp3/ap;


# direct methods
.method public constructor <init>(Lokhttp3/bc;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lokhttp3/internal/framed/n;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/connection/c;->j:Ljava/util/List;

    .line 83
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lokhttp3/internal/connection/c;->l:J

    .line 86
    iput-object p1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 87
    return-void
.end method

.method private a(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 13067
    iget-object v1, v0, Lokhttp3/bc;->b:Ljava/net/Proxy;

    .line 179
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 14057
    iget-object v0, v0, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 181
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1

    .line 14101
    :cond_0
    iget-object v0, v0, Lokhttp3/a;->c:Ljavax/net/SocketFactory;

    .line 182
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    .line 185
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 187
    :try_start_0
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 15071
    iget-object v2, v2, Lokhttp3/bc;->c:Ljava/net/InetSocketAddress;

    .line 187
    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/internal/d/g;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    .line 192
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    .line 193
    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 16071
    iget-object v2, v2, Lokhttp3/bc;->c:Ljava/net/InetSocketAddress;

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lokhttp3/internal/connection/b;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x10000

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 197
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 17057
    iget-object v0, v0, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 17139
    iget-object v0, v0, Lokhttp3/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 197
    if-eqz v0, :cond_b

    .line 17224
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 18057
    iget-object v4, v0, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 18139
    iget-object v0, v4, Lokhttp3/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 17230
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    .line 19091
    iget-object v3, v4, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 19481
    iget-object v3, v3, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 20091
    iget-object v5, v4, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 20497
    iget v5, v5, Lokhttp3/ad;->c:I

    .line 17231
    const/4 v6, 0x1

    .line 17230
    invoke-virtual {v0, v1, v3, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 21057
    :try_start_1
    iget v1, p1, Lokhttp3/internal/connection/b;->b:I

    iget-object v3, p1, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_d

    .line 21058
    iget-object v1, p1, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/q;

    .line 21059
    invoke-virtual {v1, v0}, Lokhttp3/q;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 21061
    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lokhttp3/internal/connection/b;->b:I

    .line 21066
    :goto_1
    if-nez v1, :cond_2

    .line 21070
    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lokhttp3/internal/connection/b;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lokhttp3/internal/connection/b;->a:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", supported protocols="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21073
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17269
    :catch_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 17270
    :goto_2
    :try_start_2
    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17273
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_0

    .line 17274
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lokhttp3/internal/d/g;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 17277
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    throw v0

    .line 21057
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 21076
    :cond_2
    :try_start_3
    invoke-virtual {p1, v0}, Lokhttp3/internal/connection/b;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    iput-boolean v3, p1, Lokhttp3/internal/connection/b;->c:Z

    .line 21078
    sget-object v3, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    iget-boolean v5, p1, Lokhttp3/internal/connection/b;->d:Z

    invoke-virtual {v3, v1, v0, v5}, Lokhttp3/internal/a;->a(Lokhttp3/q;Ljavax/net/ssl/SSLSocket;Z)V

    .line 21125
    iget-boolean v3, v1, Lokhttp3/q;->e:Z

    .line 17235
    if-eqz v3, :cond_3

    .line 17236
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v3

    .line 22091
    iget-object v5, v4, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 22481
    iget-object v5, v5, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 23114
    iget-object v6, v4, Lokhttp3/a;->e:Ljava/util/List;

    .line 17236
    invoke-virtual {v3, v0, v5, v6}, Lokhttp3/internal/d/g;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 17241
    :cond_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 17242
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lokhttp3/aa;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/aa;

    move-result-object v3

    .line 23144
    iget-object v5, v4, Lokhttp3/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 24091
    iget-object v6, v4, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 24481
    iget-object v6, v6, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 17245
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 25097
    iget-object v1, v3, Lokhttp3/aa;->b:Ljava/util/List;

    .line 17246
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 17247
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Hostname "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26091
    iget-object v4, v4, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 26481
    iget-object v4, v4, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 17247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not verified:\n    certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 17248
    invoke-static {v1}, Lokhttp3/j;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 17249
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    subjectAltNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 17250
    invoke-static {v1}, Lokhttp3/internal/e/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17273
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_3

    .line 27149
    :cond_4
    iget-object v5, v4, Lokhttp3/a;->k:Lokhttp3/j;

    .line 28091
    iget-object v4, v4, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 28481
    iget-object v4, v4, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 29097
    iget-object v6, v3, Lokhttp3/aa;->b:Ljava/util/List;

    .line 17254
    invoke-virtual {v5, v4, v6}, Lokhttp3/j;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 29125
    iget-boolean v1, v1, Lokhttp3/q;->e:Z

    .line 17258
    if-eqz v1, :cond_5

    .line 17259
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/d/g;->a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 17261
    :cond_5
    iput-object v0, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    .line 17262
    iget-object v1, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    .line 17263
    iget-object v1, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    .line 17264
    iput-object v3, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/aa;

    .line 17265
    if-eqz v2, :cond_9

    .line 17266
    invoke-static {v2}, Lokhttp3/ap;->a(Ljava/lang/String;)Lokhttp3/ap;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17273
    if-eqz v0, :cond_6

    .line 17274
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/d/g;->b(Ljavax/net/ssl/SSLSocket;)V

    .line 204
    :cond_6
    :goto_5
    iget-object v0, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;

    sget-object v1, Lokhttp3/ap;->c:Lokhttp3/ap;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;

    sget-object v1, Lokhttp3/ap;->d:Lokhttp3/ap;

    if-ne v0, v1, :cond_c

    .line 205
    :cond_7
    iget-object v0, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-virtual {v0, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 207
    new-instance v0, Lokhttp3/internal/framed/m;

    invoke-direct {v0}, Lokhttp3/internal/framed/m;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 30057
    iget-object v2, v2, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 30091
    iget-object v2, v2, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 30481
    iget-object v2, v2, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    iget-object v4, p0, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    .line 30543
    iput-object v1, v0, Lokhttp3/internal/framed/m;->a:Ljava/net/Socket;

    .line 30544
    iput-object v2, v0, Lokhttp3/internal/framed/m;->b:Ljava/lang/String;

    .line 30545
    iput-object v3, v0, Lokhttp3/internal/framed/m;->c:Lokio/BufferedSource;

    .line 30546
    iput-object v4, v0, Lokhttp3/internal/framed/m;->d:Lokio/BufferedSink;

    .line 208
    iget-object v1, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;

    .line 30556
    iput-object v1, v0, Lokhttp3/internal/framed/m;->f:Lokhttp3/ap;

    .line 31551
    iput-object p0, v0, Lokhttp3/internal/framed/m;->e:Lokhttp3/internal/framed/n;

    .line 31566
    new-instance v1, Lokhttp3/internal/framed/e;

    invoke-direct {v1, v0, v8}, Lokhttp3/internal/framed/e;-><init>(Lokhttp3/internal/framed/m;B)V

    .line 32495
    iget-object v0, v1, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    invoke-interface {v0}, Lokhttp3/internal/framed/d;->a()V

    .line 32496
    iget-object v0, v1, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    iget-object v2, v1, Lokhttp3/internal/framed/e;->e:Lokhttp3/internal/framed/ap;

    invoke-interface {v0, v2}, Lokhttp3/internal/framed/d;->b(Lokhttp3/internal/framed/ap;)V

    .line 32497
    iget-object v0, v1, Lokhttp3/internal/framed/e;->e:Lokhttp3/internal/framed/ap;

    invoke-virtual {v0}, Lokhttp3/internal/framed/ap;->b()I

    move-result v0

    .line 32498
    if-eq v0, v10, :cond_8

    .line 32499
    iget-object v2, v1, Lokhttp3/internal/framed/e;->i:Lokhttp3/internal/framed/d;

    sub-int/2addr v0, v10

    int-to-long v4, v0

    invoke-interface {v2, v8, v4, v5}, Lokhttp3/internal/framed/d;->a(IJ)V

    .line 32502
    :cond_8
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, v1, Lokhttp3/internal/framed/e;->j:Lokhttp3/internal/framed/p;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    invoke-virtual {v1}, Lokhttp3/internal/framed/e;->a()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/c;->i:I

    .line 216
    iput-object v1, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/framed/e;

    .line 220
    :goto_6
    return-void

    .line 17266
    :cond_9
    :try_start_4
    sget-object v1, Lokhttp3/ap;->b:Lokhttp3/ap;
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 17271
    :cond_a
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    :cond_b
    sget-object v0, Lokhttp3/ap;->b:Lokhttp3/ap;

    iput-object v0, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;

    .line 201
    iget-object v0, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    goto :goto_5

    .line 218
    :cond_c
    iput v9, p0, Lokhttp3/internal/connection/c;->i:I

    goto :goto_6

    .line 17273
    :catchall_2
    move-exception v0

    goto/16 :goto_3

    .line 17269
    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :cond_d
    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Lokhttp3/bc;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    return-object v0
.end method

.method public final a(IIILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lokhttp3/q;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    new-instance v4, Lokhttp3/internal/connection/b;

    invoke-direct {v4, p4}, Lokhttp3/internal/connection/b;-><init>(Ljava/util/List;)V

    .line 96
    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 1057
    iget-object v1, v1, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 1139
    iget-object v1, v1, Lokhttp3/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 96
    if-nez v1, :cond_3

    .line 97
    sget-object v1, Lokhttp3/q;->c:Lokhttp3/q;

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 101
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 2057
    iget-object v1, v1, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 2091
    iget-object v1, v1, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 2481
    iget-object v1, v1, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 102
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/internal/d/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 103
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEARTEXT communication to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not permitted by network security policy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 3167
    :cond_2
    :try_start_0
    invoke-direct {p0, v4}, Lokhttp3/internal/connection/c;->a(Lokhttp3/internal/connection/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_3
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;

    if-nez v1, :cond_d

    .line 110
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 3079
    iget-object v2, v1, Lokhttp3/bc;->a:Lokhttp3/a;

    iget-object v2, v2, Lokhttp3/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_8

    iget-object v1, v1, Lokhttp3/bc;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    .line 110
    :goto_1
    if-eqz v1, :cond_a

    .line 3340
    new-instance v1, Lokhttp3/at;

    invoke-direct {v1}, Lokhttp3/at;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 4057
    iget-object v2, v2, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 4091
    iget-object v2, v2, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 3341
    invoke-virtual {v1, v2}, Lokhttp3/at;->a(Lokhttp3/ad;)Lokhttp3/at;

    move-result-object v1

    const-string v2, "Host"

    iget-object v3, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 5057
    iget-object v3, v3, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 5091
    iget-object v3, v3, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 3342
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lokhttp3/internal/c;->a(Lokhttp3/ad;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    move-result-object v1

    const-string v2, "Proxy-Connection"

    const-string v3, "Keep-Alive"

    .line 3343
    invoke-virtual {v1, v2, v3}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    move-result-object v1

    const-string v2, "User-Agent"

    .line 6020
    const-string v3, "okhttp/3.4.1"

    .line 3344
    invoke-virtual {v1, v2, v3}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    move-result-object v1

    .line 3345
    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/as;

    move-result-object v1

    .line 6044
    iget-object v2, v1, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 3154
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/connection/c;->a(II)V

    .line 6289
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CONNECT "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lokhttp3/internal/c;->a(Lokhttp3/ad;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP/1.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6291
    new-instance v5, Lokhttp3/internal/b/c;

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    iget-object v8, p0, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    invoke-direct {v5, v3, v6, v7, v8}, Lokhttp3/internal/b/c;-><init>(Lokhttp3/am;Lokhttp3/internal/connection/f;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 6292
    iget-object v3, p0, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v3

    int-to-long v6, p2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v8}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 6293
    iget-object v3, p0, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v3

    int-to-long v6, p3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v8}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 7052
    iget-object v3, v1, Lokhttp3/as;->c:Lokhttp3/ab;

    .line 6294
    invoke-virtual {v5, v3, v2}, Lokhttp3/internal/b/c;->a(Lokhttp3/ab;Ljava/lang/String;)V

    .line 6295
    invoke-virtual {v5}, Lokhttp3/internal/b/c;->c()V

    .line 6296
    invoke-virtual {v5}, Lokhttp3/internal/b/c;->d()Lokhttp3/az;

    move-result-object v2

    .line 7318
    iput-object v1, v2, Lokhttp3/az;->a:Lokhttp3/as;

    .line 6296
    invoke-virtual {v2}, Lokhttp3/az;->a()Lokhttp3/ay;

    move-result-object v1

    .line 8136
    iget-object v2, v1, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 8042
    invoke-static {v2}, Lokhttp3/internal/b/n;->a(Lokhttp3/ab;)J

    move-result-wide v2

    .line 6300
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    .line 6301
    const-wide/16 v2, 0x0

    .line 6303
    :cond_4
    invoke-virtual {v5, v2, v3}, Lokhttp3/internal/b/c;->a(J)Lokio/Source;

    move-result-object v2

    .line 6304
    const v3, 0x7fffffff

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v5}, Lokhttp3/internal/c;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 6305
    invoke-interface {v2}, Lokio/Source;->close()V

    .line 9098
    iget v2, v1, Lokhttp3/ay;->b:I

    .line 6307
    sparse-switch v2, :sswitch_data_0

    .line 6328
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected response code for CONNECT: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11098
    iget v1, v1, Lokhttp3/ay;->b:I

    .line 6329
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    iget-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-static {v2}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 118
    iget-object v2, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    invoke-static {v2}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    .line 123
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/aa;

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;

    .line 126
    if-nez v0, :cond_b

    .line 127
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 132
    :goto_2
    if-eqz p5, :cond_7

    .line 12092
    const/4 v2, 0x1

    iput-boolean v2, v4, Lokhttp3/internal/connection/b;->d:Z

    .line 12094
    iget-boolean v2, v4, Lokhttp3/internal/connection/b;->c:Z

    if-eqz v2, :cond_c

    .line 12099
    instance-of v2, v1, Ljava/net/ProtocolException;

    if-nez v2, :cond_c

    .line 12106
    instance-of v2, v1, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_c

    .line 12112
    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_5

    .line 12115
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_c

    .line 12119
    :cond_5
    instance-of v2, v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_c

    .line 12126
    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v2, :cond_6

    instance-of v1, v1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v1, :cond_c

    :cond_6
    const/4 v1, 0x1

    .line 132
    :goto_3
    if-nez v1, :cond_3

    .line 133
    :cond_7
    throw v0

    .line 3079
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 6313
    :sswitch_0
    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6314
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6319
    :sswitch_1
    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 10057
    iget-object v1, v1, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 10106
    iget-object v1, v1, Lokhttp3/a;->d:Lokhttp3/b;

    .line 6319
    invoke-interface {v1}, Lokhttp3/b;->a()Lokhttp3/as;

    .line 6320
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to authenticate with proxy"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11173
    :cond_a
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/connection/c;->a(II)V

    .line 11174
    invoke-direct {p0, v4}, Lokhttp3/internal/connection/c;->a(Lokhttp3/internal/connection/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 12051
    :cond_b
    iget-object v2, v0, Lokhttp3/internal/connection/RouteException;->a:Ljava/io/IOException;

    invoke-static {v1, v2}, Lokhttp3/internal/connection/RouteException;->a(Ljava/io/IOException;Ljava/io/IOException;)V

    .line 12052
    iput-object v1, v0, Lokhttp3/internal/connection/RouteException;->a:Ljava/io/IOException;

    goto :goto_2

    .line 12126
    :cond_c
    const/4 v1, 0x0

    goto :goto_3

    .line 137
    :cond_d
    return-void

    .line 6307
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lokhttp3/internal/framed/e;)V
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p1}, Lokhttp3/internal/framed/e;->a()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/c;->i:I

    .line 401
    return-void
.end method

.method public final a(Lokhttp3/internal/framed/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lokhttp3/internal/framed/a;->k:Lokhttp3/internal/framed/a;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/a;)V

    .line 396
    return-void
.end method

.method public final a(Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 363
    iget-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 390
    :cond_1
    :goto_0
    return v0

    .line 367
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/framed/e;

    if-nez v2, :cond_1

    .line 371
    if-eqz p1, :cond_1

    .line 373
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 375
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 376
    iget-object v2, p0, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 381
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    .line 377
    goto :goto_0

    .line 381
    :cond_3
    iget-object v2, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v2

    iget-object v4, p0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 386
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 33057
    iget-object v1, v1, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 33091
    iget-object v1, v1, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 33481
    iget-object v1, v1, Lokhttp3/ad;->b:Ljava/lang/String;

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 34057
    iget-object v1, v1, Lokhttp3/bc;->a:Lokhttp3/a;

    .line 34091
    iget-object v1, v1, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 34497
    iget v1, v1, Lokhttp3/ad;->c:I

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 35067
    iget-object v1, v1, Lokhttp3/bc;->b:Ljava/net/Proxy;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 35071
    iget-object v1, v1, Lokhttp3/bc;->c:Ljava/net/InetSocketAddress;

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/c;->d:Lokhttp3/aa;

    .line 35092
    iget-object v0, v0, Lokhttp3/aa;->a:Lokhttp3/m;

    .line 431
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/c;->n:Lokhttp3/ap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    return-object v0

    .line 431
    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
