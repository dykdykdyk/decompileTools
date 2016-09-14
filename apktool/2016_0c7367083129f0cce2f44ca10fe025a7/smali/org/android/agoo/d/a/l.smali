.class final Lorg/android/agoo/d/a/l;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "AbsHttpClient.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 197
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lorg/android/agoo/d/a/l;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 204
    const-wide/16 v0, -0x1

    return-wide v0
.end method
