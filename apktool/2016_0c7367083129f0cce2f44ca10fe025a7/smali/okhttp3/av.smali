.class final Lokhttp3/av;
.super Lokhttp3/au;
.source "RequestBody.java"


# instance fields
.field final synthetic a:Lokhttp3/ai;

.field final synthetic b:Lokio/ByteString;


# direct methods
.method constructor <init>(Lokhttp3/ai;Lokio/ByteString;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lokhttp3/av;->a:Lokhttp3/ai;

    iput-object p2, p0, Lokhttp3/av;->b:Lokio/ByteString;

    invoke-direct {p0}, Lokhttp3/au;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lokhttp3/av;->b:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/ai;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lokhttp3/av;->a:Lokhttp3/ai;

    return-object v0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lokhttp3/av;->b:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 72
    return-void
.end method
