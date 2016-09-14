.class final Lu/aly/ca;
.super Lu/aly/dy;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dy",
        "<",
        "Lu/aly/bz;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lu/aly/dy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/dq;Lu/aly/cw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/bv;
        }
    .end annotation

    .prologue
    .line 336
    check-cast p2, Lu/aly/bz;

    .line 1391
    invoke-virtual {p2}, Lu/aly/bz;->d()V

    .line 1393
    invoke-static {}, Lu/aly/bz;->e()Lu/aly/du;

    invoke-virtual {p1}, Lu/aly/dq;->a()V

    .line 1394
    invoke-static {}, Lu/aly/bz;->f()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1395
    iget v0, p2, Lu/aly/bz;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(I)V

    .line 1397
    iget-object v0, p2, Lu/aly/bz;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p2}, Lu/aly/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    invoke-static {}, Lu/aly/bz;->g()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1400
    iget-object v0, p2, Lu/aly/bz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Ljava/lang/String;)V

    .line 1404
    :cond_0
    iget-object v0, p2, Lu/aly/bz;->c:Lu/aly/bl;

    if-eqz v0, :cond_1

    .line 1405
    invoke-virtual {p2}, Lu/aly/bz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    invoke-static {}, Lu/aly/bz;->h()Lu/aly/dn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dq;->a(Lu/aly/dn;)V

    .line 1407
    iget-object v0, p2, Lu/aly/bz;->c:Lu/aly/bl;

    invoke-virtual {v0, p1}, Lu/aly/bl;->b(Lu/aly/dq;)V

    .line 1411
    :cond_1
    invoke-virtual {p1}, Lu/aly/dq;->c()V

    .line 1412
    invoke-virtual {p1}, Lu/aly/dq;->b()V

    .line 336
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
    .line 336
    check-cast p2, Lu/aly/bz;

    .line 2341
    invoke-virtual {p1}, Lu/aly/dq;->d()Lu/aly/du;

    .line 2343
    :goto_0
    invoke-virtual {p1}, Lu/aly/dq;->f()Lu/aly/dn;

    move-result-object v0

    .line 2344
    iget-byte v1, v0, Lu/aly/dn;->b:B

    if-eqz v1, :cond_3

    .line 2347
    iget-short v1, v0, Lu/aly/dn;->c:S

    packed-switch v1, :pswitch_data_0

    .line 2374
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2349
    :pswitch_0
    iget-byte v1, v0, Lu/aly/dn;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 2350
    invoke-virtual {p1}, Lu/aly/dq;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bz;->a:I

    .line 2351
    invoke-virtual {p2}, Lu/aly/bz;->a()V

    goto :goto_0

    .line 2353
    :cond_0
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2357
    :pswitch_1
    iget-byte v1, v0, Lu/aly/dn;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 2358
    invoke-virtual {p1}, Lu/aly/dq;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bz;->b:Ljava/lang/String;

    goto :goto_0

    .line 2361
    :cond_1
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2365
    :pswitch_2
    iget-byte v1, v0, Lu/aly/dn;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 2366
    new-instance v0, Lu/aly/bl;

    invoke-direct {v0}, Lu/aly/bl;-><init>()V

    iput-object v0, p2, Lu/aly/bz;->c:Lu/aly/bl;

    .line 2367
    iget-object v0, p2, Lu/aly/bz;->c:Lu/aly/bl;

    invoke-virtual {v0, p1}, Lu/aly/bl;->a(Lu/aly/dq;)V

    goto :goto_0

    .line 2370
    :cond_2
    iget-byte v0, v0, Lu/aly/dn;->b:B

    invoke-static {p1, v0}, Lu/aly/ds;->a(Lu/aly/dq;B)V

    goto :goto_0

    .line 2378
    :cond_3
    invoke-virtual {p1}, Lu/aly/dq;->e()V

    .line 4192
    iget-byte v0, p2, Lu/aly/bz;->d:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cu;->a(BI)Z

    move-result v0

    .line 2382
    if-nez v0, :cond_4

    .line 2383
    new-instance v0, Lu/aly/cp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2384
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2386
    :cond_4
    invoke-virtual {p2}, Lu/aly/bz;->d()V

    .line 336
    return-void

    .line 2347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
