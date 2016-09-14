.class final Lretrofit2/ParameterHandler$Part;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ParameterHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/au;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Lokhttp3/ab;


# direct methods
.method constructor <init>(Lokhttp3/ab;Lretrofit2/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ab;",
            "Lretrofit2/Converter",
            "<TT;",
            "Lokhttp3/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 220
    iput-object p1, p0, Lretrofit2/ParameterHandler$Part;->headers:Lokhttp3/ab;

    .line 221
    iput-object p2, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    .line 222
    return-void
.end method


# virtual methods
.method final apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestBuilder;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 225
    if-nez p2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_0
    :try_start_0
    iget-object v0, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    invoke-interface {v0, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/au;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    iget-object v1, p0, Lretrofit2/ParameterHandler$Part;->headers:Lokhttp3/ab;

    invoke-virtual {p1, v1, v0}, Lretrofit2/RequestBuilder;->addPart(Lokhttp3/ab;Lokhttp3/au;)V

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to convert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to RequestBody"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
