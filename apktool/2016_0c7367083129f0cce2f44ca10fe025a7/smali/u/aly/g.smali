.class public final Lu/aly/g;
.super Ljava/lang/Object;
.source "CacheImpl.java"


# instance fields
.field a:Lcom/umeng/analytics/n;

.field b:I

.field c:I

.field d:I

.field e:I

.field final synthetic f:Lu/aly/e;


# direct methods
.method public constructor <init>(Lu/aly/e;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 437
    iput-object p1, p0, Lu/aly/g;->f:Lu/aly/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput v0, p0, Lu/aly/g;->b:I

    .line 432
    iput v0, p0, Lu/aly/g;->c:I

    .line 434
    iput v0, p0, Lu/aly/g;->d:I

    .line 435
    iput v0, p0, Lu/aly/g;->e:I

    .line 1041
    iget-object v0, p1, Lu/aly/e;->e:Lu/aly/fk;

    .line 438
    invoke-virtual {v0}, Lu/aly/fk;->b()[I

    move-result-object v0

    .line 439
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/g;->b:I

    .line 440
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/g;->c:I

    .line 441
    return-void
.end method


# virtual methods
.method final a(II)Lcom/umeng/analytics/n;
    .locals 4

    .prologue
    .line 507
    packed-switch p1, :pswitch_data_0

    .line 535
    :pswitch_0
    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/j;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    .line 539
    :goto_0
    return-object v0

    .line 509
    :pswitch_1
    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/umeng/analytics/j;

    invoke-direct {v0}, Lcom/umeng/analytics/j;-><init>()V

    goto :goto_0

    .line 512
    :pswitch_2
    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/k;

    if-eqz v0, :cond_1

    .line 513
    iget-object v1, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    move-object v0, v1

    .line 514
    check-cast v0, Lcom/umeng/analytics/k;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/umeng/analytics/k;->a(J)V

    move-object v0, v1

    goto :goto_0

    .line 516
    :cond_1
    new-instance v0, Lcom/umeng/analytics/k;

    iget-object v1, p0, Lu/aly/g;->f:Lu/aly/e;

    .line 2041
    iget-object v1, v1, Lu/aly/e;->a:Lu/aly/x;

    .line 516
    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/k;-><init>(Lu/aly/x;J)V

    goto :goto_0

    .line 520
    :pswitch_3
    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/umeng/analytics/l;

    iget-object v1, p0, Lu/aly/g;->f:Lu/aly/e;

    .line 3041
    iget-object v1, v1, Lu/aly/e;->a:Lu/aly/x;

    .line 521
    invoke-direct {v0, v1}, Lcom/umeng/analytics/l;-><init>(Lu/aly/x;)V

    goto :goto_0

    .line 524
    :pswitch_4
    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/umeng/analytics/m;

    invoke-direct {v0}, Lcom/umeng/analytics/m;-><init>()V

    goto :goto_0

    .line 527
    :pswitch_5
    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/o;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/umeng/analytics/o;

    .line 4041
    sget-object v1, Lu/aly/e;->f:Landroid/content/Context;

    .line 528
    invoke-direct {v0, v1}, Lcom/umeng/analytics/o;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 531
    :pswitch_6
    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    instance-of v0, v0, Lcom/umeng/analytics/p;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/aly/g;->a:Lcom/umeng/analytics/n;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/umeng/analytics/p;

    iget-object v1, p0, Lu/aly/g;->f:Lu/aly/e;

    .line 5041
    iget-object v1, v1, Lu/aly/e;->a:Lu/aly/x;

    .line 532
    invoke-direct {v0, v1}, Lcom/umeng/analytics/p;-><init>(Lu/aly/x;)V

    goto :goto_0

    .line 535
    :cond_6
    new-instance v0, Lcom/umeng/analytics/j;

    invoke-direct {v0}, Lcom/umeng/analytics/j;-><init>()V

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
