.class public final Lokhttp3/internal/connection/f;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final a:Lokhttp3/a;

.field public b:Lokhttp3/bc;

.field public final c:Lokhttp3/o;

.field public final d:Lokhttp3/internal/connection/e;

.field public e:Lokhttp3/internal/connection/c;

.field public f:Z

.field public g:Lokhttp3/internal/b/p;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Lokhttp3/o;Lokhttp3/a;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    .line 87
    iput-object p2, p0, Lokhttp3/internal/connection/f;->a:Lokhttp3/a;

    .line 88
    new-instance v0, Lokhttp3/internal/connection/e;

    invoke-direct {p0}, Lokhttp3/internal/connection/f;->e()Lokhttp3/internal/connection/d;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lokhttp3/internal/connection/e;-><init>(Lokhttp3/a;Lokhttp3/internal/connection/d;)V

    iput-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/internal/connection/e;

    .line 89
    return-void
.end method

.method private a(IIIZ)Lokhttp3/internal/connection/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/f;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/internal/b/p;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "stream != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iget-boolean v0, p0, Lokhttp3/internal/connection/f;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    .line 163
    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lokhttp3/internal/connection/c;->k:Z

    if-nez v2, :cond_3

    .line 164
    monitor-exit v1

    .line 197
    :goto_0
    return-object v0

    .line 168
    :cond_3
    sget-object v0, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    iget-object v2, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    iget-object v3, p0, Lokhttp3/internal/connection/f;->a:Lokhttp3/a;

    invoke-virtual {v0, v2, v3, p0}, Lokhttp3/internal/a;->a(Lokhttp3/o;Lokhttp3/a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/connection/c;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    iput-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    .line 171
    monitor-exit v1

    goto :goto_0

    .line 174
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/bc;

    .line 175
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    if-nez v0, :cond_6

    .line 178
    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->a()Lokhttp3/bc;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v1

    .line 180
    :try_start_2
    iput-object v0, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/bc;

    .line 181
    const/4 v2, 0x0

    iput v2, p0, Lokhttp3/internal/connection/f;->h:I

    .line 182
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v0

    .line 184
    :goto_1
    new-instance v0, Lokhttp3/internal/connection/c;

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/c;-><init>(Lokhttp3/bc;)V

    .line 185
    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/f;->a(Lokhttp3/internal/connection/c;)V

    .line 187
    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v1

    .line 188
    :try_start_3
    sget-object v2, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    iget-object v3, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    invoke-virtual {v2, v3, v0}, Lokhttp3/internal/a;->b(Lokhttp3/o;Lokhttp3/internal/connection/c;)V

    .line 189
    iput-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    .line 190
    iget-boolean v2, p0, Lokhttp3/internal/connection/f;->f:Z

    if-eqz v2, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 182
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 191
    :cond_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    iget-object v1, p0, Lokhttp3/internal/connection/f;->a:Lokhttp3/a;

    .line 3118
    iget-object v4, v1, Lokhttp3/a;->f:Ljava/util/List;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 193
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/c;->a(IIILjava/util/List;Z)V

    .line 195
    invoke-direct {p0}, Lokhttp3/internal/connection/f;->e()Lokhttp3/internal/connection/d;

    move-result-object v1

    .line 3349
    iget-object v2, v0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 195
    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/d;->b(Lokhttp3/bc;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private a(IIIZZ)Lokhttp3/internal/connection/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/connection/f;->a(IIIZ)Lokhttp3/internal/connection/c;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v1

    .line 134
    :try_start_0
    iget v2, v0, Lokhttp3/internal/connection/c;->f:I

    if-nez v2, :cond_1

    .line 135
    monitor-exit v1

    .line 146
    :cond_0
    return-object v0

    .line 137
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0, p5}, Lokhttp3/internal/connection/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2232
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v3}, Lokhttp3/internal/connection/f;->a(ZZZ)V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()Lokhttp3/internal/connection/d;
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    invoke-virtual {v0, v1}, Lokhttp3/internal/a;->a(Lokhttp3/o;)Lokhttp3/internal/connection/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lokhttp3/internal/b/p;
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/internal/b/p;

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lokhttp3/am;Z)Lokhttp3/internal/b/p;
    .locals 6

    .prologue
    .line 92
    .line 1276
    iget v1, p1, Lokhttp3/am;->w:I

    .line 1281
    iget v2, p1, Lokhttp3/am;->x:I

    .line 1286
    iget v3, p1, Lokhttp3/am;->y:I

    .line 1350
    iget-boolean v4, p1, Lokhttp3/am;->v:Z

    move-object v0, p0

    move v5, p2

    .line 98
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/f;->a(IIIZZ)Lokhttp3/internal/connection/c;

    move-result-object v1

    .line 102
    iget-object v0, v1, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/framed/e;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lokhttp3/internal/b/j;

    iget-object v1, v1, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/framed/e;

    invoke-direct {v0, p1, p0, v1}, Lokhttp3/internal/b/j;-><init>(Lokhttp3/am;Lokhttp3/internal/connection/f;Lokhttp3/internal/framed/e;)V

    .line 112
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    iput-object v0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/internal/b/p;

    .line 114
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 1358
    :cond_0
    :try_start_2
    iget-object v0, v1, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    .line 105
    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 106
    iget-object v0, v1, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 107
    iget-object v0, v1, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v2, v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 108
    new-instance v0, Lokhttp3/internal/b/c;

    iget-object v2, v1, Lokhttp3/internal/connection/c;->g:Lokio/BufferedSource;

    iget-object v1, v1, Lokhttp3/internal/connection/c;->h:Lokio/BufferedSink;

    invoke-direct {v0, p1, p0, v2, v1}, Lokhttp3/internal/b/c;-><init>(Lokhttp3/am;Lokhttp3/internal/connection/f;Lokio/BufferedSource;Lokio/BufferedSink;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 115
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 285
    .line 287
    iget-object v3, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v3

    .line 288
    :try_start_0
    instance-of v0, p1, Lokhttp3/internal/framed/StreamResetException;

    if-eqz v0, :cond_3

    .line 289
    check-cast p1, Lokhttp3/internal/framed/StreamResetException;

    .line 290
    iget-object v0, p1, Lokhttp3/internal/framed/StreamResetException;->a:Lokhttp3/internal/framed/a;

    sget-object v4, Lokhttp3/internal/framed/a;->k:Lokhttp3/internal/framed/a;

    if-ne v0, v4, :cond_0

    .line 291
    iget v0, p0, Lokhttp3/internal/connection/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/f;->h:I

    .line 295
    :cond_0
    iget-object v0, p1, Lokhttp3/internal/framed/StreamResetException;->a:Lokhttp3/internal/framed/a;

    sget-object v4, Lokhttp3/internal/framed/a;->k:Lokhttp3/internal/framed/a;

    if-ne v0, v4, :cond_1

    iget v0, p0, Lokhttp3/internal/connection/f;->h:I

    if-le v0, v2, :cond_7

    .line 297
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/bc;

    :cond_2
    :goto_0
    move v0, v2

    .line 310
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/connection/f;->a(ZZZ)V

    .line 313
    return-void

    .line 299
    :cond_3
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    .line 4412
    iget-object v0, v0, Lokhttp3/internal/connection/c;->e:Lokhttp3/internal/framed/e;

    if-eqz v0, :cond_6

    move v0, v2

    .line 299
    :goto_2
    if-nez v0, :cond_7

    .line 303
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    iget v0, v0, Lokhttp3/internal/connection/c;->f:I

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/bc;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 305
    iget-object v0, p0, Lokhttp3/internal/connection/f;->d:Lokhttp3/internal/connection/e;

    iget-object v4, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/bc;

    .line 6067
    iget-object v5, v4, Lokhttp3/bc;->b:Ljava/net/Proxy;

    .line 5099
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_4

    iget-object v5, v0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 6126
    iget-object v5, v5, Lokhttp3/a;->g:Ljava/net/ProxySelector;

    .line 5099
    if-eqz v5, :cond_4

    .line 5101
    iget-object v5, v0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 7126
    iget-object v5, v5, Lokhttp3/a;->g:Ljava/net/ProxySelector;

    .line 5101
    iget-object v6, v0, Lokhttp3/internal/connection/e;->a:Lokhttp3/a;

    .line 8091
    iget-object v6, v6, Lokhttp3/a;->a:Lokhttp3/ad;

    .line 5102
    invoke-virtual {v6}, Lokhttp3/ad;->a()Ljava/net/URI;

    move-result-object v6

    .line 9067
    iget-object v7, v4, Lokhttp3/bc;->b:Ljava/net/Proxy;

    .line 5102
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    .line 5101
    invoke-virtual {v5, v6, v7, p1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 5105
    :cond_4
    iget-object v0, v0, Lokhttp3/internal/connection/e;->b:Lokhttp3/internal/connection/d;

    invoke-virtual {v0, v4}, Lokhttp3/internal/connection/d;->a(Lokhttp3/bc;)V

    .line 307
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/f;->b:Lokhttp3/bc;

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v0, v1

    .line 4412
    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public final a(Lokhttp3/internal/connection/c;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p1, Lokhttp3/internal/connection/c;->j:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public final a(ZLokhttp3/internal/b/p;)V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v1

    .line 202
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/internal/b/p;

    if-eq p2, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/internal/b/p;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 206
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    iget v2, v0, Lokhttp3/internal/connection/c;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/internal/connection/c;->f:I

    .line 208
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/connection/f;->a(ZZZ)V

    .line 210
    return-void
.end method

.method public final a(ZZZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 240
    .line 241
    iget-object v3, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    monitor-enter v3

    .line 242
    if-eqz p3, :cond_0

    .line 243
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/internal/b/p;

    .line 245
    :cond_0
    if-eqz p2, :cond_1

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/f;->i:Z

    .line 248
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    if-eqz v0, :cond_8

    .line 249
    if-eqz p1, :cond_2

    .line 250
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokhttp3/internal/connection/c;->k:Z

    .line 252
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/f;->g:Lokhttp3/internal/b/p;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lokhttp3/internal/connection/f;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    iget-boolean v0, v0, Lokhttp3/internal/connection/c;->k:Z

    if-eqz v0, :cond_8

    .line 253
    :cond_3
    iget-object v4, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    .line 4325
    const/4 v0, 0x0

    iget-object v2, v4, Lokhttp3/internal/connection/c;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_6

    .line 4326
    iget-object v0, v4, Lokhttp3/internal/connection/c;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 4327
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_5

    .line 4328
    iget-object v0, v4, Lokhttp3/internal/connection/c;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    iget-object v0, v0, Lokhttp3/internal/connection/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v0, Lokhttp3/internal/connection/c;->l:J

    .line 256
    sget-object v0, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    iget-object v2, p0, Lokhttp3/internal/connection/f;->c:Lokhttp3/o;

    iget-object v4, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    invoke-virtual {v0, v2, v4}, Lokhttp3/internal/a;->a(Lokhttp3/o;Lokhttp3/internal/connection/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    iget-object v1, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    move-object v0, v1

    .line 260
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;

    .line 263
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v0, :cond_4

    .line 4358
    iget-object v0, v0, Lokhttp3/internal/connection/c;->c:Ljava/net/Socket;

    .line 265
    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 267
    :cond_4
    return-void

    .line 4325
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 4332
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method public final declared-synchronized b()Lokhttp3/internal/connection/c;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/f;->e:Lokhttp3/internal/connection/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lokhttp3/internal/connection/f;->a(ZZZ)V

    .line 228
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lokhttp3/internal/connection/f;->a(ZZZ)V

    .line 233
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lokhttp3/internal/connection/f;->a:Lokhttp3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
