.class final Lokhttp3/bb;
.super Lokhttp3/ba;
.source "ResponseBody.java"


# instance fields
.field final synthetic a:Lokhttp3/ai;

.field final synthetic b:J

.field final synthetic c:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp3/ai;JLokio/BufferedSource;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lokhttp3/bb;->a:Lokhttp3/ai;

    iput-wide p2, p0, Lokhttp3/bb;->b:J

    iput-object p4, p0, Lokhttp3/bb;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lokhttp3/bb;->b:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/ai;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lokhttp3/bb;->a:Lokhttp3/ai;

    return-object v0
.end method

.method public final source()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lokhttp3/bb;->c:Lokio/BufferedSource;

    return-object v0
.end method
