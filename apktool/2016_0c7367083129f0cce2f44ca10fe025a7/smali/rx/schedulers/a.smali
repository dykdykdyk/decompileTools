.class final Lrx/schedulers/a;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lrx/schedulers/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 56
    check-cast p1, Lrx/schedulers/d;

    check-cast p2, Lrx/schedulers/d;

    .line 1062
    iget-wide v4, p1, Lrx/schedulers/d;->a:J

    iget-wide v6, p2, Lrx/schedulers/d;->a:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 2037
    iget-wide v4, p1, Lrx/schedulers/d;->d:J

    .line 3037
    iget-wide v6, p2, Lrx/schedulers/d;->d:J

    .line 1063
    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v0

    .line 4037
    :cond_1
    iget-wide v4, p1, Lrx/schedulers/d;->d:J

    .line 5037
    iget-wide v6, p2, Lrx/schedulers/d;->d:J

    .line 1063
    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 1065
    :cond_3
    iget-wide v4, p1, Lrx/schedulers/d;->a:J

    iget-wide v6, p2, Lrx/schedulers/d;->a:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-wide v4, p1, Lrx/schedulers/d;->a:J

    iget-wide v6, p2, Lrx/schedulers/d;->a:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 56
    goto :goto_0
.end method
