.class final Lokio/Timeout$1;
.super Lokio/Timeout;
.source "Timeout.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method public final deadlineNanoTime(J)Lokio/Timeout;
    .locals 0

    .prologue
    .line 55
    return-object p0
.end method

.method public final throwIfReached()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method
