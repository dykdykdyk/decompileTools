.class public abstract Lorg/threeten/bp/a/m;
.super Ljava/lang/Object;
.source "Chronology.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/a/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 146
    new-instance v0, Lorg/threeten/bp/a/n;

    invoke-direct {v0}, Lorg/threeten/bp/a/n;-><init>()V

    sput-object v0, Lorg/threeten/bp/a/m;->a:Lorg/threeten/bp/temporal/z;

    .line 156
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/a/m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/threeten/bp/a/m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    const/4 v0, 0x0

    .line 168
    :try_start_0
    const-class v1, Ljava/util/Locale;

    const-string v2, "getUnicodeLocaleType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 172
    :goto_0
    sput-object v0, Lorg/threeten/bp/a/m;->d:Ljava/lang/reflect/Method;

    .line 173
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/m;
    .locals 1

    .prologue
    .line 193
    const-string v0, "temporal"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/a/m;

    .line 195
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Lorg/threeten/bp/temporal/a;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/temporal/a;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 805
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 806
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    .line 807
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state, field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " conflicts with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 809
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/a/m;)I
    .locals 2

    .prologue
    .line 828
    invoke-virtual {p0}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/threeten/bp/a/a;",
            ">(",
            "Lorg/threeten/bp/temporal/k;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 359
    check-cast p1, Lorg/threeten/bp/a/a;

    .line 360
    invoke-virtual {p1}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/a/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chrono mismatch, expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    return-object p1
.end method

.method public a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/g;",
            "Lorg/threeten/bp/ad;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 627
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/a/k;->a(Lorg/threeten/bp/a/m;Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/k;

    move-result-object v0

    .line 628
    return-object v0
.end method

.method public abstract a(I)Lorg/threeten/bp/a/o;
.end method

.method public abstract a(J)Z
.end method

.method public abstract b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/a;
.end method

.method final b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/threeten/bp/a/a;",
            ">(",
            "Lorg/threeten/bp/temporal/k;",
            ")",
            "Lorg/threeten/bp/a/e",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 376
    check-cast p1, Lorg/threeten/bp/a/e;

    .line 1179
    iget-object v0, p1, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    .line 377
    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/a/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chrono mismatch, required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2179
    iget-object v2, p1, Lorg/threeten/bp/a/e;->a:Lorg/threeten/bp/a/a;

    .line 378
    invoke-virtual {v2}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/l;",
            ")",
            "Lorg/threeten/bp/a/c",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 578
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/a;

    move-result-object v0

    .line 579
    invoke-static {p1}, Lorg/threeten/bp/p;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/a;->a(Lorg/threeten/bp/p;)Lorg/threeten/bp/a/c;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final c(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/threeten/bp/a/a;",
            ">(",
            "Lorg/threeten/bp/temporal/k;",
            ")",
            "Lorg/threeten/bp/a/k",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 394
    check-cast p1, Lorg/threeten/bp/a/k;

    .line 395
    invoke-virtual {p1}, Lorg/threeten/bp/a/k;->e()Lorg/threeten/bp/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/a/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Chrono mismatch, required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/threeten/bp/a/k;->e()Lorg/threeten/bp/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/a/a;->g()Lorg/threeten/bp/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    return-object p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 141
    check-cast p1, Lorg/threeten/bp/a/m;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/a/m;)I

    move-result v0

    return v0
.end method

.method public d(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/l;",
            ")",
            "Lorg/threeten/bp/a/h",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 601
    :try_start_0
    invoke-static {p1}, Lorg/threeten/bp/ad;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/ad;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 603
    :try_start_1
    invoke-static {p1}, Lorg/threeten/bp/g;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/g;

    move-result-object v1

    .line 604
    invoke-virtual {p0, v1, v0}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;
    :try_end_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 609
    :goto_0
    return-object v0

    .line 607
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/m;->c(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/c;

    move-result-object v1

    .line 608
    invoke-virtual {p0, v1}, Lorg/threeten/bp/a/m;->b(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/a/e;

    move-result-object v1

    .line 609
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/threeten/bp/a/k;->a(Lorg/threeten/bp/a/e;Lorg/threeten/bp/ad;Lorg/threeten/bp/af;)Lorg/threeten/bp/a/h;
    :try_end_2
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 611
    :catch_1
    move-exception v0

    .line 612
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 843
    if-ne p0, p1, :cond_1

    .line 849
    :cond_0
    :goto_0
    return v0

    .line 846
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/a/m;

    if-eqz v2, :cond_2

    .line 847
    check-cast p1, Lorg/threeten/bp/a/m;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/a/m;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 849
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 862
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    invoke-virtual {p0}, Lorg/threeten/bp/a/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
