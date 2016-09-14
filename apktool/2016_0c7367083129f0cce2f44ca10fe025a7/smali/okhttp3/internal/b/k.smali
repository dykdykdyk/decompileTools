.class final Lokhttp3/internal/b/k;
.super Lokio/ForwardingSource;
.source "Http2xStream.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/b/j;


# direct methods
.method public constructor <init>(Lokhttp3/internal/b/j;Lokio/Source;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lokhttp3/internal/b/k;->a:Lokhttp3/internal/b/j;

    .line 283
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 284
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lokhttp3/internal/b/k;->a:Lokhttp3/internal/b/j;

    invoke-static {v0}, Lokhttp3/internal/b/j;->a(Lokhttp3/internal/b/j;)Lokhttp3/internal/connection/f;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/b/k;->a:Lokhttp3/internal/b/j;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/connection/f;->a(ZLokhttp3/internal/b/p;)V

    .line 288
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 289
    return-void
.end method
