.class public final Lokhttp3/internal/b/r;
.super Lokhttp3/ba;
.source "RealResponseBody.java"


# instance fields
.field private final a:Lokhttp3/ab;

.field private final b:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokhttp3/ab;Lokio/BufferedSource;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lokhttp3/ba;-><init>()V

    .line 28
    iput-object p1, p0, Lokhttp3/internal/b/r;->a:Lokhttp3/ab;

    .line 29
    iput-object p2, p0, Lokhttp3/internal/b/r;->b:Lokio/BufferedSource;

    .line 30
    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lokhttp3/internal/b/r;->a:Lokhttp3/ab;

    invoke-static {v0}, Lokhttp3/internal/b/n;->a(Lokhttp3/ab;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/ai;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lokhttp3/internal/b/r;->a:Lokhttp3/ab;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-static {v0}, Lokhttp3/ai;->a(Ljava/lang/String;)Lokhttp3/ai;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lokhttp3/internal/b/r;->b:Lokio/BufferedSource;

    return-object v0
.end method
