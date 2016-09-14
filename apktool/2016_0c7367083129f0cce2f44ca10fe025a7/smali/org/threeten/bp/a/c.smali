.class public abstract Lorg/threeten/bp/a/c;
.super Lorg/threeten/bp/b/a;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/k;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/a/a;",
        ">",
        "Lorg/threeten/bp/b/a;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/a/c",
        "<*>;>;",
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
            "Lorg/threeten/bp/a/c",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lorg/threeten/bp/a/d;

    invoke-direct {v0}, Lorg/threeten/bp/a/d;-><init>()V

    sput-object v0, Lorg/threeten/bp/a/c;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/threeten/bp/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/a/c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/a/c",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/a/a;)I

    move-result v0

    .line 357
    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/p;)I

    move-result v0

    .line 359
    if-nez v0, :cond_0

    .line 3171
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    .line 4171
    invoke-virtual {p1}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v1

    .line 360
    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/a/m;)I

    move-result v0

    .line 363
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
    .line 226
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1171
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 228
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 229
    sget-object v0, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 233
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 235
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_5
    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/p;",
            ")",
            "Lorg/threeten/bp/a/c",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
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

.method public final a(Lorg/threeten/bp/af;)Lorg/threeten/bp/g;
    .locals 4

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/c;->b(Lorg/threeten/bp/af;)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v2

    .line 1677
    iget v2, v2, Lorg/threeten/bp/p;->h:I

    .line 307
    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/g;->a(JJ)Lorg/threeten/bp/g;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()Lorg/threeten/bp/p;
.end method

.method public synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/c;->d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 242
    sget-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/c;->c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/c;->c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/threeten/bp/af;)J
    .locals 4

    .prologue
    .line 322
    const-string v0, "offset"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    .line 324
    const-wide/32 v2, 0x15180

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/p;->a()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2449
    iget v2, p1, Lorg/threeten/bp/af;->g:I

    .line 325
    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 326
    return-wide v0
.end method

.method public abstract b()Lorg/threeten/bp/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/a/c;->e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/threeten/bp/a/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/a/c",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    .line 379
    invoke-virtual {p1}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    .line 380
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/m;",
            ")",
            "Lorg/threeten/bp/a/c",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/threeten/bp/b/a;->a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/q;",
            "J)",
            "Lorg/threeten/bp/a/c",
            "<TD;>;"
        }
    .end annotation
.end method

.method public c(Lorg/threeten/bp/a/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/a/c",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    .line 397
    invoke-virtual {p1}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    .line 398
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 93
    check-cast p1, Lorg/threeten/bp/a/c;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/a/c;)I

    move-result v0

    return v0
.end method

.method public d(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/aa;",
            ")",
            "Lorg/threeten/bp/a/c",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/b/a;->a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/aa;",
            ")",
            "Lorg/threeten/bp/a/c",
            "<TD;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    if-ne p0, p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 433
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/a/c;

    if-eqz v2, :cond_2

    .line 434
    check-cast p1, Lorg/threeten/bp/a/c;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/c;->a(Lorg/threeten/bp/a/c;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 436
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/p;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->b()Lorg/threeten/bp/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/threeten/bp/a/c;->a()Lorg/threeten/bp/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
