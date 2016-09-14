.class final Lu/aly/ba;
.super Lu/aly/dy;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dy",
        "<",
        "Lu/aly/az;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/dy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/ba;-><init>()V

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
    .line 331
    check-cast p2, Lu/aly/az;

    .line 1389
    invoke-virtual {p2}, Lu/aly/az;->c()V

    .line 1391
    invoke-static {}, Lu/aly/az;->d()Lu/aly/du;

    invoke-virtual {p1}, Lu/aly/dq;->a()V

    .line 1392
    iget-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1393
    invoke-static {}, Lu/aly/az;->e()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1394
    iget-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1397
    :cond_0
    invoke-static {}, Lu/aly/az;->f()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1398
    iget-wide v0, p2, Lu/aly/az;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dq;->a(J)V

    .line 1400
    invoke-static {}, Lu/aly/az;->g()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1401
    iget v0, p2, Lu/aly/az;->c:I

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(I)V

    .line 1403
    invoke-virtual {p1}, Lu/aly/dq;->c()V

    .line 1404
    invoke-virtual {p1}, Lu/aly/dq;->b()V

    .line 331
    return-void
.end method

.method public final synthetic b(Lu/aly/dq;Lu/aly/cw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 331
    check-cast p2, Lu/aly/az;

    .line 2336
    invoke-virtual {p1}, Lu/aly/dq;->d()Lu/aly/du;

    .line 2338
    :goto_0
    invoke-virtual {p1}, Lu/aly/dq;->f()Lu/aly/dn;

    move-result-object v0

    .line 2339
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-eqz v1, :cond_3

    .line 2342
    iget-short v1, v0, Lu/aly/dn;->c:S

    packed-switch v1, :pswitch_data_0

    .line 2368
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2344
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dn;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 2345
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/az;->a:Ljava/lang/String;

    goto :goto_0

    .line 2348
    :cond_0
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2352
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dn;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2353
    invoke-virtual {p1}, Lu/aly/dq;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/az;->b:J

    .line 2354
    invoke-virtual {p2}, Lu/aly/az;->a()V

    goto :goto_0

    .line 2356
    :cond_1
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2360
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dn;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 2361
    invoke-virtual {p1}, Lu/aly/dq;->m()I

    move-result v0

    iput v0, p2, Lu/aly/az;->c:I

    .line 2362
    invoke-virtual {p2}, Lu/aly/az;->b()V

    goto :goto_0

    .line 2364
    :cond_2
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2372
    :cond_3
    invoke-virtual {p1}, Lu/aly/dq;->e()V

    .line 3220
    iget-byte v0, p2, Lu/aly/az;->d:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2376
    if-nez v0, :cond_4

    .line 2377
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3246
    :cond_4
    iget-byte v0, p2, Lu/aly/az;->d:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2380
    if-nez v0, :cond_5

    .line 2381
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2384
    :cond_5
    invoke-virtual {p2}, Lu/aly/az;->c()V

    .line 331
    return-void

    .line 2342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
