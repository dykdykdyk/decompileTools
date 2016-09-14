.class final Lu/aly/bm;
.super Lu/aly/dy;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dy",
        "<",
        "Lu/aly/bl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lu/aly/dy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lu/aly/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 364
    check-cast p2, Lu/aly/bl;

    .line 1430
    invoke-virtual {p2}, Lu/aly/bl;->c()V

    .line 1432
    invoke-static {}, Lu/aly/bl;->d()Lu/aly/du;

    invoke-virtual {p1}, Lu/aly/dq;->a()V

    .line 1433
    iget-object v0, p2, Lu/aly/bl;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1434
    invoke-static {}, Lu/aly/bl;->e()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1436
    new-instance v0, Lu/aly/dp;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/bl;->a:Ljava/util/Map;

    .line 1437
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/dp;-><init>(BBI)V

    .line 1436
    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dp;)V

    .line 1438
    iget-object v0, p2, Lu/aly/bl;->a:Ljava/util/Map;

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

    .line 1439
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bs;

    invoke-virtual {v0, p1}, Lu/aly/bs;->b(Lu/aly/dq;)V

    goto :goto_0

    .line 1446
    :cond_0
    invoke-static {}, Lu/aly/bl;->f()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1447
    iget v0, p2, Lu/aly/bl;->b:I

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(I)V

    .line 1449
    iget-object v0, p2, Lu/aly/bl;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1450
    invoke-static {}, Lu/aly/bl;->g()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1451
    iget-object v0, p2, Lu/aly/bl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1454
    :cond_1
    invoke-virtual {p1}, Lu/aly/dq;->c()V

    .line 1455
    invoke-virtual {p1}, Lu/aly/dq;->b()V

    .line 364
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 364
    check-cast p2, Lu/aly/bl;

    .line 2369
    invoke-virtual {p1}, Lu/aly/dq;->d()Lu/aly/du;

    .line 2371
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lu/aly/dq;->f()Lu/aly/dn;

    move-result-object v0

    .line 2372
    iget-byte v2, v0, Lu/aly/dn;->b:B

    if-eqz v2, :cond_4

    .line 2375
    iget-short v2, v0, Lu/aly/dn;->c:S

    packed-switch v2, :pswitch_data_0

    .line 2413
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2377
    :pswitch_0
    iget-byte v2, v0, Lu/aly/dn;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 2379
    invoke-virtual {p1}, Lu/aly/dq;->g()Lu/aly/dp;

    move-result-object v2

    .line 2380
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/dp;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bl;->a:Ljava/util/Map;

    move v0, v1

    .line 2381
    :goto_1
    iget v3, v2, Lu/aly/dp;->c:I

    if-ge v0, v3, :cond_0

    .line 2384
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v3

    .line 2385
    new-instance v4, Lu/aly/bs;

    invoke-direct {v4}, Lu/aly/bs;-><init>()V

    .line 2386
    invoke-virtual {v4, p1}, Lu/aly/bs;->a(Lu/aly/dq;)V

    .line 2387
    iget-object v5, p2, Lu/aly/bl;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2393
    :cond_1
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2397
    :pswitch_1
    iget-byte v2, v0, Lu/aly/dn;->b:B

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 2398
    invoke-virtual {p1}, Lu/aly/dq;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bl;->b:I

    .line 2399
    invoke-virtual {p2}, Lu/aly/bl;->b()V

    goto :goto_0

    .line 2401
    :cond_2
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2405
    :pswitch_2
    iget-byte v2, v0, Lu/aly/dn;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 2406
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bl;->c:Ljava/lang/String;

    goto :goto_0

    .line 2409
    :cond_3
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2417
    :cond_4
    invoke-virtual {p1}, Lu/aly/dq;->e()V

    .line 4246
    iget-byte v0, p2, Lu/aly/bl;->d:B

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2421
    if-nez v0, :cond_5

    .line 2422
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2425
    :cond_5
    invoke-virtual {p2}, Lu/aly/bl;->c()V

    .line 364
    return-void

    .line 2375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
