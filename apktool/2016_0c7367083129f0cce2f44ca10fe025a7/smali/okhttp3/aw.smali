.class final Lokhttp3/aw;
.super Lokhttp3/au;
.source "RequestBody.java"


# instance fields
.field final synthetic a:Lokhttp3/ai;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lokhttp3/ai;I[BI)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lokhttp3/aw;->a:Lokhttp3/ai;

    iput p2, p0, Lokhttp3/aw;->b:I

    iput-object p3, p0, Lokhttp3/aw;->c:[B

    iput p4, p0, Lokhttp3/aw;->d:I

    invoke-direct {p0}, Lokhttp3/au;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lokhttp3/aw;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/ai;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lokhttp3/aw;->a:Lokhttp3/ai;

    return-object v0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lokhttp3/aw;->c:[B

    iget v1, p0, Lokhttp3/aw;->d:I

    iget v2, p0, Lokhttp3/aw;->b:I

    invoke-interface {p1, v0, v1, v2}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 97
    return-void
.end method
