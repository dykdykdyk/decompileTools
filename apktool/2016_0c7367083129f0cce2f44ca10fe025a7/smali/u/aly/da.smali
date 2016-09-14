.class public final Lu/aly/da;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lu/aly/eb;

.field private c:Lu/aly/dq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lu/aly/dm;

    invoke-direct {v0}, Lu/aly/dm;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/da;-><init>(Lu/aly/dr;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lu/aly/dr;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lu/aly/da;->a:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Lu/aly/eb;

    iget-object v1, p0, Lu/aly/da;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lu/aly/eb;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lu/aly/da;->b:Lu/aly/eb;

    .line 68
    iget-object v0, p0, Lu/aly/da;->b:Lu/aly/eb;

    invoke-interface {p1, v0}, Lu/aly/dr;->a(Lu/aly/ed;)Lu/aly/dq;

    move-result-object v0

    iput-object v0, p0, Lu/aly/da;->c:Lu/aly/dq;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Lu/aly/cw;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lu/aly/da;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, Lu/aly/da;->c:Lu/aly/dq;

    invoke-interface {p1, v0}, Lu/aly/cw;->b(Lu/aly/dq;)V

    .line 83
    iget-object v0, p0, Lu/aly/da;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
