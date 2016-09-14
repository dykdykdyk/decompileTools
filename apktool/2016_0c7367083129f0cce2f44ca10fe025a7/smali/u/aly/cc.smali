.class final Lu/aly/cc;
.super Lu/aly/dz;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dz",
        "<",
        "Lu/aly/bz;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lu/aly/dz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lu/aly/cc;-><init>()V

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
    .line 423
    check-cast p2, Lu/aly/bz;

    .line 1428
    check-cast p1, Lu/aly/dv;

    .line 1429
    iget v0, p2, Lu/aly/bz;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 1430
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1431
    invoke-virtual {p2}, Lu/aly/bz;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1434
    :cond_0
    invoke-virtual {p2}, Lu/aly/bz;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1435
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1437
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/dv;->a(Ljava/util/BitSet;I)V

    .line 1438
    invoke-virtual {p2}, Lu/aly/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1439
    iget-object v0, p2, Lu/aly/bz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1441
    :cond_2
    invoke-virtual {p2}, Lu/aly/bz;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1442
    iget-object v0, p2, Lu/aly/bz;->c:Lu/aly/bl;

    invoke-virtual {v0, p1}, Lu/aly/bl;->b(Lu/aly/dq;)V

    .line 423
    :cond_3
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
    .line 423
    check-cast p2, Lu/aly/bz;

    .line 1449
    check-cast p1, Lu/aly/dv;

    .line 1450
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bz;->a:I

    .line 1451
    invoke-virtual {p2}, Lu/aly/bz;->a()V

    .line 1452
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/dv;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1454
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bz;->b:Ljava/lang/String;

    .line 1457
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1458
    new-instance v0, Lu/aly/bl;

    invoke-direct {v0}, Lu/aly/bl;-><init>()V

    iput-object v0, p2, Lu/aly/bz;->c:Lu/aly/bl;

    .line 1459
    iget-object v0, p2, Lu/aly/bz;->c:Lu/aly/bl;

    invoke-virtual {v0, p1}, Lu/aly/bl;->a(Lu/aly/dq;)V

    .line 423
    :cond_1
    return-void
.end method
