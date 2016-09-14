.class final Lorg/threeten/bp/format/u;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# static fields
.field private static volatile c:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/threeten/bp/format/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/z;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/ad;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3422
    iput-object p1, p0, Lorg/threeten/bp/format/u;->a:Lorg/threeten/bp/temporal/z;

    .line 3423
    iput-object p2, p0, Lorg/threeten/bp/format/u;->b:Ljava/lang/String;

    .line 3424
    return-void
.end method

.method private static a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;II)I
    .locals 4

    .prologue
    .line 3551
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3552
    invoke-virtual {p0}, Lorg/threeten/bp/format/w;->a()Lorg/threeten/bp/format/w;

    move-result-object v2

    .line 3553
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x5a

    invoke-virtual {p0, v0, v3}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3554
    sget-object v0, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    invoke-static {v1, v0}, Lorg/threeten/bp/ad;->a(Ljava/lang/String;Lorg/threeten/bp/af;)Lorg/threeten/bp/ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/ad;)V

    .line 3565
    :goto_0
    return p3

    .line 3557
    :cond_0
    sget-object v0, Lorg/threeten/bp/format/p;->b:Lorg/threeten/bp/format/p;

    invoke-virtual {v0, v2, p1, p3}, Lorg/threeten/bp/format/p;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3558
    if-gez v0, :cond_1

    .line 3559
    sget-object v0, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    invoke-static {v1, v0}, Lorg/threeten/bp/ad;->a(Ljava/lang/String;Lorg/threeten/bp/af;)Lorg/threeten/bp/ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/ad;)V

    goto :goto_0

    .line 3562
    :cond_1
    sget-object v3, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    .line 3563
    invoke-static {v2}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v2

    .line 3564
    invoke-static {v1, v2}, Lorg/threeten/bp/ad;->a(Ljava/lang/String;Lorg/threeten/bp/af;)Lorg/threeten/bp/ad;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/ad;)V

    move p3, v0

    .line 3565
    goto :goto_0
.end method

.method private static a(Ljava/util/Set;Ljava/lang/String;Z)Lorg/threeten/bp/ad;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/threeten/bp/ad;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3535
    if-nez p1, :cond_0

    move-object v0, v1

    .line 3546
    :goto_0
    return-object v0

    .line 3538
    :cond_0
    if-eqz p2, :cond_2

    .line 3539
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/threeten/bp/ad;->a(Ljava/lang/String;)Lorg/threeten/bp/ad;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 3541
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3542
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3543
    invoke-static {v0}, Lorg/threeten/bp/ad;->a(Ljava/lang/String;)Lorg/threeten/bp/ad;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 3546
    goto :goto_0
.end method

.method private static a(Ljava/util/Set;)Lorg/threeten/bp/format/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/threeten/bp/format/v;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3653
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3654
    sget-object v0, Lorg/threeten/bp/format/e;->a:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3657
    new-instance v2, Lorg/threeten/bp/format/v;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0, v3}, Lorg/threeten/bp/format/v;-><init>(IB)V

    .line 3658
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7590
    invoke-virtual {v2, v0}, Lorg/threeten/bp/format/v;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3661
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x54

    .line 3455
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 3456
    if-le p3, v3, :cond_0

    .line 3457
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3459
    :cond_0
    if-ne p3, v3, :cond_2

    .line 3460
    xor-int/lit8 v0, p3, -0x1

    .line 3531
    :cond_1
    :goto_0
    return v0

    .line 3464
    :cond_2
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 3465
    const/16 v0, 0x2b

    if-eq v4, v0, :cond_3

    const/16 v0, 0x2d

    if-ne v4, v0, :cond_4

    .line 3466
    :cond_3
    invoke-virtual {p1}, Lorg/threeten/bp/format/w;->a()Lorg/threeten/bp/format/w;

    move-result-object v1

    .line 3467
    sget-object v0, Lorg/threeten/bp/format/p;->b:Lorg/threeten/bp/format/p;

    invoke-virtual {v0, v1, p2, p3}, Lorg/threeten/bp/format/p;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3468
    if-ltz v0, :cond_1

    .line 3471
    sget-object v2, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    .line 3472
    invoke-static {v1}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v1

    .line 3473
    invoke-virtual {p1, v1}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/ad;)V

    goto :goto_0

    .line 3475
    :cond_4
    add-int/lit8 v0, p3, 0x2

    if-lt v3, v0, :cond_7

    .line 3476
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3477
    const/16 v1, 0x55

    invoke-virtual {p1, v4, v1}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0, v5}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3479
    add-int/lit8 v0, p3, 0x3

    if-lt v3, v0, :cond_5

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3481
    add-int/lit8 v0, p3, 0x3

    invoke-static {p1, p2, p3, v0}, Lorg/threeten/bp/format/u;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0

    .line 3483
    :cond_5
    add-int/lit8 v0, p3, 0x2

    invoke-static {p1, p2, p3, v0}, Lorg/threeten/bp/format/u;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0

    .line 3484
    :cond_6
    const/16 v1, 0x47

    invoke-virtual {p1, v4, v1}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, p3, 0x3

    if-lt v3, v1, :cond_7

    const/16 v1, 0x4d

    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0, v5}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3488
    add-int/lit8 v0, p3, 0x3

    invoke-static {p1, p2, p3, v0}, Lorg/threeten/bp/format/u;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;II)I

    move-result v0

    goto/16 :goto_0

    .line 3493
    :cond_7
    invoke-static {}, Lorg/threeten/bp/zone/k;->b()Ljava/util/Set;

    move-result-object v5

    .line 3494
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    .line 3495
    sget-object v1, Lorg/threeten/bp/format/u;->c:Ljava/util/Map$Entry;

    .line 3496
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_10

    .line 3497
    :cond_8
    monitor-enter p0

    .line 3498
    :try_start_0
    sget-object v1, Lorg/threeten/bp/format/u;->c:Ljava/util/Map$Entry;

    .line 3499
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_f

    .line 3500
    :cond_9
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Lorg/threeten/bp/format/u;->a(Ljava/util/Set;)Lorg/threeten/bp/format/v;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lorg/threeten/bp/format/u;->c:Ljava/util/Map$Entry;

    .line 3502
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3504
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/v;

    move-object v1, v2

    .line 3509
    :goto_3
    if-eqz v0, :cond_b

    .line 3510
    iget v6, v0, Lorg/threeten/bp/format/v;->a:I

    .line 3511
    add-int v7, p3, v6

    if-gt v7, v3, :cond_b

    .line 3515
    add-int v1, p3, v6

    invoke-interface {p2, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5187
    iget-boolean v6, p1, Lorg/threeten/bp/format/w;->e:Z

    .line 5615
    if-eqz v6, :cond_a

    .line 5616
    iget-object v0, v0, Lorg/threeten/bp/format/v;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/v;

    :goto_4
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 3517
    goto :goto_3

    .line 3502
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5618
    :cond_a
    iget-object v0, v0, Lorg/threeten/bp/format/v;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/v;

    goto :goto_4

    .line 6187
    :cond_b
    iget-boolean v0, p1, Lorg/threeten/bp/format/w;->e:Z

    .line 3518
    invoke-static {v5, v2, v0}, Lorg/threeten/bp/format/u;->a(Ljava/util/Set;Ljava/lang/String;Z)Lorg/threeten/bp/ad;

    move-result-object v0

    .line 3519
    if-nez v0, :cond_d

    .line 7187
    iget-boolean v0, p1, Lorg/threeten/bp/format/w;->e:Z

    .line 3520
    invoke-static {v5, v1, v0}, Lorg/threeten/bp/format/u;->a(Ljava/util/Set;Ljava/lang/String;Z)Lorg/threeten/bp/ad;

    move-result-object v0

    .line 3521
    if-nez v0, :cond_e

    .line 3522
    const/16 v0, 0x5a

    invoke-virtual {p1, v4, v0}, Lorg/threeten/bp/format/w;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3523
    sget-object v0, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/ad;)V

    .line 3524
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0

    .line 3526
    :cond_c
    xor-int/lit8 v0, p3, -0x1

    goto/16 :goto_0

    :cond_d
    move-object v1, v2

    .line 3530
    :cond_e
    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/ad;)V

    .line 3531
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    goto :goto_1

    :cond_10
    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 3

    .prologue
    .line 3429
    iget-object v0, p0, Lorg/threeten/bp/format/u;->a:Lorg/threeten/bp/temporal/z;

    .line 4256
    iget-object v1, p1, Lorg/threeten/bp/format/y;->a:Lorg/threeten/bp/temporal/l;

    invoke-interface {v1, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    .line 4257
    if-nez v0, :cond_0

    iget v1, p1, Lorg/threeten/bp/format/y;->d:I

    if-nez v1, :cond_0

    .line 4258
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to extract value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lorg/threeten/bp/format/y;->a:Lorg/threeten/bp/temporal/l;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3429
    :cond_0
    check-cast v0, Lorg/threeten/bp/ad;

    .line 3430
    if-nez v0, :cond_1

    .line 3431
    const/4 v0, 0x0

    .line 3434
    :goto_0
    return v0

    .line 3433
    :cond_1
    invoke-virtual {v0}, Lorg/threeten/bp/ad;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3667
    iget-object v0, p0, Lorg/threeten/bp/format/u;->b:Ljava/lang/String;

    return-object v0
.end method
