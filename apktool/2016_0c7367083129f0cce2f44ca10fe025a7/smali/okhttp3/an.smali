.class final Lokhttp3/an;
.super Lokhttp3/internal/a;
.source "OkHttpClient.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lokhttp3/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/o;Lokhttp3/a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/connection/c;
    .locals 4

    .prologue
    .line 3119
    sget-boolean v0, Lokhttp3/o;->g:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3120
    :cond_0
    iget-object v0, p1, Lokhttp3/o;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/c;

    .line 3121
    iget-object v2, v0, Lokhttp3/internal/connection/c;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lokhttp3/internal/connection/c;->i:I

    if-ge v2, v3, :cond_1

    .line 3349
    iget-object v2, v0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 3122
    iget-object v2, v2, Lokhttp3/bc;->a:Lokhttp3/a;

    invoke-virtual {p2, v2}, Lokhttp3/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lokhttp3/internal/connection/c;->k:Z

    if-nez v2, :cond_1

    .line 3124
    invoke-virtual {p3, v0}, Lokhttp3/internal/connection/f;->a(Lokhttp3/internal/connection/c;)V

    .line 3125
    :goto_0
    return-object v0

    .line 3128
    :cond_2
    const/4 v0, 0x0

    .line 145
    goto :goto_0
.end method

.method public final a(Lokhttp3/o;)Lokhttp3/internal/connection/d;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p1, Lokhttp3/o;->e:Lokhttp3/internal/connection/d;

    return-object v0
.end method

.method public final a(Lokhttp3/ac;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1247
    const-string v0, ":"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1248
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1249
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/ac;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac;

    .line 1253
    :goto_0
    return-void

    .line 1250
    :cond_0
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    const-string v0, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/ac;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac;

    goto :goto_0

    .line 1255
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Lokhttp3/ac;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac;

    goto :goto_0
.end method

.method public final a(Lokhttp3/ac;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p1, p2, p3}, Lokhttp3/ac;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/ac;

    .line 132
    return-void
.end method

.method public final a(Lokhttp3/q;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 4

    .prologue
    .line 162
    .line 5145
    iget-object v0, p1, Lokhttp3/q;->f:[Ljava/lang/String;

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/String;

    iget-object v1, p1, Lokhttp3/q;->f:[Ljava/lang/String;

    .line 5146
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 5148
    :goto_0
    iget-object v0, p1, Lokhttp3/q;->g:[Ljava/lang/String;

    if-eqz v0, :cond_4

    const-class v0, Ljava/lang/String;

    iget-object v2, p1, Lokhttp3/q;->g:[Ljava/lang/String;

    .line 5149
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lokhttp3/internal/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5154
    :goto_1
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lokhttp3/internal/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 5155
    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, Lokhttp3/internal/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5158
    :cond_0
    new-instance v2, Lokhttp3/r;

    invoke-direct {v2, p1}, Lokhttp3/r;-><init>(Lokhttp3/q;)V

    .line 5159
    invoke-virtual {v2, v1}, Lokhttp3/r;->a([Ljava/lang/String;)Lokhttp3/r;

    move-result-object v1

    .line 5160
    invoke-virtual {v1, v0}, Lokhttp3/r;->b([Ljava/lang/String;)Lokhttp3/r;

    move-result-object v0

    .line 5161
    invoke-virtual {v0}, Lokhttp3/r;->b()Lokhttp3/q;

    move-result-object v0

    .line 5132
    iget-object v1, v0, Lokhttp3/q;->g:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5133
    iget-object v1, v0, Lokhttp3/q;->g:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 5135
    :cond_1
    iget-object v1, v0, Lokhttp3/q;->f:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5136
    iget-object v0, v0, Lokhttp3/q;->f:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 163
    :cond_2
    return-void

    .line 5147
    :cond_3
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 5150
    :cond_4
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lokhttp3/o;Lokhttp3/internal/connection/c;)Z
    .locals 1

    .prologue
    .line 2145
    sget-boolean v0, Lokhttp3/o;->g:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2146
    :cond_0
    iget-boolean v0, p2, Lokhttp3/internal/connection/c;->k:Z

    if-nez v0, :cond_1

    iget v0, p1, Lokhttp3/o;->b:I

    if-nez v0, :cond_2

    .line 2147
    :cond_1
    iget-object v0, p1, Lokhttp3/o;->d:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 2148
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2150
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2151
    const/4 v0, 0x0

    .line 140
    goto :goto_0
.end method

.method public final b(Lokhttp3/o;Lokhttp3/internal/connection/c;)V
    .locals 2

    .prologue
    .line 4132
    sget-boolean v0, Lokhttp3/o;->g:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4133
    :cond_0
    iget-boolean v0, p1, Lokhttp3/o;->f:Z

    if-nez v0, :cond_1

    .line 4134
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp3/o;->f:Z

    .line 4135
    sget-object v0, Lokhttp3/o;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p1, Lokhttp3/o;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4137
    :cond_1
    iget-object v0, p1, Lokhttp3/o;->d:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method
