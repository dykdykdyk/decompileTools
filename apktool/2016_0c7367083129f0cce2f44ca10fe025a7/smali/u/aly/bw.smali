.class final Lu/aly/bw;
.super Lu/aly/dz;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dz",
        "<",
        "Lu/aly/bs;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lu/aly/dz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lu/aly/bw;-><init>()V

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
    .line 418
    check-cast p2, Lu/aly/bs;

    .line 1423
    check-cast p1, Lu/aly/dv;

    .line 1424
    iget-wide v0, p2, Lu/aly/bs;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dv;->a(J)V

    .line 1425
    iget-object v0, p2, Lu/aly/bs;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1426
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1427
    invoke-virtual {p2}, Lu/aly/bs;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1430
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/dv;->a(Ljava/util/BitSet;I)V

    .line 1431
    invoke-virtual {p2}, Lu/aly/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    iget-object v0, p2, Lu/aly/bs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 418
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
    .line 418
    check-cast p2, Lu/aly/bs;

    .line 1439
    check-cast p1, Lu/aly/dv;

    .line 1440
    invoke-virtual {p1}, Lu/aly/dv;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bs;->b:J

    .line 1441
    invoke-virtual {p2}, Lu/aly/bs;->b()V

    .line 1442
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bs;->c:Ljava/lang/String;

    .line 1444
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu/aly/dv;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1445
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bs;->a:Ljava/lang/String;

    .line 418
    :cond_0
    return-void
.end method
