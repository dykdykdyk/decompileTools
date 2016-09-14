.class public abstract Lorg/threeten/bp/a/h;
.super Lorg/threeten/bp/b/a;
.source "ChronoZonedDateTime.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/a/a;",
        ">",
        "Lorg/threeten/bp/b/a;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/a/h",
        "<*>;>;",
        "Lorg/threeten/bp/temporal/k;"
    }
.end annotation


# static fields
.field private static a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/threeten/bp/a/h",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lorg/threeten/bp/a/i;

    invoke-direct {v0}, Lorg/threeten/bp/a/i;-><init>()V

    sput-object v0, Lorg/threeten/bp/a/h;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/threeten/bp/b/a;-><init>()V

    .line 178
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/a/h;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/a/h",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->f()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/h;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 450
    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->c()Lorg/threeten/bp/p;

    move-result-object v0

    .line 3677
    iget v0, v0, Lorg/threeten/bp/p;->h:I

    .line 451
    invoke-virtual {p1}, Lorg/threeten/bp/a/h;->c()Lorg/threeten/bp/p;

    move-result-object v1

    .line 4677
    iget v1, v1, Lorg/threeten/bp/p;->h:I

    .line 451
    sub-int/2addr v0, v1

    .line 452
    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/a/c;)I

    move-result v0

    .line 454
    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->b()Lorg/threeten/bp/ad;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ad;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/h;->b()Lorg/threeten/bp/ad;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ad;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 456
    if-nez v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/a/m;)I

    move-result v0

    .line 462
    :cond_0
    return v0
.end method

.method public a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;
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
    .line 372
    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->b()Lorg/threeten/bp/ad;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 374
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 375
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 377
    sget-object v0, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    goto :goto_0

    .line 378
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 379
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->a()Lorg/threeten/bp/af;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 381
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_5
    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 383
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->c()Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_6
    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a(Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/ad;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation
.end method

.method public a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/p;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->c(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()Lorg/threeten/bp/af;
.end method

.method public synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/h;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/h;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/h;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/m;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->c(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/q;",
            "J)",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract b()Lorg/threeten/bp/ad;
.end method

.method public b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 164
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_1

    .line 166
    :cond_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/c;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/h;->d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/h;->a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/h;

    move-result-object v0

    return-object v0
.end method

.method public c(Lorg/threeten/bp/temporal/q;)I
    .locals 3

    .prologue
    .line 175
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 176
    sget-object v1, Lorg/threeten/bp/a/j;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 180
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/c;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 177
    :pswitch_0
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field too large for an int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->a()Lorg/threeten/bp/af;

    move-result-object v0

    .line 1449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    goto :goto_0

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/aa;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/b/a;->a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->c(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/threeten/bp/p;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 94
    check-cast p1, Lorg/threeten/bp/a/h;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/h;->a(Lorg/threeten/bp/a/h;)I

    move-result v0

    return v0
.end method

.method public d(Lorg/threeten/bp/temporal/q;)J
    .locals 2

    .prologue
    .line 187
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 188
    sget-object v1, Lorg/threeten/bp/a/j;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/threeten/bp/a/c;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 194
    :goto_0
    return-wide v0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->f()J

    move-result-wide v0

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->a()Lorg/threeten/bp/af;

    move-result-object v0

    .line 2449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 190
    int-to-long v0, v0

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract d()Lorg/threeten/bp/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/a/c",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/aa;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<TD;>;"
        }
    .end annotation
.end method

.method public e()Lorg/threeten/bp/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    if-ne p0, p1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v0

    .line 531
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/a/h;

    if-eqz v2, :cond_2

    .line 532
    check-cast p1, Lorg/threeten/bp/a/h;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/h;->a(Lorg/threeten/bp/a/h;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 534
    goto :goto_0
.end method

.method public final f()J
    .locals 4

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    .line 428
    const-wide/32 v2, 0x15180

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->c()Lorg/threeten/bp/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/p;->a()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 429
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->a()Lorg/threeten/bp/af;

    move-result-object v2

    .line 3449
    iget v2, v2, Lorg/threeten/bp/af;->g:I

    .line 429
    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 430
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 544
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/c;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->a()Lorg/threeten/bp/af;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/af;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->b()Lorg/threeten/bp/ad;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ad;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->d()Lorg/threeten/bp/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->a()Lorg/threeten/bp/af;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/af;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->a()Lorg/threeten/bp/af;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->b()Lorg/threeten/bp/ad;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/a/h;->b()Lorg/threeten/bp/ad;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ad;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_0
    return-object v0
.end method
