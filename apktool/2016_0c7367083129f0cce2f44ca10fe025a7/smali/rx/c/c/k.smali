.class public final Lrx/c/c/k;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# instance fields
.field final a:I

.field final b:[Lrx/c/c/l;

.field c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;I)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p2, p0, Lrx/c/c/k;->a:I

    .line 61
    new-array v0, p2, [Lrx/c/c/l;

    iput-object v0, p0, Lrx/c/c/k;->b:[Lrx/c/c/l;

    .line 62
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 63
    iget-object v1, p0, Lrx/c/c/k;->b:[Lrx/c/c/l;

    new-instance v2, Lrx/c/c/l;

    invoke-direct {v2, p1}, Lrx/c/c/l;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lrx/c/c/l;
    .locals 6

    .prologue
    .line 68
    iget v0, p0, Lrx/c/c/k;->a:I

    .line 69
    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lrx/c/c/h;->c:Lrx/c/c/l;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lrx/c/c/k;->b:[Lrx/c/c/l;

    iget-wide v2, p0, Lrx/c/c/k;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/c/c/k;->c:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v0, v2

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 77
    iget-object v1, p0, Lrx/c/c/k;->b:[Lrx/c/c/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 78
    invoke-virtual {v3}, Lrx/c/c/l;->unsubscribe()V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method
