.class public abstract Lorg/threeten/bp/a/a;
.super Lorg/threeten/bp/b/a;
.source "ChronoLocalDate.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/k;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/b/a;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/a/a;",
        ">;",
        "Lorg/threeten/bp/temporal/k;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/threeten/bp/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lorg/threeten/bp/a/b;

    invoke-direct {v0}, Lorg/threeten/bp/a/b;-><init>()V

    sput-object v0, Lorg/threeten/bp/a/a;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lorg/threeten/bp/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/a/a;)I
    .locals 4

    .prologue
    .line 517
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 518
    if-nez v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/a/m;)I

    move-result v0

    .line 521
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
    .line 399
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    .line 401
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 402
    sget-object v0, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    goto :goto_0

    .line 403
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 404
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_3

    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 407
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :cond_4
    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/a;
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/threeten/bp/p;)Lorg/threeten/bp/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/p;",
            ")",
            "Lorg/threeten/bp/a/c",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {p0, p1}, Lorg/threeten/bp/a/e;->a(Lorg/threeten/bp/a/a;Lorg/threeten/bp/p;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/a;->d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 414
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/a;->c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/a;->c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/threeten/bp/temporal/q;)Z
    .locals 1

    .prologue
    .line 353
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->b()Z

    move-result v0

    .line 356
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/threeten/bp/a/o;
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/a/a;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->a(I)Lorg/threeten/bp/a/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/a;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/threeten/bp/a/a;)Z
    .locals 4

    .prologue
    .line 538
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/a;
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/a;
.end method

.method public c(Lorg/threeten/bp/a/a;)Z
    .locals 4

    .prologue
    .line 554
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 221
    check-cast p1, Lorg/threeten/bp/a/a;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/a/a;)I

    move-result v0

    return v0
.end method

.method public d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/b/a;->a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lorg/threeten/bp/a/a;)Z
    .locals 4

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/a;
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/a/m;->a(J)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 587
    if-ne p0, p1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 590
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/a/a;

    if-eqz v2, :cond_2

    .line 591
    check-cast p1, Lorg/threeten/bp/a/a;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/a/a;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 593
    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract g()Lorg/threeten/bp/a/m;
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 603
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    .line 604
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/a/m;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    .line 618
    sget-object v0, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    .line 619
    sget-object v2, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    .line 620
    sget-object v4, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v4}, Lorg/threeten/bp/a/a;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v4

    .line 621
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 622
    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v7

    invoke-virtual {v7}, Lorg/threeten/bp/a/m;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/threeten/bp/a/a;->b()Lorg/threeten/bp/a/o;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    cmp-long v0, v2, v10

    if-gez v0, :cond_0

    const-string v0, "-0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    cmp-long v0, v4, v10

    if-gez v0, :cond_1

    const-string v0, "-0"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 622
    :cond_0
    const-string v0, "-"

    goto :goto_0

    :cond_1
    const-string v0, "-"

    goto :goto_1
.end method
