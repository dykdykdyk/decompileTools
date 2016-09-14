.class final Lorg/threeten/bp/format/a;
.super Lorg/threeten/bp/b/b;
.source "DateTimeBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/threeten/bp/temporal/l;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Lorg/threeten/bp/a/m;

.field c:Lorg/threeten/bp/ad;

.field d:Lorg/threeten/bp/a/a;

.field e:Lorg/threeten/bp/p;

.field f:Z

.field g:Lorg/threeten/bp/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/threeten/bp/b/b;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    .line 133
    return-void
.end method

.method private a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;
    .locals 4

    .prologue
    .line 167
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/a;->e(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conflict found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " differs from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1176
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-object p0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/ad;)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 544
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    .line 546
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/ad;)V

    goto :goto_0
.end method

.method private a(Lorg/threeten/bp/ad;)V
    .locals 4

    .prologue
    .line 553
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/g;->a(J)Lorg/threeten/bp/g;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lorg/threeten/bp/format/a;->b:Lorg/threeten/bp/a/m;

    invoke-virtual {v1, v0, p1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {v0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v1

    .line 11182
    iput-object v1, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    .line 560
    :goto_0
    sget-object v1, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/a/h;->c()Lorg/threeten/bp/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/p;->a()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 561
    return-void

    .line 558
    :cond_0
    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/a/a;)V

    goto :goto_0
.end method

.method private a(Lorg/threeten/bp/format/ac;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x1

    const/4 v8, 0x1

    .line 296
    iget-object v0, p0, Lorg/threeten/bp/format/a;->b:Lorg/threeten/bp/a/m;

    instance-of v0, v0, Lorg/threeten/bp/a/p;

    if-eqz v0, :cond_20

    .line 297
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    iget-object v2, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    .line 9386
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9387
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 297
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/j;)V

    .line 304
    :cond_1
    :goto_1
    return-void

    .line 9391
    :cond_2
    sget-object v0, Lorg/threeten/bp/temporal/a;->y:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 9392
    if-eqz v0, :cond_4

    .line 9393
    sget-object v1, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v1, :cond_3

    .line 9394
    sget-object v1, Lorg/threeten/bp/temporal/a;->y:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 9396
    :cond_3
    sget-object v1, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v3, 0xc

    invoke-static {v4, v5, v3}, Lorg/threeten/bp/b/c;->b(JI)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    invoke-static {v2, v1, v4, v5}, Lorg/threeten/bp/a/p;->a(Ljava/util/Map;Lorg/threeten/bp/temporal/a;J)V

    .line 9397
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xc

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v4

    invoke-static {v2, v1, v4, v5}, Lorg/threeten/bp/a/p;->a(Ljava/util/Map;Lorg/threeten/bp/temporal/a;J)V

    .line 9401
    :cond_4
    sget-object v0, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 9402
    if-eqz v0, :cond_f

    .line 9403
    sget-object v1, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v1, :cond_5

    .line 9404
    sget-object v1, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 9406
    :cond_5
    sget-object v1, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 9407
    if-nez v1, :cond_c

    .line 9408
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 9409
    sget-object v3, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    if-ne p1, v3, :cond_9

    .line 9411
    if-eqz v1, :cond_8

    .line 9412
    sget-object v3, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-lez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/a/p;->a(Ljava/util/Map;Lorg/threeten/bp/temporal/a;J)V

    .line 9433
    :cond_6
    :goto_3
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9434
    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 9435
    sget-object v0, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 9436
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v1

    .line 9437
    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/threeten/bp/b/c;->a(J)I

    move-result v3

    .line 9438
    sget-object v0, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/threeten/bp/b/c;->a(J)I

    move-result v0

    .line 9439
    sget-object v2, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-ne p1, v2, :cond_10

    .line 9440
    invoke-static {v3}, Lorg/threeten/bp/b/c;->a(I)I

    move-result v2

    int-to-long v2, v2

    .line 9441
    invoke-static {v0}, Lorg/threeten/bp/b/c;->a(I)I

    move-result v0

    int-to-long v4, v0

    .line 9442
    invoke-static {v1, v8, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->c(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9412
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v10, v11, v0, v1}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v0

    goto :goto_2

    .line 9415
    :cond_8
    sget-object v1, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 9419
    :cond_9
    sget-object v3, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-lez v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_4
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/a/p;->a(Ljava/util/Map;Lorg/threeten/bp/temporal/a;J)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v10, v11, v0, v1}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v0

    goto :goto_4

    .line 9421
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v10

    if-nez v3, :cond_d

    .line 9422
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v1, v4, v5}, Lorg/threeten/bp/a/p;->a(Ljava/util/Map;Lorg/threeten/bp/temporal/a;J)V

    goto/16 :goto_3

    .line 9423
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-nez v3, :cond_e

    .line 9424
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v4

    invoke-static {v2, v1, v4, v5}, Lorg/threeten/bp/a/p;->a(Ljava/util/Map;Lorg/threeten/bp/temporal/a;J)V

    goto/16 :goto_3

    .line 9426
    :cond_e
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid value for era: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9428
    :cond_f
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9429
    sget-object v1, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->a(J)J

    goto/16 :goto_3

    .line 9443
    :cond_10
    sget-object v2, Lorg/threeten/bp/format/ac;->b:Lorg/threeten/bp/format/ac;

    if-ne p1, v2, :cond_14

    .line 9444
    sget-object v2, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 9445
    const/4 v2, 0x4

    if-eq v3, v2, :cond_11

    const/4 v2, 0x6

    if-eq v3, v2, :cond_11

    const/16 v2, 0x9

    if-eq v3, v2, :cond_11

    const/16 v2, 0xb

    if-ne v3, v2, :cond_13

    .line 9446
    :cond_11
    const/16 v2, 0x1e

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9450
    :cond_12
    :goto_5
    invoke-static {v1, v3, v0}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9447
    :cond_13
    const/4 v2, 0x2

    if-ne v3, v2, :cond_12

    .line 9448
    sget-object v2, Lorg/threeten/bp/s;->b:Lorg/threeten/bp/s;

    int-to-long v4, v1

    invoke-static {v4, v5}, Lorg/threeten/bp/aa;->a(J)Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/threeten/bp/s;->a(Z)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    .line 9452
    :cond_14
    invoke-static {v1, v3, v0}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9455
    :cond_15
    sget-object v0, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 9456
    sget-object v0, Lorg/threeten/bp/temporal/a;->q:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 9457
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v1

    .line 9458
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-ne p1, v0, :cond_16

    .line 9459
    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v4

    .line 9460
    sget-object v0, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v6

    .line 9461
    sget-object v0, Lorg/threeten/bp/temporal/a;->q:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v2

    .line 9462
    invoke-static {v1, v8, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/j;->c(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9464
    :cond_16
    sget-object v3, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v3

    .line 9465
    sget-object v4, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v4

    .line 9466
    sget-object v5, Lorg/threeten/bp/temporal/a;->q:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->q:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 9467
    invoke-static {v1, v3, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v1

    add-int/lit8 v2, v4, -0x1

    mul-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 9468
    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    if-ne p1, v1, :cond_0

    sget-object v1, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 9469
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Strict mode rejected date parsed to a different month"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9473
    :cond_17
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 9474
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v1

    .line 9475
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-ne p1, v0, :cond_18

    .line 9476
    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v4

    .line 9477
    sget-object v0, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v6

    .line 9478
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v2

    .line 9479
    invoke-static {v1, v8, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/j;->c(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9481
    :cond_18
    sget-object v3, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v3

    .line 9482
    sget-object v4, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v4

    .line 9483
    sget-object v5, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 9484
    invoke-static {v1, v3, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v1

    add-int/lit8 v2, v4, -0x1

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v1

    invoke-static {v0}, Lorg/threeten/bp/d;->a(I)Lorg/threeten/bp/d;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/temporal/n;->a(Lorg/threeten/bp/d;)Lorg/threeten/bp/temporal/m;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/j;

    move-result-object v0

    .line 9485
    sget-object v1, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    if-ne p1, v1, :cond_0

    sget-object v1, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 9486
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Strict mode rejected date parsed to a different month"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9492
    :cond_19
    sget-object v0, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 9493
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v1

    .line 9494
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-ne p1, v0, :cond_1a

    .line 9495
    sget-object v0, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v2

    .line 9496
    invoke-static {v1, v8}, Lorg/threeten/bp/j;->a(II)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9498
    :cond_1a
    sget-object v3, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 9499
    invoke-static {v1, v0}, Lorg/threeten/bp/j;->a(II)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9501
    :cond_1b
    sget-object v0, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9502
    sget-object v0, Lorg/threeten/bp/temporal/a;->r:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 9503
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v1

    .line 9504
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-ne p1, v0, :cond_1c

    .line 9505
    sget-object v0, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v4

    .line 9506
    sget-object v0, Lorg/threeten/bp/temporal/a;->r:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v2

    .line 9507
    invoke-static {v1, v8, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9509
    :cond_1c
    sget-object v3, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v3

    .line 9510
    sget-object v4, Lorg/threeten/bp/temporal/a;->r:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->r:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 9511
    invoke-static {v1, v8, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x7

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 9512
    sget-object v2, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    if-ne p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 9513
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Strict mode rejected date parsed to a different year"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9517
    :cond_1d
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 9518
    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v1

    .line 9519
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-ne p1, v0, :cond_1e

    .line 9520
    sget-object v0, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v4

    .line 9521
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v2

    .line 9522
    invoke-static {v1, v8, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto/16 :goto_0

    .line 9524
    :cond_1e
    sget-object v3, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v3

    .line 9525
    sget-object v4, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 9526
    invoke-static {v1, v8, v8}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/j;->d(J)Lorg/threeten/bp/j;

    move-result-object v2

    invoke-static {v0}, Lorg/threeten/bp/d;->a(I)Lorg/threeten/bp/d;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/temporal/n;->a(Lorg/threeten/bp/d;)Lorg/threeten/bp/temporal/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/j;

    move-result-object v0

    .line 9527
    sget-object v2, Lorg/threeten/bp/format/ac;->a:Lorg/threeten/bp/format/ac;

    if-ne p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v2}, Lorg/threeten/bp/j;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 9528
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Strict mode rejected date parsed to a different month"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9534
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 299
    :cond_20
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/j;)V

    goto/16 :goto_1
.end method

.method private a(Lorg/threeten/bp/j;)V
    .locals 8

    .prologue
    .line 307
    if-eqz p1, :cond_1

    .line 10182
    iput-object p1, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    .line 309
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/q;

    .line 310
    instance-of v1, v0, Lorg/threeten/bp/temporal/a;

    if-eqz v1, :cond_0

    .line 311
    invoke-interface {v0}, Lorg/threeten/bp/temporal/q;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/threeten/bp/j;->d(Lorg/threeten/bp/temporal/q;)J
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 318
    iget-object v1, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 320
    new-instance v2, Lorg/threeten/bp/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Conflict found: Field "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " differs from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " derived from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0

    .line 326
    :cond_1
    return-void
.end method

.method private a(Lorg/threeten/bp/temporal/l;)V
    .locals 8

    .prologue
    .line 577
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 578
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 580
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/temporal/q;

    .line 581
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 582
    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    :try_start_0
    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 589
    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 590
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cross check failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    goto :goto_0

    .line 596
    :cond_2
    return-void
.end method

.method private a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/a/a;)V
    .locals 8

    .prologue
    .line 273
    iget-object v0, p0, Lorg/threeten/bp/format/a;->b:Lorg/threeten/bp/a/m;

    invoke-virtual {p2}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/threeten/bp/format/a;->b:Lorg/threeten/bp/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    invoke-virtual {p2}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    .line 277
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 278
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 279
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Conflict found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " differs from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while resolving  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_1
    return-void
.end method

.method private a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/p;)V
    .locals 6

    .prologue
    .line 286
    invoke-virtual {p2}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    .line 287
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 288
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conflict found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/threeten/bp/p;->b(J)Lorg/threeten/bp/p;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " differs from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while resolving  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    return-void
.end method

.method private b(Lorg/threeten/bp/format/ac;)V
    .locals 8

    .prologue
    .line 329
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->n:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->n:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 331
    sget-object v2, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v2, :cond_1

    .line 332
    sget-object v2, Lorg/threeten/bp/format/ac;->b:Lorg/threeten/bp/format/ac;

    if-ne p1, v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 335
    :cond_0
    sget-object v2, Lorg/threeten/bp/temporal/a;->n:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 338
    :cond_1
    sget-object v2, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x18

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    const-wide/16 v0, 0x0

    :cond_2
    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 340
    :cond_3
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->l:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 341
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->l:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 342
    sget-object v2, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v2, :cond_5

    .line 343
    sget-object v2, Lorg/threeten/bp/format/ac;->b:Lorg/threeten/bp/format/ac;

    if-ne p1, v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    .line 346
    :cond_4
    sget-object v2, Lorg/threeten/bp/temporal/a;->l:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 349
    :cond_5
    sget-object v2, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0xc

    cmp-long v3, v0, v4

    if-nez v3, :cond_6

    const-wide/16 v0, 0x0

    :cond_6
    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 351
    :cond_7
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v0, :cond_9

    .line 352
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->o:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 353
    sget-object v1, Lorg/threeten/bp/temporal/a;->o:Lorg/threeten/bp/temporal/a;

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v2, Lorg/threeten/bp/temporal/a;->o:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 355
    :cond_8
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 356
    sget-object v1, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v2, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 359
    :cond_9
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->o:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 360
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->o:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 361
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 362
    sget-object v4, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    const-wide/16 v6, 0xc

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    invoke-direct {p0, v4, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 374
    :cond_a
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 375
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 376
    sget-object v2, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v2, :cond_b

    .line 377
    sget-object v2, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 379
    :cond_b
    sget-object v2, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    const-wide/32 v4, 0x3b9aca00

    div-long v4, v0, v4

    invoke-direct {p0, v2, v4, v5}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 380
    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    const-wide/32 v4, 0x3b9aca00

    rem-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 382
    :cond_c
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->d:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 383
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->d:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 384
    sget-object v2, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v2, :cond_d

    .line 385
    sget-object v2, Lorg/threeten/bp/temporal/a;->d:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 387
    :cond_d
    sget-object v2, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-direct {p0, v2, v4, v5}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 388
    sget-object v2, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    const-wide/32 v4, 0xf4240

    rem-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 390
    :cond_e
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->f:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 391
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->f:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 392
    sget-object v2, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v2, :cond_f

    .line 393
    sget-object v2, Lorg/threeten/bp/temporal/a;->f:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 395
    :cond_f
    sget-object v2, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-direct {p0, v2, v4, v5}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 396
    sget-object v2, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3e8

    rem-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 398
    :cond_10
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 399
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 400
    sget-object v2, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v2, :cond_11

    .line 401
    sget-object v2, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 403
    :cond_11
    sget-object v2, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0xe10

    div-long v4, v0, v4

    invoke-direct {p0, v2, v4, v5}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 404
    sget-object v2, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3c

    div-long v4, v0, v4

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    invoke-direct {p0, v2, v4, v5}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 405
    sget-object v2, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3c

    rem-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 407
    :cond_12
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->j:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 408
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->j:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 409
    sget-object v2, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v2, :cond_13

    .line 410
    sget-object v2, Lorg/threeten/bp/temporal/a;->j:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2, v0, v1}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 412
    :cond_13
    sget-object v2, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3c

    div-long v4, v0, v4

    invoke-direct {p0, v2, v4, v5}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 413
    sget-object v2, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3c

    rem-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 421
    :cond_14
    sget-object v0, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v0, :cond_16

    .line 422
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 423
    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v2, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 425
    :cond_15
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 426
    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v2, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 429
    :cond_16
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 430
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 431
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 432
    sget-object v4, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    rem-long/2addr v0, v6

    add-long/2addr v0, v2

    invoke-direct {p0, v4, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 434
    :cond_17
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 435
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 436
    sget-object v2, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 437
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_18
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 440
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 441
    sget-object v2, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 442
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_19
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 445
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 446
    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    .line 451
    :cond_1a
    :goto_0
    return-void

    .line 447
    :cond_1b
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 448
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 449
    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    invoke-direct {p0, v2, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/format/a;

    goto :goto_0
.end method

.method private e(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;
    .locals 2
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
    const/4 v0, 0x0

    .line 677
    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 678
    iget-object v0, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    .line 692
    :cond_0
    :goto_0
    return-object v0

    .line 679
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 680
    iget-object v0, p0, Lorg/threeten/bp/format/a;->b:Lorg/threeten/bp/a/m;

    goto :goto_0

    .line 681
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 682
    iget-object v1, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    invoke-static {v0}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 683
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 684
    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    goto :goto_0

    .line 685
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    if-eq p1, v1, :cond_5

    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 686
    :cond_5
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 687
    :cond_6
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 692
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/format/ac;Ljava/util/Set;)Lorg/threeten/bp/format/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/format/ac;",
            "Ljava/util/Set",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            ">;)",
            "Lorg/threeten/bp/format/a;"
        }
    .end annotation

    .prologue
    .line 201
    if-eqz p2, :cond_0

    .line 202
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 205
    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/format/a;->a()V

    .line 206
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/format/ac;)V

    .line 207
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/a;->b(Lorg/threeten/bp/format/ac;)V

    .line 1225
    const/4 v0, 0x0

    move v2, v0

    .line 1227
    :goto_0
    const/16 v0, 0x64

    if-ge v2, v0, :cond_9

    .line 1228
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/q;

    .line 1230
    iget-object v1, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Lorg/threeten/bp/temporal/q;->a(Ljava/util/Map;Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/temporal/l;

    move-result-object v1

    .line 1231
    if-eqz v1, :cond_8

    .line 1232
    instance-of v3, v1, Lorg/threeten/bp/a/h;

    if-eqz v3, :cond_3

    .line 1233
    check-cast v1, Lorg/threeten/bp/a/h;

    .line 1234
    iget-object v3, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    if-nez v3, :cond_4

    .line 1235
    invoke-virtual {v1}, Lorg/threeten/bp/a/h;->b()Lorg/threeten/bp/ad;

    move-result-object v3

    iput-object v3, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    .line 1239
    :cond_2
    invoke-virtual {v1}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v1

    .line 1241
    :cond_3
    instance-of v3, v1, Lorg/threeten/bp/a/a;

    if-eqz v3, :cond_5

    .line 1242
    check-cast v1, Lorg/threeten/bp/a/a;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/a/a;)V

    .line 1243
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1244
    goto :goto_0

    .line 1236
    :cond_4
    iget-object v3, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    invoke-virtual {v1}, Lorg/threeten/bp/a/h;->b()Lorg/threeten/bp/ad;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/threeten/bp/ad;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1237
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_5
    instance-of v3, v1, Lorg/threeten/bp/p;

    if-eqz v3, :cond_6

    .line 1247
    check-cast v1, Lorg/threeten/bp/p;

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/p;)V

    .line 1248
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1249
    goto :goto_0

    .line 1251
    :cond_6
    instance-of v3, v1, Lorg/threeten/bp/a/c;

    if-eqz v3, :cond_7

    .line 1252
    check-cast v1, Lorg/threeten/bp/a/c;

    .line 1253
    invoke-virtual {v1}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/a/a;)V

    .line 1254
    invoke-virtual {v1}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/p;)V

    .line 1255
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1256
    goto/16 :goto_0

    .line 1258
    :cond_7
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_8
    iget-object v1, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1260
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1261
    goto/16 :goto_0

    .line 1266
    :cond_9
    const/16 v0, 0x64

    if-ne v2, v0, :cond_a

    .line 1267
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Badly written field"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_a
    if-lez v2, :cond_12

    const/4 v0, 0x1

    .line 208
    :goto_1
    if-eqz v0, :cond_b

    .line 209
    invoke-direct {p0}, Lorg/threeten/bp/format/a;->a()V

    .line 210
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/format/ac;)V

    .line 211
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/a;->b(Lorg/threeten/bp/format/ac;)V

    .line 1454
    :cond_b
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1455
    iget-object v1, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v2, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1456
    iget-object v2, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1457
    iget-object v3, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v4, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1458
    if-eqz v0, :cond_c

    .line 1461
    if-nez v1, :cond_13

    if-nez v2, :cond_c

    if-eqz v3, :cond_13

    .line 8565
    :cond_c
    :goto_2
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 8566
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    if-eqz v0, :cond_21

    .line 8567
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    iget-object v1, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/p;)Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/l;)V

    .line 215
    :cond_d
    :goto_3
    iget-object v0, p0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    invoke-virtual {v0}, Lorg/threeten/bp/z;->b()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    if-eqz v0, :cond_e

    .line 216
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    iget-object v1, p0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/a;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    .line 217
    sget-object v0, Lorg/threeten/bp/z;->a:Lorg/threeten/bp/z;

    iput-object v0, p0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    .line 8599
    :cond_e
    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8603
    :cond_f
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 8604
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 8605
    iget-object v2, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8606
    iget-object v2, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8616
    :cond_10
    :goto_4
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    if-eqz v0, :cond_11

    .line 8617
    iget-object v0, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    if-eqz v0, :cond_24

    .line 8618
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    iget-object v1, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/p;)Lorg/threeten/bp/a/c;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/h;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 8619
    iget-object v2, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_11
    :goto_5
    return-object p0

    .line 1269
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1464
    :cond_13
    if-eqz v1, :cond_14

    if-nez v2, :cond_14

    if-nez v3, :cond_c

    .line 1467
    :cond_14
    sget-object v4, Lorg/threeten/bp/format/ac;->c:Lorg/threeten/bp/format/ac;

    if-eq p1, v4, :cond_1d

    .line 1468
    if-eqz v0, :cond_19

    .line 1469
    sget-object v4, Lorg/threeten/bp/format/ac;->b:Lorg/threeten/bp/format/ac;

    if-ne p1, v4, :cond_18

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x18

    cmp-long v4, v4, v6

    if-nez v4, :cond_18

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_18

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_18

    :cond_16
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_18

    .line 1474
    :cond_17
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1475
    const/4 v4, 0x1

    invoke-static {v4}, Lorg/threeten/bp/z;->a(I)Lorg/threeten/bp/z;

    move-result-object v4

    iput-object v4, p0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    .line 1477
    :cond_18
    sget-object v4, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    .line 1478
    if-eqz v1, :cond_1c

    .line 1479
    sget-object v4, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v1

    .line 1480
    if-eqz v2, :cond_1b

    .line 1481
    sget-object v4, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v2

    .line 1482
    if-eqz v3, :cond_1a

    .line 1483
    sget-object v4, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v3

    .line 1484
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/p;->a(IIII)Lorg/threeten/bp/p;

    move-result-object v0

    .line 2186
    iput-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    .line 1531
    :cond_19
    :goto_6
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1486
    :cond_1a
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/p;->a(III)Lorg/threeten/bp/p;

    move-result-object v0

    .line 3186
    iput-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    goto :goto_6

    .line 1489
    :cond_1b
    if-nez v3, :cond_19

    .line 1490
    invoke-static {v0, v1}, Lorg/threeten/bp/p;->a(II)Lorg/threeten/bp/p;

    move-result-object v0

    .line 4186
    iput-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    goto :goto_6

    .line 1494
    :cond_1c
    if-nez v2, :cond_19

    if-nez v3, :cond_19

    .line 1495
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/threeten/bp/p;->a(II)Lorg/threeten/bp/p;

    move-result-object v0

    .line 5186
    iput-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    goto :goto_6

    .line 1500
    :cond_1d
    if-eqz v0, :cond_19

    .line 1501
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1502
    if-eqz v1, :cond_20

    .line 1503
    if-eqz v2, :cond_1f

    .line 1504
    if-nez v3, :cond_1e

    .line 1505
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1507
    :cond_1e
    const-wide v6, 0x34630b8a000L

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v4

    .line 1508
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v6, 0xdf8475800L

    invoke-static {v0, v1, v6, v7}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 1509
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x3b9aca00

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 1510
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 1511
    const-wide v2, 0x4e94914f0000L

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 5323
    const-wide v4, 0x4e94914f0000L

    rem-long/2addr v0, v4

    const-wide v4, 0x4e94914f0000L

    add-long/2addr v0, v4

    const-wide v4, 0x4e94914f0000L

    rem-long/2addr v0, v4

    .line 1513
    invoke-static {v0, v1}, Lorg/threeten/bp/p;->b(J)Lorg/threeten/bp/p;

    move-result-object v0

    .line 6186
    iput-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    .line 1514
    invoke-static {v2}, Lorg/threeten/bp/z;->a(I)Lorg/threeten/bp/z;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    goto/16 :goto_6

    .line 1516
    :cond_1f
    const-wide/16 v2, 0xe10

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v2

    .line 1517
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3c

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/b/c;->d(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 1518
    const-wide/32 v2, 0x15180

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 6323
    const-wide/32 v4, 0x15180

    rem-long/2addr v0, v4

    const-wide/32 v4, 0x15180

    add-long/2addr v0, v4

    const-wide/32 v4, 0x15180

    rem-long/2addr v0, v4

    .line 1520
    invoke-static {v0, v1}, Lorg/threeten/bp/p;->a(J)Lorg/threeten/bp/p;

    move-result-object v0

    .line 7186
    iput-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    .line 1521
    invoke-static {v2}, Lorg/threeten/bp/z;->a(I)Lorg/threeten/bp/z;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    goto/16 :goto_6

    .line 1524
    :cond_20
    const-wide/16 v0, 0x18

    invoke-static {v4, v5, v0, v1}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(J)I

    move-result v0

    .line 1525
    const/16 v1, 0x18

    invoke-static {v4, v5, v1}, Lorg/threeten/bp/b/c;->b(JI)I

    move-result v1

    int-to-long v2, v1

    .line 1526
    long-to-int v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/threeten/bp/p;->a(II)Lorg/threeten/bp/p;

    move-result-object v1

    .line 8186
    iput-object v1, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    .line 1527
    invoke-static {v0}, Lorg/threeten/bp/z;->a(I)Lorg/threeten/bp/z;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/format/a;->g:Lorg/threeten/bp/z;

    goto/16 :goto_6

    .line 8568
    :cond_21
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_22

    .line 8569
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/l;)V

    goto/16 :goto_3

    .line 8570
    :cond_22
    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    if-eqz v0, :cond_d

    .line 8571
    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    invoke-direct {p0, v0}, Lorg/threeten/bp/format/a;->a(Lorg/threeten/bp/temporal/l;)V

    goto/16 :goto_3

    .line 8608
    :cond_23
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8609
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8610
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 8621
    :cond_24
    iget-object v0, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v1, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8622
    if-eqz v0, :cond_11

    .line 8623
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    .line 8624
    iget-object v1, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    iget-object v2, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/p;)Lorg/threeten/bp/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/h;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 8625
    iget-object v2, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    sget-object v3, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 650
    if-nez p1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 3

    .prologue
    .line 660
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 661
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/a;->e(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v0

    .line 662
    if-nez v0, :cond_2

    .line 663
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 671
    :goto_0
    return-wide v0

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/p;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    goto :goto_0

    .line 669
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 699
    const-string v1, "DateTimeBuilder["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object v1, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 701
    const-string v1, "fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/a;->a:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 703
    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/a;->b:Lorg/threeten/bp/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 704
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/a;->c:Lorg/threeten/bp/ad;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 705
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/a;->d:Lorg/threeten/bp/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 706
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/threeten/bp/format/a;->e:Lorg/threeten/bp/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 707
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
