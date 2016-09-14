.class public final Lorg/threeten/bp/m;
.super Lorg/threeten/bp/a/c;
.source "LocalDateTime.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/threeten/bp/temporal/k;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/a/c",
        "<",
        "Lorg/threeten/bp/j;",
        ">;",
        "Ljava/io/Serializable;",
        "Lorg/threeten/bp/temporal/k;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/m;

.field public static final b:Lorg/threeten/bp/m;

.field public static final c:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Lorg/threeten/bp/j;

.field public final e:Lorg/threeten/bp/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lorg/threeten/bp/j;->a:Lorg/threeten/bp/j;

    sget-object v1, Lorg/threeten/bp/p;->a:Lorg/threeten/bp/p;

    invoke-static {v0, v1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/m;->a:Lorg/threeten/bp/m;

    .line 114
    sget-object v0, Lorg/threeten/bp/j;->b:Lorg/threeten/bp/j;

    sget-object v1, Lorg/threeten/bp/p;->b:Lorg/threeten/bp/p;

    invoke-static {v0, v1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/m;->b:Lorg/threeten/bp/m;

    .line 118
    new-instance v0, Lorg/threeten/bp/n;

    invoke-direct {v0}, Lorg/threeten/bp/n;-><init>()V

    sput-object v0, Lorg/threeten/bp/m;->c:Lorg/threeten/bp/temporal/z;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Lorg/threeten/bp/a/c;-><init>()V

    .line 455
    iput-object p1, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 456
    iput-object p2, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 457
    return-void
.end method

.method private a(Lorg/threeten/bp/m;)I
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 4628
    iget-object v1, p1, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 1668
    invoke-virtual {v0, v1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/j;)I

    move-result v0

    .line 1669
    if-nez v0, :cond_0

    .line 1670
    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 4641
    iget-object v1, p1, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 1670
    invoke-virtual {v0, v1}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/p;)I

    move-result v0

    .line 1672
    :cond_0
    return v0
.end method

.method public static a(IIIIII)Lorg/threeten/bp/m;
    .locals 3

    .prologue
    .line 321
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    .line 322
    const/4 v1, 0x0

    invoke-static {p3, p4, p5, v1}, Lorg/threeten/bp/p;->a(IIII)Lorg/threeten/bp/p;

    move-result-object v1

    .line 323
    new-instance v2, Lorg/threeten/bp/m;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/m;-><init>(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)V

    return-object v2
.end method

.method public static a(JILorg/threeten/bp/af;)Lorg/threeten/bp/m;
    .locals 6

    .prologue
    .line 376
    const-string v0, "offset"

    invoke-static {p3, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2449
    iget v0, p3, Lorg/threeten/bp/af;->g:I

    .line 377
    int-to-long v0, v0

    add-long/2addr v0, p0

    .line 378
    const-wide/32 v2, 0x15180

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v2

    .line 379
    const v4, 0x15180

    invoke-static {v0, v1, v4}, Lorg/threeten/bp/b/c;->b(JI)I

    move-result v0

    .line 380
    invoke-static {v2, v3}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v1

    .line 381
    int-to-long v2, v0

    invoke-static {v2, v3, p2}, Lorg/threeten/bp/p;->a(JI)Lorg/threeten/bp/p;

    move-result-object v0

    .line 382
    new-instance v2, Lorg/threeten/bp/m;

    invoke-direct {v2, v1, v0}, Lorg/threeten/bp/m;-><init>(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)V

    return-object v2
.end method

.method private a(Lorg/threeten/bp/j;JJJJ)Lorg/threeten/bp/m;
    .locals 8

    .prologue
    .line 1394
    or-long v0, p2, p4

    or-long/2addr v0, p6

    or-long v0, v0, p8

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1395
    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    .line 1411
    :goto_0
    return-object v0

    .line 1397
    :cond_0
    const-wide v0, 0x4e94914f0000L

    div-long v0, p8, v0

    const-wide/32 v2, 0x15180

    div-long v2, p6, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x5a0

    div-long v2, p4, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long v2, p2, v2

    add-long/2addr v0, v2

    .line 1401
    const-wide/16 v2, 0x1

    mul-long/2addr v0, v2

    .line 1402
    const-wide v2, 0x4e94914f0000L

    rem-long v2, p8, v2

    const-wide/32 v4, 0x15180

    rem-long v4, p6, v4

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x5a0

    rem-long v4, p4, v4

    const-wide v6, 0xdf8475800L

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x18

    rem-long v4, p2, v4

    const-wide v6, 0x34630b8a000L

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1406
    iget-object v4, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v4}, Lorg/threeten/bp/p;->b()J

    move-result-wide v4

    .line 1407
    const-wide/16 v6, 0x1

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    .line 1408
    const-wide v6, 0x4e94914f0000L

    invoke-static {v2, v3, v6, v7}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 3323
    const-wide v0, 0x4e94914f0000L

    rem-long v0, v2, v0

    const-wide v2, 0x4e94914f0000L

    add-long/2addr v0, v2

    const-wide v2, 0x4e94914f0000L

    rem-long/2addr v0, v2

    .line 1410
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 1411
    :goto_1
    invoke-virtual {p1, v6, v7}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 1410
    :cond_1
    invoke-static {v0, v1}, Lorg/threeten/bp/p;->b(J)Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;
    .locals 1

    .prologue
    .line 334
    const-string v0, "date"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 335
    const-string v0, "time"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    new-instance v0, Lorg/threeten/bp/m;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/m;-><init>(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)V

    return-object v0
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/m;
    .locals 3

    .prologue
    .line 402
    instance-of v0, p0, Lorg/threeten/bp/m;

    if-eqz v0, :cond_0

    .line 403
    check-cast p0, Lorg/threeten/bp/m;

    .line 410
    :goto_0
    return-object p0

    .line 404
    :cond_0
    instance-of v0, p0, Lorg/threeten/bp/ai;

    if-eqz v0, :cond_1

    .line 405
    check-cast p0, Lorg/threeten/bp/ai;

    .line 2989
    iget-object p0, p0, Lorg/threeten/bp/ai;->b:Lorg/threeten/bp/m;

    goto :goto_0

    .line 408
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object v1

    .line 409
    invoke-static {p0}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/p;

    move-result-object v2

    .line 410
    new-instance v0, Lorg/threeten/bp/m;

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/m;-><init>(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)V
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain LocalDateTime from TemporalAccessor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    if-ne v0, p2, :cond_0

    .line 471
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lorg/threeten/bp/m;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/m;-><init>(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)V

    goto :goto_0
.end method

.method private c(J)Lorg/threeten/bp/m;
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 1154
    iget-object v1, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    move-object v0, p0

    move-wide v2, p1

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;JJJJ)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/m;
    .locals 1

    .prologue
    .line 1016
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/p;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/m;

    return-object v0
.end method

.method private d(J)Lorg/threeten/bp/m;
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 1193
    iget-object v1, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;JJJJ)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method private f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;
    .locals 5

    .prologue
    .line 1235
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/m;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Lorg/threeten/bp/m;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/m;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/a/c;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/a/c",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1661
    instance-of v0, p1, Lorg/threeten/bp/m;

    if-eqz v0, :cond_0

    .line 1662
    check-cast p1, Lorg/threeten/bp/m;

    invoke-direct {p0, p1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/m;)I

    move-result v0

    .line 1664
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/a/c;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 8

    .prologue
    .line 1519
    invoke-static {p1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/m;

    move-result-object v1

    .line 1520
    instance-of v0, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 1521
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 1522
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1523
    iget-object v2, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    iget-object v3, v1, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/j;)J

    move-result-wide v4

    .line 1524
    iget-object v1, v1, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v1}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    iget-object v1, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v1}, Lorg/threeten/bp/p;->b()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 1525
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 1526
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 1527
    const-wide v6, 0x4e94914f0000L

    add-long/2addr v2, v6

    .line 1533
    :cond_0
    :goto_0
    sget-object v1, Lorg/threeten/bp/o;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1556
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 1529
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1530
    const-wide v6, 0x4e94914f0000L

    sub-long/2addr v2, v6

    goto :goto_0

    .line 1535
    :pswitch_0
    const-wide v0, 0x4e94914f0000L

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v0

    .line 1536
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 1566
    :goto_1
    return-wide v0

    .line 1538
    :pswitch_1
    const-wide v0, 0x141dd76000L

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v0

    .line 1539
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1541
    :pswitch_2
    const-wide/32 v0, 0x5265c00

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v0

    .line 1542
    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1544
    :pswitch_3
    const v0, 0x15180

    invoke-static {v4, v5, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 1545
    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1547
    :pswitch_4
    const/16 v0, 0x5a0

    invoke-static {v4, v5, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 1548
    const-wide v4, 0xdf8475800L

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1550
    :pswitch_5
    const/16 v0, 0x18

    invoke-static {v4, v5, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 1551
    const-wide v4, 0x34630b8a000L

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1553
    :pswitch_6
    const/4 v0, 0x2

    invoke-static {v4, v5, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    .line 1554
    const-wide v4, 0x274a48a78000L

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 1558
    :cond_2
    iget-object v0, v1, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 1559
    iget-object v2, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/a/a;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    iget-object v3, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/p;->b(Lorg/threeten/bp/p;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1560
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->f(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 1564
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v1, v0, p2}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v0

    goto/16 :goto_1

    .line 1561
    :cond_4
    iget-object v2, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/a/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    iget-object v2, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 4399
    invoke-virtual {v1, v2}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/p;)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    .line 1561
    :goto_3
    if-eqz v1, :cond_3

    .line 1562
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_2

    .line 4399
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 1566
    :cond_6
    invoke-interface {p2, p0, v1}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto/16 :goto_1

    .line 1533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/z",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 1436
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3628
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 1439
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/threeten/bp/m;->c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;
    .locals 1

    .prologue
    .line 97
    .line 5614
    invoke-static {p0, p1}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/m;Lorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method public final a(J)Lorg/threeten/bp/m;
    .locals 3

    .prologue
    .line 1139
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lorg/threeten/bp/p;
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    return-object v0
.end method

.method public final synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/m;->f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 1469
    invoke-super {p0, p1}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 526
    instance-of v2, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v2, :cond_2

    .line 527
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 529
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic b()Lorg/threeten/bp/a/a;
    .locals 1

    .prologue
    .line 97
    .line 5628
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 97
    return-object v0
.end method

.method public final b(J)Lorg/threeten/bp/m;
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 1180
    iget-object v1, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;JJJJ)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/m;
    .locals 1

    .prologue
    .line 799
    instance-of v0, p1, Lorg/threeten/bp/j;

    if-eqz v0, :cond_0

    .line 800
    check-cast p1, Lorg/threeten/bp/j;

    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object p1

    .line 806
    :goto_0
    return-object p1

    .line 801
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/p;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    check-cast p1, Lorg/threeten/bp/p;

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object p1

    goto :goto_0

    .line 803
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/m;

    if-eqz v0, :cond_2

    .line 804
    check-cast p1, Lorg/threeten/bp/m;

    goto :goto_0

    .line 806
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/m;

    move-object p1, v0

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/m;
    .locals 2

    .prologue
    .line 844
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 845
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    iget-object v1, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/p;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/p;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    .line 851
    :goto_0
    return-object v0

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/j;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/m;

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 564
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 565
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/p;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lorg/threeten/bp/m;->c(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/threeten/bp/a/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/a/c",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1698
    instance-of v0, p1, Lorg/threeten/bp/m;

    if-eqz v0, :cond_1

    .line 1699
    check-cast p1, Lorg/threeten/bp/m;

    invoke-direct {p0, p1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/m;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1701
    :goto_0
    return v0

    .line 1699
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1701
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/a/c;->b(Lorg/threeten/bp/a/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 1

    .prologue
    .line 597
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 598
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/p;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 600
    :goto_0
    return v0

    .line 598
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0

    .line 600
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/a/c;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/c;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;
    .locals 11

    .prologue
    const-wide v8, 0x141dd76000L

    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x100

    const-wide/16 v2, 0x0

    .line 1036
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 1037
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 1038
    sget-object v1, Lorg/threeten/bp/o;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1047
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/j;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/j;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v0

    .line 1049
    :goto_0
    return-object v0

    .line 1039
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/m;->d(J)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 1040
    :pswitch_1
    div-long v0, p1, v8

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/m;->a(J)Lorg/threeten/bp/m;

    move-result-object v0

    rem-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/threeten/bp/m;->d(J)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 1041
    :pswitch_2
    div-long v0, p1, v6

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/m;->a(J)Lorg/threeten/bp/m;

    move-result-object v0

    rem-long v2, p1, v6

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/threeten/bp/m;->d(J)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 1042
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/m;->b(J)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 3167
    :pswitch_4
    iget-object v1, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;JJJJ)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 1044
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/m;->c(J)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 1045
    :pswitch_6
    div-long v0, p1, v4

    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/m;->a(J)Lorg/threeten/bp/m;

    move-result-object v0

    rem-long v2, p1, v4

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/threeten/bp/m;->c(J)Lorg/threeten/bp/m;

    move-result-object v0

    goto :goto_0

    .line 1049
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/m;

    goto :goto_0

    .line 1038
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final c(Lorg/threeten/bp/a/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/a/c",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1727
    instance-of v0, p1, Lorg/threeten/bp/m;

    if-eqz v0, :cond_1

    .line 1728
    check-cast p1, Lorg/threeten/bp/m;

    invoke-direct {p0, p1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/m;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 1730
    :goto_0
    return v0

    .line 1728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1730
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/a/c;->c(Lorg/threeten/bp/a/c;)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 97
    check-cast p1, Lorg/threeten/bp/a/c;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/a/c;)I

    move-result v0

    return v0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 2

    .prologue
    .line 627
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 628
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/p;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 630
    :goto_0
    return-wide v0

    .line 628
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    goto :goto_0

    .line 630
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final synthetic d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/m;->f(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/m;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1774
    if-ne p0, p1, :cond_1

    .line 1781
    :cond_0
    :goto_0
    return v0

    .line 1777
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/m;

    if-eqz v2, :cond_3

    .line 1778
    check-cast p1, Lorg/threeten/bp/m;

    .line 1779
    iget-object v2, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    iget-object v3, p1, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    iget-object v3, p1, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1781
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1791
    iget-object v0, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v0}, Lorg/threeten/bp/j;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v1}, Lorg/threeten/bp/p;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    invoke-virtual {v1}, Lorg/threeten/bp/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    invoke-virtual {v1}, Lorg/threeten/bp/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
