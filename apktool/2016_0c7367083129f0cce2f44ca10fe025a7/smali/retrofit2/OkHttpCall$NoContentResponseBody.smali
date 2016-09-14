.class final Lretrofit2/OkHttpCall$NoContentResponseBody;
.super Lokhttp3/ba;
.source "OkHttpCall.java"


# instance fields
.field private final contentLength:J

.field private final contentType:Lokhttp3/ai;


# direct methods
.method constructor <init>(Lokhttp3/ai;J)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lokhttp3/ba;-><init>()V

    .line 242
    iput-object p1, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentType:Lokhttp3/ai;

    .line 243
    iput-wide p2, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentLength:J

    .line 244
    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/ai;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lretrofit2/OkHttpCall$NoContentResponseBody;->contentType:Lokhttp3/ai;

    return-object v0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
