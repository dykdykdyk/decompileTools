.class abstract enum Lorg/threeten/bp/temporal/e;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lorg/threeten/bp/temporal/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/temporal/e;",
        ">;",
        "Lorg/threeten/bp/temporal/q;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/temporal/e;

.field public static final enum b:Lorg/threeten/bp/temporal/e;

.field public static final enum c:Lorg/threeten/bp/temporal/e;

.field public static final enum d:Lorg/threeten/bp/temporal/e;

.field static final e:[I

.field private static final synthetic f:[Lorg/threeten/bp/temporal/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lorg/threeten/bp/temporal/f;

    const-string v1, "DAY_OF_QUARTER"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/temporal/e;->a:Lorg/threeten/bp/temporal/e;

    .line 298
    new-instance v0, Lorg/threeten/bp/temporal/g;

    const-string v1, "QUARTER_OF_YEAR"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/temporal/e;->b:Lorg/threeten/bp/temporal/e;

    .line 339
    new-instance v0, Lorg/threeten/bp/temporal/h;

    const-string v1, "WEEK_OF_WEEK_BASED_YEAR"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/temporal/e;->c:Lorg/threeten/bp/temporal/e;

    .line 425
    new-instance v0, Lorg/threeten/bp/temporal/i;

    const-string v1, "WEEK_BASED_YEAR"

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/temporal/e;->d:Lorg/threeten/bp/temporal/e;

    .line 205
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/threeten/bp/temporal/e;

    const/4 v1, 0x0

    sget-object v2, Lorg/threeten/bp/temporal/e;->a:Lorg/threeten/bp/temporal/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/threeten/bp/temporal/e;->b:Lorg/threeten/bp/temporal/e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/threeten/bp/temporal/e;->c:Lorg/threeten/bp/temporal/e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/threeten/bp/temporal/e;->d:Lorg/threeten/bp/temporal/e;

    aput-object v2, v0, v1

    sput-object v0, Lorg/threeten/bp/temporal/e;->f:[Lorg/threeten/bp/temporal/e;

    .line 490
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/threeten/bp/temporal/e;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 511
    invoke-static {p0, v0, v0}, Lorg/threeten/bp/j;->a(III)Lorg/threeten/bp/j;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lorg/threeten/bp/j;->d()Lorg/threeten/bp/d;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/d;->d:Lorg/threeten/bp/d;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/threeten/bp/j;->d()Lorg/threeten/bp/d;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/d;->c:Lorg/threeten/bp/d;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/threeten/bp/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    const/16 v0, 0x35

    .line 516
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x34

    goto :goto_0
.end method

.method static a(Lorg/threeten/bp/j;)Lorg/threeten/bp/temporal/ab;
    .locals 4

    .prologue
    .line 506
    invoke-static {p0}, Lorg/threeten/bp/temporal/e;->b(Lorg/threeten/bp/j;)I

    move-result v0

    .line 507
    const-wide/16 v2, 0x1

    invoke-static {v0}, Lorg/threeten/bp/temporal/e;->a(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    return-object v0
.end method

.method static b(Lorg/threeten/bp/j;)I
    .locals 4

    .prologue
    .line 542
    .line 1650
    iget v0, p0, Lorg/threeten/bp/j;->d:I

    .line 543
    invoke-virtual {p0}, Lorg/threeten/bp/j;->c()I

    move-result v1

    .line 544
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 545
    invoke-virtual {p0}, Lorg/threeten/bp/j;->d()Lorg/threeten/bp/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/d;->ordinal()I

    move-result v2

    .line 546
    sub-int/2addr v1, v2

    const/4 v2, -0x2

    if-ge v1, v2, :cond_0

    .line 547
    add-int/lit8 v0, v0, -0x1

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 549
    :cond_1
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_0

    .line 550
    invoke-virtual {p0}, Lorg/threeten/bp/j;->d()Lorg/threeten/bp/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/d;->ordinal()I

    move-result v2

    .line 551
    add-int/lit16 v3, v1, -0x16b

    invoke-virtual {p0}, Lorg/threeten/bp/j;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    sub-int v1, v3, v1

    .line 552
    sub-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lorg/threeten/bp/j;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v0, 0x1

    const/4 v4, -0x3

    .line 205
    .line 2520
    invoke-virtual {p0}, Lorg/threeten/bp/j;->d()Lorg/threeten/bp/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/d;->ordinal()I

    move-result v1

    .line 2521
    invoke-virtual {p0}, Lorg/threeten/bp/j;->c()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 2522
    rsub-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    .line 2523
    div-int/lit8 v2, v1, 0x7

    .line 2524
    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr v1, v2

    .line 2525
    add-int/lit8 v1, v1, -0x3

    .line 2526
    if-ge v1, v4, :cond_6

    .line 2527
    add-int/lit8 v1, v1, 0x7

    move v2, v1

    .line 2529
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2530
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lorg/threeten/bp/j;->a(I)Lorg/threeten/bp/j;

    move-result-object v0

    .line 3249
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, v6, v2

    if-nez v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->b(J)Lorg/threeten/bp/j;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lorg/threeten/bp/j;->b(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 2530
    :goto_1
    invoke-static {v0}, Lorg/threeten/bp/temporal/e;->a(Lorg/threeten/bp/j;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 4219
    iget-wide v0, v0, Lorg/threeten/bp/temporal/ab;->d:J

    .line 2530
    long-to-int v0, v0

    :cond_0
    :goto_2
    return v0

    .line 3249
    :cond_1
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/j;->b(J)Lorg/threeten/bp/j;

    move-result-object v0

    goto :goto_1

    .line 2532
    :cond_2
    sub-int v1, v3, v2

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    .line 2533
    const/16 v3, 0x35

    if-ne v1, v3, :cond_4

    .line 2534
    if-eq v2, v4, :cond_3

    const/4 v3, -0x2

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lorg/threeten/bp/j;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_0
.end method

.method static synthetic d(Lorg/threeten/bp/temporal/l;)Z
    .locals 2

    .prologue
    .line 205
    .line 2502
    invoke-static {p0}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/m;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 205
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/e;
    .locals 1

    .prologue
    .line 205
    const-class v0, Lorg/threeten/bp/temporal/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/e;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/temporal/e;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/threeten/bp/temporal/e;->f:[Lorg/threeten/bp/temporal/e;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/temporal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ac;",
            ")",
            "Lorg/threeten/bp/temporal/l;"
        }
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method
