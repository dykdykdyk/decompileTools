.class public final Lokhttp3/internal/b/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lokhttp3/ag;


# instance fields
.field private final a:Lokhttp3/t;


# direct methods
.method public constructor <init>(Lokhttp3/t;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lokhttp3/internal/b/a;->a:Lokhttp3/t;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/ah;)Lokhttp3/ay;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-interface {p1}, Lokhttp3/ah;->a()Lokhttp3/as;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lokhttp3/as;->a()Lokhttp3/at;

    move-result-object v4

    .line 1064
    iget-object v0, v3, Lokhttp3/as;->d:Lokhttp3/au;

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Lokhttp3/au;->contentType()Lokhttp3/ai;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    const-string v5, "Content-Type"

    invoke-virtual {v1}, Lokhttp3/ai;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 58
    :cond_0
    invoke-virtual {v0}, Lokhttp3/au;->contentLength()J

    move-result-wide v0

    .line 59
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-eqz v5, :cond_5

    .line 60
    const-string v5, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 61
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v4, v0}, Lokhttp3/at;->b(Ljava/lang/String;)Lokhttp3/at;

    .line 68
    :cond_1
    :goto_0
    const-string v0, "Host"

    invoke-virtual {v3, v0}, Lokhttp3/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 69
    const-string v0, "Host"

    .line 2044
    iget-object v1, v3, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 69
    invoke-static {v1, v2}, Lokhttp3/internal/c;->a(Lokhttp3/ad;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 72
    :cond_2
    const-string v0, "Connection"

    invoke-virtual {v3, v0}, Lokhttp3/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 73
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v4, v0, v1}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 79
    :cond_3
    const-string v0, "Accept-Encoding"

    invoke-virtual {v3, v0}, Lokhttp3/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 80
    const/4 v0, 0x1

    .line 81
    const-string v1, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v4, v1, v5}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    move v1, v0

    .line 84
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/b/a;->a:Lokhttp3/t;

    invoke-interface {v0}, Lokhttp3/t;->b()Ljava/util/List;

    move-result-object v5

    .line 85
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 86
    const-string v6, "Cookie"

    .line 2117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2118
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-ge v2, v8, :cond_6

    .line 2119
    if-lez v2, :cond_4

    .line 2120
    const-string v0, "; "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/s;

    .line 3095
    iget-object v9, v0, Lokhttp3/s;->a:Ljava/lang/String;

    .line 2123
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3100
    iget-object v0, v0, Lokhttp3/s;->b:Ljava/lang/String;

    .line 2123
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 63
    :cond_5
    const-string v0, "Transfer-Encoding"

    const-string v1, "chunked"

    invoke-virtual {v4, v0, v1}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 64
    const-string v0, "Content-Length"

    invoke-virtual {v4, v0}, Lokhttp3/at;->b(Ljava/lang/String;)Lokhttp3/at;

    goto :goto_0

    .line 2125
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v4, v6, v0}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 89
    :cond_7
    const-string v0, "User-Agent"

    invoke-virtual {v3, v0}, Lokhttp3/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 90
    const-string v0, "User-Agent"

    .line 4020
    const-string v2, "okhttp/3.4.1"

    .line 90
    invoke-virtual {v4, v0, v2}, Lokhttp3/at;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 93
    :cond_8
    invoke-virtual {v4}, Lokhttp3/at;->a()Lokhttp3/as;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/ah;->a(Lokhttp3/as;)Lokhttp3/ay;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lokhttp3/internal/b/a;->a:Lokhttp3/t;

    .line 4044
    iget-object v4, v3, Lokhttp3/as;->a:Lokhttp3/ad;

    .line 4136
    iget-object v5, v0, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 95
    invoke-static {v2, v4, v5}, Lokhttp3/internal/b/n;->a(Lokhttp3/t;Lokhttp3/ad;Lokhttp3/ab;)V

    .line 97
    invoke-virtual {v0}, Lokhttp3/ay;->b()Lokhttp3/az;

    move-result-object v2

    .line 4318
    iput-object v3, v2, Lokhttp3/az;->a:Lokhttp3/as;

    .line 100
    if-eqz v1, :cond_9

    const-string v1, "gzip"

    const-string v3, "Content-Encoding"

    .line 101
    invoke-virtual {v0, v3}, Lokhttp3/ay;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    invoke-static {v0}, Lokhttp3/internal/b/n;->a(Lokhttp3/ay;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 103
    new-instance v1, Lokio/GzipSource;

    .line 5172
    iget-object v3, v0, Lokhttp3/ay;->f:Lokhttp3/ba;

    .line 103
    invoke-virtual {v3}, Lokhttp3/ba;->source()Lokio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v3}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 6136
    iget-object v0, v0, Lokhttp3/ay;->e:Lokhttp3/ab;

    .line 104
    invoke-virtual {v0}, Lokhttp3/ab;->a()Lokhttp3/ac;

    move-result-object v0

    const-string v3, "Content-Encoding"

    .line 105
    invoke-virtual {v0, v3}, Lokhttp3/ac;->a(Ljava/lang/String;)Lokhttp3/ac;

    move-result-object v0

    const-string v3, "Content-Length"

    .line 106
    invoke-virtual {v0, v3}, Lokhttp3/ac;->a(Ljava/lang/String;)Lokhttp3/ac;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lokhttp3/ac;->a()Lokhttp3/ab;

    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Lokhttp3/az;->a(Lokhttp3/ab;)Lokhttp3/az;

    .line 109
    new-instance v3, Lokhttp3/internal/b/r;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lokhttp3/internal/b/r;-><init>(Lokhttp3/ab;Lokio/BufferedSource;)V

    .line 6372
    iput-object v3, v2, Lokhttp3/az;->g:Lokhttp3/ba;

    .line 112
    :cond_9
    invoke-virtual {v2}, Lokhttp3/az;->a()Lokhttp3/ay;

    move-result-object v0

    return-object v0

    :cond_a
    move v1, v2

    goto/16 :goto_1
.end method
