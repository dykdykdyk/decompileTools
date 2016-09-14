.class final Lu/aly/bi;
.super Lu/aly/dz;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dz",
        "<",
        "Lu/aly/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lu/aly/dz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lu/aly/bi;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 505
    check-cast p2, Lu/aly/bf;

    .line 1510
    check-cast p1, Lu/aly/dv;

    .line 1512
    iget-object v0, p2, Lu/aly/bf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 1513
    iget-object v0, p2, Lu/aly/bf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1514
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 1515
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/az;

    invoke-virtual {v0, p1}, Lu/aly/az;->b(Lu/aly/dq;)V

    goto :goto_0

    .line 1518
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1519
    invoke-virtual {p2}, Lu/aly/bf;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1522
    :cond_1
    invoke-virtual {p2}, Lu/aly/bf;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1523
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1525
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/dv;->a(Ljava/util/BitSet;I)V

    .line 1526
    invoke-virtual {p2}, Lu/aly/bf;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1528
    iget-object v0, p2, Lu/aly/bf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(I)V

    .line 1529
    iget-object v0, p2, Lu/aly/bf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/at;

    .line 1530
    invoke-virtual {v0, p1}, Lu/aly/at;->b(Lu/aly/dq;)V

    goto :goto_1

    .line 1534
    :cond_3
    invoke-virtual {p2}, Lu/aly/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1535
    iget-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dv;->a(Ljava/lang/String;)V

    .line 505
    :cond_4
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 505
    check-cast p2, Lu/aly/bf;

    .line 1542
    check-cast p1, Lu/aly/dv;

    .line 1544
    new-instance v2, Lu/aly/dp;

    const/16 v0, 0xb

    .line 1546
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v3

    invoke-direct {v2, v0, v7, v3}, Lu/aly/dp;-><init>(BBI)V

    .line 1547
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/dp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bf;->a:Ljava/util/Map;

    move v0, v1

    .line 1548
    :goto_0
    iget v3, v2, Lu/aly/dp;->c:I

    if-ge v0, v3, :cond_0

    .line 1551
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v3

    .line 1552
    new-instance v4, Lu/aly/az;

    invoke-direct {v4}, Lu/aly/az;-><init>()V

    .line 1553
    invoke-virtual {v4, p1}, Lu/aly/az;->a(Lu/aly/dq;)V

    .line 1554
    iget-object v5, p2, Lu/aly/bf;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1558
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/dv;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1559
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1561
    new-instance v2, Lu/aly/do;

    .line 1562
    invoke-virtual {p1}, Lu/aly/dv;->m()I

    move-result v3

    invoke-direct {v2, v7, v3}, Lu/aly/do;-><init>(BI)V

    .line 1563
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v2, Lu/aly/do;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bf;->b:Ljava/util/List;

    .line 1564
    :goto_1
    iget v3, v2, Lu/aly/do;->b:I

    if-ge v1, v3, :cond_1

    .line 1566
    new-instance v3, Lu/aly/at;

    invoke-direct {v3}, Lu/aly/at;-><init>()V

    .line 1567
    invoke-virtual {v3, p1}, Lu/aly/at;->a(Lu/aly/dq;)V

    .line 1568
    iget-object v4, p2, Lu/aly/bf;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1571
    :cond_1
    invoke-virtual {p2, v6}, Lu/aly/bf;->a(Z)V

    .line 1573
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1574
    invoke-virtual {p1}, Lu/aly/dv;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bf;->c:Ljava/lang/String;

    .line 505
    :cond_3
    return-void
.end method
