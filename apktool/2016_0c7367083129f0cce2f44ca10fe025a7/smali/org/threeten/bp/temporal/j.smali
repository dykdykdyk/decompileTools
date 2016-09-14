.class final enum Lorg/threeten/bp/temporal/j;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lorg/threeten/bp/temporal/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/temporal/j;",
        ">;",
        "Lorg/threeten/bp/temporal/aa;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/temporal/j;

.field public static final enum b:Lorg/threeten/bp/temporal/j;

.field private static final synthetic e:[Lorg/threeten/bp/temporal/j;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lorg/threeten/bp/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 565
    new-instance v0, Lorg/threeten/bp/temporal/j;

    const-string v1, "WEEK_BASED_YEARS"

    const-string v2, "WeekBasedYears"

    const-wide/32 v4, 0x1e18558

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/threeten/bp/temporal/j;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/j;->a:Lorg/threeten/bp/temporal/j;

    .line 566
    new-instance v0, Lorg/threeten/bp/temporal/j;

    const-string v1, "QUARTER_YEARS"

    const-string v2, "QuarterYears"

    const-wide/32 v4, 0x786156

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/threeten/bp/temporal/j;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/j;->b:Lorg/threeten/bp/temporal/j;

    .line 564
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/threeten/bp/temporal/j;

    sget-object v1, Lorg/threeten/bp/temporal/j;->a:Lorg/threeten/bp/temporal/j;

    aput-object v1, v0, v6

    sget-object v1, Lorg/threeten/bp/temporal/j;->b:Lorg/threeten/bp/temporal/j;

    aput-object v1, v0, v7

    sput-object v0, Lorg/threeten/bp/temporal/j;->e:[Lorg/threeten/bp/temporal/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 572
    iput-object p3, p0, Lorg/threeten/bp/temporal/j;->c:Ljava/lang/String;

    .line 573
    iput-object p4, p0, Lorg/threeten/bp/temporal/j;->d:Lorg/threeten/bp/f;

    .line 574
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/j;
    .locals 1

    .prologue
    .line 564
    const-class v0, Lorg/threeten/bp/temporal/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/j;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/temporal/j;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lorg/threeten/bp/temporal/j;->e:[Lorg/threeten/bp/temporal/j;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/j;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J
    .locals 4

    .prologue
    .line 618
    sget-object v0, Lorg/threeten/bp/temporal/d;->a:[I

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 624
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :pswitch_0
    sget-object v0, Lorg/threeten/bp/temporal/c;->d:Lorg/threeten/bp/temporal/q;

    invoke-interface {p2, v0}, Lorg/threeten/bp/temporal/k;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    sget-object v2, Lorg/threeten/bp/temporal/c;->d:Lorg/threeten/bp/temporal/q;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/k;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->c(JJ)J

    move-result-wide v0

    .line 622
    :goto_0
    return-wide v0

    :pswitch_1
    sget-object v0, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, p2, v0}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/k;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x100

    .line 604
    sget-object v0, Lorg/threeten/bp/temporal/d;->a:[I

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :pswitch_0
    sget-object v0, Lorg/threeten/bp/temporal/c;->d:Lorg/threeten/bp/temporal/q;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/k;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 607
    sget-object v2, Lorg/threeten/bp/temporal/c;->d:Lorg/threeten/bp/temporal/q;

    invoke-interface {p1, v2, v0, v1}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    :pswitch_1
    div-long v0, p2, v4

    sget-object v2, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    rem-long v2, p2, v4

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    sget-object v1, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    invoke-interface {v0, v2, v3, v1}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/threeten/bp/temporal/j;->c:Ljava/lang/String;

    return-object v0
.end method
