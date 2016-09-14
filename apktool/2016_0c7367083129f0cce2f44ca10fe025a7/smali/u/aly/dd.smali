.class public Lu/aly/dd;
.super Lu/aly/bv;
.source "TTransportException.java"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lu/aly/bv;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/dd;->a:I

    .line 42
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lu/aly/bv;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/dd;->a:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lu/aly/dd;->a:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lu/aly/bv;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/dd;->a:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lu/aly/dd;->a:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lu/aly/bv;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/dd;->a:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Lu/aly/bv;-><init>(Ljava/lang/Throwable;)V

    .line 38
    iput v0, p0, Lu/aly/dd;->a:I

    .line 60
    iput v0, p0, Lu/aly/dd;->a:I

    .line 61
    return-void
.end method
