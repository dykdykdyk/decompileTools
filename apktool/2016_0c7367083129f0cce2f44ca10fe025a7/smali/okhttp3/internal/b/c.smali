.class public final Lokhttp3/internal/b/c;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lokhttp3/internal/b/p;


# instance fields
.field final a:Lokhttp3/am;

.field final b:Lokhttp3/internal/connection/f;

.field final c:Lokio/BufferedSource;

.field final d:Lokio/BufferedSink;

.field e:I


# direct methods
.method public constructor <init>(Lokhttp3/am;Lokhttp3/internal/connection/f;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/b/c;->e:I

    .line 84
    iput-object p1, p0, Lokhttp3/internal/b/c;->a:Lokhttp3/am;

    .line 85
    iput-object p2, p0, Lokhttp3/internal/b/c;->b:Lokhttp3/internal/connection/f;

    .line 86
    iput-object p3, p0, Lokhttp3/internal/b/c;->c:Lokio/BufferedSource;

    .line 87
    iput-object p4, p0, Lokhttp3/internal/b/c;->d:Lokio/BufferedSink;

    .line 88
    return-void
.end method

.method static synthetic a(Lokio/ForwardingTimeout;)V
    .locals 2

    .prologue
    .line 64
    .line 12255
    invoke-virtual {p0}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    .line 12256
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p0, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 12257
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 12258
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 64
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/ay;)Lokhttp3/ba;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 131
    .line 6136
    invoke-static {p1}, Lokhttp3/internal/b/n;->a(Lokhttp3/ay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6137
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/b/c;->a(J)Lokio/Source;

    move-result-object v0

    .line 132
    :goto_0
    new-instance v1, Lokhttp3/internal/b/r;

    .line 10136
    iget-object v2, p1, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 132
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/b/r;-><init>(Lokhttp3/ab;Lokio/BufferedSource;)V

    return-object v1

    .line 6140
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7086
    iget-object v0, p1, Lokhttp3/ay;->a:Lokhttp3/as;

    .line 8044
    iget-object v1, v0, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 8236
    iget v0, p0, Lokhttp3/internal/b/c;->e:I

    if-eq v0, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/b/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8237
    :cond_1
    iput v5, p0, Lokhttp3/internal/b/c;->e:I

    .line 8238
    new-instance v0, Lokhttp3/internal/b/f;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/b/f;-><init>(Lokhttp3/internal/b/c;Lokhttp3/ad;)V

    goto :goto_0

    .line 9136
    :cond_2
    iget-object v0, p1, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 9042
    invoke-static {v0}, Lokhttp3/internal/b/n;->a(Lokhttp3/ab;)J

    move-result-wide v0

    .line 6145
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 6146
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/b/c;->a(J)Lokio/Source;

    move-result-object v0

    goto :goto_0

    .line 9242
    :cond_3
    iget v0, p0, Lokhttp3/internal/b/c;->e:I

    if-eq v0, v4, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/b/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9243
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/b/c;->b:Lokhttp3/internal/connection/f;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9244
    :cond_5
    iput v5, p0, Lokhttp3/internal/b/c;->e:I

    .line 9245
    iget-object v0, p0, Lokhttp3/internal/b/c;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->d()V

    .line 9246
    new-instance v0, Lokhttp3/internal/b/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/b/i;-><init>(Lokhttp3/internal/b/c;B)V

    goto/16 :goto_0
.end method

.method public final a(Lokhttp3/as;J)Lokio/Sink;
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    iget v0, p0, Lokhttp3/internal/b/c;->e:I

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/b/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_0
    iput v4, p0, Lokhttp3/internal/b/c;->e:I

    .line 1220
    new-instance v0, Lokhttp3/internal/b/e;

    invoke-direct {v0, p0, v2}, Lokhttp3/internal/b/e;-><init>(Lokhttp3/internal/b/c;B)V

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    .line 1224
    iget v0, p0, Lokhttp3/internal/b/c;->e:I

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/b/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1225
    :cond_2
    iput v4, p0, Lokhttp3/internal/b/c;->e:I

    .line 1226
    new-instance v0, Lokhttp3/internal/b/g;

    invoke-direct {v0, p0, p2, p3, v2}, Lokhttp3/internal/b/g;-><init>(Lokhttp3/internal/b/c;JB)V

    goto :goto_0

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)Lokio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lokhttp3/internal/b/c;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/b/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/b/c;->e:I

    .line 232
    new-instance v0, Lokhttp3/internal/b/h;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/b/h;-><init>(Lokhttp3/internal/b/c;J)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lokhttp3/internal/b/c;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, v0, Lokhttp3/internal/connection/c;->b:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/c;->a(Ljava/net/Socket;)V

    .line 108
    :cond_0
    return-void
.end method

.method public final a(Lokhttp3/ab;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget v0, p0, Lokhttp3/internal/b/c;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/b/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/b/c;->d:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 168
    const/4 v0, 0x0

    .line 11076
    iget-object v1, p1, Lokhttp3/ab;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 168
    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    iget-object v2, p0, Lokhttp3/internal/b/c;->d:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/ab;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    .line 170
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 171
    invoke-virtual {p1, v0}, Lokhttp3/ab;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    .line 172
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/b/c;->d:Lokio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/b/c;->e:I

    .line 176
    return-void
.end method

.method public final a(Lokhttp3/as;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lokhttp3/internal/b/c;->b:Lokhttp3/internal/connection/f;

    .line 122
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->b()Lokhttp3/internal/connection/c;

    move-result-object v0

    .line 2349
    iget-object v0, v0, Lokhttp3/internal/connection/c;->a:Lokhttp3/bc;

    .line 3067
    iget-object v0, v0, Lokhttp3/bc;->b:Ljava/net/Proxy;

    .line 122
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 4033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4048
    iget-object v2, p1, Lokhttp3/as;->b:Ljava/lang/String;

    .line 4034
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4035
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4085
    iget-object v2, p1, Lokhttp3/as;->a:Lokhttp3/ad;

    invoke-virtual {v2}, Lokhttp3/ad;->b()Z

    move-result v2

    .line 4052
    if-nez v2, :cond_0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 4037
    :goto_0
    if-eqz v0, :cond_1

    .line 5044
    iget-object v0, p1, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 4038
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4043
    :goto_1
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4044
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6052
    iget-object v1, p1, Lokhttp3/as;->c:Lokhttp3/ab;

    .line 123
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/b/c;->a(Lokhttp3/ab;Ljava/lang/String;)V

    .line 124
    return-void

    .line 4052
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6044
    :cond_1
    iget-object v0, p1, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 4040
    invoke-static {v0}, Lokhttp3/internal/b/s;->a(Lokhttp3/ad;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final b()Lokhttp3/az;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lokhttp3/internal/b/c;->d()Lokhttp3/az;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lokhttp3/internal/b/c;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 162
    return-void
.end method

.method public final d()Lokhttp3/az;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lokhttp3/internal/b/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/b/c;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/b/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/b/c;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/u;->a(Ljava/lang/String;)Lokhttp3/internal/b/u;

    move-result-object v0

    .line 188
    new-instance v1, Lokhttp3/az;

    invoke-direct {v1}, Lokhttp3/az;-><init>()V

    iget-object v2, v0, Lokhttp3/internal/b/u;->a:Lokhttp3/ap;

    .line 11323
    iput-object v2, v1, Lokhttp3/az;->b:Lokhttp3/ap;

    .line 189
    iget v2, v0, Lokhttp3/internal/b/u;->b:I

    .line 11328
    iput v2, v1, Lokhttp3/az;->c:I

    .line 190
    iget-object v2, v0, Lokhttp3/internal/b/u;->c:Ljava/lang/String;

    .line 11333
    iput-object v2, v1, Lokhttp3/az;->d:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lokhttp3/internal/b/c;->e()Lokhttp3/ab;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/az;->a(Lokhttp3/ab;)Lokhttp3/az;

    move-result-object v1

    .line 194
    iget v0, v0, Lokhttp3/internal/b/u;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 195
    const/4 v0, 0x4

    iput v0, p0, Lokhttp3/internal/b/c;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lokhttp3/internal/b/c;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public final e()Lokhttp3/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lokhttp3/ac;

    invoke-direct {v0}, Lokhttp3/ac;-><init>()V

    .line 211
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/b/c;->c:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    sget-object v2, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/a;->a(Lokhttp3/ac;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lokhttp3/ac;->a()Lokhttp3/ab;

    move-result-object v0

    return-object v0
.end method
