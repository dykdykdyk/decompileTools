.class final Lokhttp3/internal/b/i;
.super Lokhttp3/internal/b/d;
.source "Http1xStream.java"


# instance fields
.field final synthetic d:Lokhttp3/internal/b/c;

.field private e:Z


# direct methods
.method private constructor <init>(Lokhttp3/internal/b/c;)V
    .locals 1

    .prologue
    .line 463
    iput-object p1, p0, Lokhttp3/internal/b/i;->d:Lokhttp3/internal/b/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/b/d;-><init>(Lokhttp3/internal/b/c;B)V

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/b/c;B)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lokhttp3/internal/b/i;-><init>(Lokhttp3/internal/b/c;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-boolean v0, p0, Lokhttp3/internal/b/i;->b:Z

    if-eqz v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/b/i;->e:Z

    if-nez v0, :cond_1

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/b/i;->a(Z)V

    .line 486
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/b/i;->b:Z

    goto :goto_0
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-wide/16 v0, -0x1

    .line 468
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/b/i;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/b/i;->e:Z

    if-eqz v2, :cond_2

    .line 478
    :goto_0
    return-wide v0

    .line 472
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/b/i;->d:Lokhttp3/internal/b/c;

    .line 1064
    iget-object v2, v2, Lokhttp3/internal/b/c;->c:Lokio/BufferedSource;

    .line 472
    invoke-interface {v2, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    move-result-wide v2

    .line 473
    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    .line 474
    iput-boolean v5, p0, Lokhttp3/internal/b/i;->e:Z

    .line 475
    invoke-virtual {p0, v5}, Lokhttp3/internal/b/i;->a(Z)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 478
    goto :goto_0
.end method
