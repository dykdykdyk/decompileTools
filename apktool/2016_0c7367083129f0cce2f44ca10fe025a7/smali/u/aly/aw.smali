.class final Lu/aly/aw;
.super Lu/aly/dz;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dz",
        "<",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Lu/aly/dz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Lu/aly/aw;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 487
    check-cast p2, Lu/aly/at;

    .line 1492
    check-cast p1, Lu/aly/dv;

    .line 1493
    iget-object v0, p2, Lu/aly/at;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1494
    iget-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1495
    iget-wide v0, p2, Lu/aly/at;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dv;->a(J)V

    .line 1496
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1497
    invoke-virtual {p2}, Lu/aly/at;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1500
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/dv;->a(Ljava/util/BitSet;I)V

    .line 1501
    invoke-virtual {p2}, Lu/aly/at;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1502
    iget-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 487
    :cond_1
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 487
    check-cast p2, Lu/aly/at;

    .line 1509
    check-cast p1, Lu/aly/dv;

    .line 1510
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->a:Ljava/lang/String;

    .line 1512
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    .line 1514
    invoke-virtual {p1}, Lu/aly/dv;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/at;->d:J

    .line 1515
    invoke-virtual {p2}, Lu/aly/at;->b()V

    .line 1516
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu/aly/dv;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1517
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->b:Ljava/lang/String;

    .line 487
    :cond_0
    return-void
.end method
