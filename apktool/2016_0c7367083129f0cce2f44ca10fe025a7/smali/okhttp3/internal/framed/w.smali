.class final Lokhttp3/internal/framed/w;
.super Lokio/AsyncTimeout;
.source "FramedStream.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/t;


# direct methods
.method constructor <init>(Lokhttp3/internal/framed/t;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lokhttp3/internal/framed/w;->a:Lokhttp3/internal/framed/t;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0}, Lokhttp3/internal/framed/w;->exit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/w;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 609
    :cond_0
    return-void
.end method

.method protected final newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 600
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 601
    if-eqz p1, :cond_0

    .line 602
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 604
    :cond_0
    return-object v0
.end method

.method protected final timedOut()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lokhttp3/internal/framed/w;->a:Lokhttp3/internal/framed/t;

    sget-object v1, Lokhttp3/internal/framed/a;->l:Lokhttp3/internal/framed/a;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/t;->b(Lokhttp3/internal/framed/a;)V

    .line 597
    return-void
.end method
