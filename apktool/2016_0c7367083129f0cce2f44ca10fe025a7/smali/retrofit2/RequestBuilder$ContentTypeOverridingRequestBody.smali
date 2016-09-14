.class Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lokhttp3/au;
.source "RequestBuilder.java"


# instance fields
.field private final contentType:Lokhttp3/ai;

.field private final delegate:Lokhttp3/au;


# direct methods
.method constructor <init>(Lokhttp3/au;Lokhttp3/ai;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lokhttp3/au;-><init>()V

    .line 230
    iput-object p1, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/au;

    .line 231
    iput-object p2, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lokhttp3/ai;

    .line 232
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/au;

    invoke-virtual {v0}, Lokhttp3/au;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/ai;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lokhttp3/ai;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/au;

    invoke-virtual {v0, p1}, Lokhttp3/au;->writeTo(Lokio/BufferedSink;)V

    .line 244
    return-void
.end method
