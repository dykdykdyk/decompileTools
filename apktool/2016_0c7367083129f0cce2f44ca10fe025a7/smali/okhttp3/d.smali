.class public final Lokhttp3/d;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lokhttp3/internal/a/k;

.field private final b:Lokhttp3/internal/a/g;


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lokhttp3/d;->b:Lokhttp3/internal/a/g;

    invoke-virtual {v0}, Lokhttp3/internal/a/g;->close()V

    .line 391
    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lokhttp3/d;->b:Lokhttp3/internal/a/g;

    invoke-virtual {v0}, Lokhttp3/internal/a/g;->flush()V

    .line 387
    return-void
.end method
