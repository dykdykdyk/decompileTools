.class public final enum Lorg/threeten/bp/d;
.super Ljava/lang/Enum;
.source "DayOfWeek.java"

# interfaces
.implements Lorg/threeten/bp/temporal/l;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/d;",
        ">;",
        "Lorg/threeten/bp/temporal/l;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/d;

.field public static final enum b:Lorg/threeten/bp/d;

.field public static final enum c:Lorg/threeten/bp/d;

.field public static final enum d:Lorg/threeten/bp/d;

.field public static final enum e:Lorg/threeten/bp/d;

.field public static final enum f:Lorg/threeten/bp/d;

.field public static final enum g:Lorg/threeten/bp/d;

.field public static final h:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:[Lorg/threeten/bp/d;

.field private static final synthetic j:[Lorg/threeten/bp/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lorg/threeten/bp/d;

    const-string v1, "MONDAY"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/d;->a:Lorg/threeten/bp/d;

    .line 90
    new-instance v0, Lorg/threeten/bp/d;

    const-string v1, "TUESDAY"

    invoke-direct {v0, v1, v4}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/d;->b:Lorg/threeten/bp/d;

    .line 95
    new-instance v0, Lorg/threeten/bp/d;

    const-string v1, "WEDNESDAY"

    invoke-direct {v0, v1, v5}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/d;->c:Lorg/threeten/bp/d;

    .line 100
    new-instance v0, Lorg/threeten/bp/d;

    const-string v1, "THURSDAY"

    invoke-direct {v0, v1, v6}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/d;->d:Lorg/threeten/bp/d;

    .line 105
    new-instance v0, Lorg/threeten/bp/d;

    const-string v1, "FRIDAY"

    invoke-direct {v0, v1, v7}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/d;->e:Lorg/threeten/bp/d;

    .line 110
    new-instance v0, Lorg/threeten/bp/d;

    const-string v1, "SATURDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/d;->f:Lorg/threeten/bp/d;

    .line 115
    new-instance v0, Lorg/threeten/bp/d;

    const-string v1, "SUNDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/d;->g:Lorg/threeten/bp/d;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/threeten/bp/d;

    sget-object v1, Lorg/threeten/bp/d;->a:Lorg/threeten/bp/d;

    aput-object v1, v0, v3

    sget-object v1, Lorg/threeten/bp/d;->b:Lorg/threeten/bp/d;

    aput-object v1, v0, v4

    sget-object v1, Lorg/threeten/bp/d;->c:Lorg/threeten/bp/d;

    aput-object v1, v0, v5

    sget-object v1, Lorg/threeten/bp/d;->d:Lorg/threeten/bp/d;

    aput-object v1, v0, v6

    sget-object v1, Lorg/threeten/bp/d;->e:Lorg/threeten/bp/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/threeten/bp/d;->f:Lorg/threeten/bp/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/threeten/bp/d;->g:Lorg/threeten/bp/d;

    aput-object v2, v0, v1

    sput-object v0, Lorg/threeten/bp/d;->j:[Lorg/threeten/bp/d;

    .line 119
    new-instance v0, Lorg/threeten/bp/e;

    invoke-direct {v0}, Lorg/threeten/bp/e;-><init>()V

    sput-object v0, Lorg/threeten/bp/d;->h:Lorg/threeten/bp/temporal/z;

    .line 128
    invoke-static {}, Lorg/threeten/bp/d;->values()[Lorg/threeten/bp/d;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/d;->i:[Lorg/threeten/bp/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lorg/threeten/bp/d;
    .locals 3

    .prologue
    .line 143
    if-lez p0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 144
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for DayOfWeek: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    sget-object v0, Lorg/threeten/bp/d;->i:[Lorg/threeten/bp/d;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/d;
    .locals 4

    .prologue
    .line 166
    instance-of v0, p0, Lorg/threeten/bp/d;

    if-eqz v0, :cond_0

    .line 167
    check-cast p0, Lorg/threeten/bp/d;

    .line 170
    :goto_0
    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/l;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/d;->a(I)Lorg/threeten/bp/d;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain DayOfWeek from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/d;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lorg/threeten/bp/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/d;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/d;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/threeten/bp/d;->j:[Lorg/threeten/bp/d;

    invoke-virtual {v0}, [Lorg/threeten/bp/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/d;

    return-object v0
.end method


# virtual methods
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
    .line 383
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 384
    sget-object v0, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    .line 389
    :goto_0
    return-object v0

    .line 385
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 433
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    .line 3187
    invoke-virtual {p0}, Lorg/threeten/bp/d;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 433
    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    instance-of v2, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v2, :cond_2

    .line 230
    sget-object v2, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    if-ne p1, v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 3

    .prologue
    .line 258
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 259
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 260
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 4

    .prologue
    .line 292
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lorg/threeten/bp/d;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/d;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/d;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 3

    .prologue
    .line 321
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 2187
    invoke-virtual {p0}, Lorg/threeten/bp/d;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 322
    int-to-long v0, v0

    .line 326
    :goto_0
    return-wide v0

    .line 323
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 324
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0
.end method
