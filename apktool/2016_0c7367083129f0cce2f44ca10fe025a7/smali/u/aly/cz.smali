.class public final Lu/aly/cz;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lu/aly/dq;

.field private final b:Lu/aly/ec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lu/aly/dm;

    invoke-direct {v0}, Lu/aly/dm;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/cz;-><init>(Lu/aly/dr;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lu/aly/dr;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lu/aly/ec;

    invoke-direct {v0}, Lu/aly/ec;-><init>()V

    iput-object v0, p0, Lu/aly/cz;->b:Lu/aly/ec;

    .line 59
    iget-object v0, p0, Lu/aly/cz;->b:Lu/aly/ec;

    invoke-interface {p1, v0}, Lu/aly/dr;->a(Lu/aly/ed;)Lu/aly/dq;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cz;->a:Lu/aly/dq;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lu/aly/cw;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 70
    :try_start_0
    iget-object v0, p0, Lu/aly/cz;->b:Lu/aly/ec;

    .line 1039
    array-length v1, p2

    .line 1043
    iput-object p2, v0, Lu/aly/ec;->a:[B

    .line 1044
    const/4 v2, 0x0

    iput v2, v0, Lu/aly/ec;->b:I

    .line 1045
    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Lu/aly/ec;->c:I

    .line 71
    iget-object v0, p0, Lu/aly/cz;->a:Lu/aly/dq;

    invoke-interface {p1, v0}, Lu/aly/cw;->a(Lu/aly/dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lu/aly/cz;->b:Lu/aly/ec;

    .line 1049
    iput-object v3, v0, Lu/aly/ec;->a:[B

    .line 74
    iget-object v0, p0, Lu/aly/cz;->a:Lu/aly/dq;

    invoke-virtual {v0}, Lu/aly/dq;->r()V

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu/aly/cz;->b:Lu/aly/ec;

    .line 2049
    iput-object v3, v1, Lu/aly/ec;->a:[B

    .line 74
    iget-object v1, p0, Lu/aly/cz;->a:Lu/aly/dq;

    invoke-virtual {v1}, Lu/aly/dq;->r()V

    throw v0
.end method
