.class public final Lu/aly/eb;
.super Lu/aly/ed;
.source "TIOStreamTransport.java"


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lu/aly/ed;-><init>()V

    .line 36
    iput-object v0, p0, Lu/aly/eb;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lu/aly/eb;->b:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lu/aly/ed;-><init>()V

    .line 36
    iput-object v0, p0, Lu/aly/eb;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lu/aly/eb;->b:Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lu/aly/eb;->b:Ljava/io/OutputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/dd;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lu/aly/eb;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lu/aly/dd;

    const-string v1, "Cannot read from null inputStream"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lu/aly/eb;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 126
    if-gez v0, :cond_1

    .line 127
    new-instance v0, Lu/aly/dd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(B)V

    throw v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lu/aly/dd;

    invoke-direct {v1, v0}, Lu/aly/dd;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :cond_1
    return v0
.end method

.method public final b([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/dd;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lu/aly/eb;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lu/aly/dd;

    const-string v1, "Cannot write to null outputStream"

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    :try_start_0
    iget-object v0, p0, Lu/aly/eb;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lu/aly/dd;

    invoke-direct {v1, v0}, Lu/aly/dd;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
