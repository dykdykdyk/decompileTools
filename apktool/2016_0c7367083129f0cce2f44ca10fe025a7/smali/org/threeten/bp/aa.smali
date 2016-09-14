.class public final Lorg/threeten/bp/aa;
.super Lorg/threeten/bp/b/b;
.source "Year.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/k;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/b/b;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/aa;",
        ">;",
        "Lorg/threeten/bp/temporal/k;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/aa;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/threeten/bp/format/b;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 113
    new-instance v0, Lorg/threeten/bp/ab;

    invoke-direct {v0}, Lorg/threeten/bp/ab;-><init>()V

    sput-object v0, Lorg/threeten/bp/aa;->a:Lorg/threeten/bp/temporal/z;

    .line 127
    new-instance v0, Lorg/threeten/bp/format/e;

    invoke-direct {v0}, Lorg/threeten/bp/format/e;-><init>()V

    sget-object v1, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    const/4 v2, 0x4

    const/16 v3, 0xa

    sget-object v4, Lorg/threeten/bp/format/ad;->e:Lorg/threeten/bp/format/ad;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)Lorg/threeten/bp/format/e;

    move-result-object v0

    .line 4864
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/e;->a(Ljava/util/Locale;)Lorg/threeten/bp/format/b;

    move-result-object v0

    .line 127
    sput-object v0, Lorg/threeten/bp/aa;->b:Lorg/threeten/bp/format/b;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lorg/threeten/bp/b/b;-><init>()V

    .line 297
    iput p1, p0, Lorg/threeten/bp/aa;->c:I

    .line 298
    return-void
.end method

.method private static a(I)Lorg/threeten/bp/aa;
    .locals 4

    .prologue
    .line 199
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 200
    new-instance v0, Lorg/threeten/bp/aa;

    invoke-direct {v0, p0}, Lorg/threeten/bp/aa;-><init>(I)V

    return-object v0
.end method

.method public static a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/aa;
    .locals 3

    .prologue
    .line 222
    instance-of v0, p0, Lorg/threeten/bp/aa;

    if-eqz v0, :cond_0

    .line 223
    check-cast p0, Lorg/threeten/bp/aa;

    .line 229
    :goto_0
    return-object p0

    .line 226
    :cond_0
    :try_start_0
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-static {p0}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-static {p0}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object p0

    .line 229
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/l;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/aa;->a(I)Lorg/threeten/bp/aa;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain Year from TemporalAccessor: "

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

.method public static a(J)Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 287
    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x64

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x190

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(J)Lorg/threeten/bp/aa;
    .locals 5

    .prologue
    .line 624
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 627
    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    iget v1, p0, Lorg/threeten/bp/aa;->c:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v0

    invoke-static {v0}, Lorg/threeten/bp/aa;->a(I)Lorg/threeten/bp/aa;

    move-result-object p0

    goto :goto_0
.end method

.method private b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/aa;
    .locals 4

    .prologue
    .line 559
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 560
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 561
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->a(J)J

    .line 562
    sget-object v1, Lorg/threeten/bp/ac;->a:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 567
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

    .line 563
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long p2, v0, p2

    :cond_0
    long-to-int v0, p2

    invoke-static {v0}, Lorg/threeten/bp/aa;->a(I)Lorg/threeten/bp/aa;

    move-result-object p0

    .line 569
    :cond_1
    :goto_0
    return-object p0

    .line 564
    :pswitch_1
    long-to-int v0, p2

    invoke-static {v0}, Lorg/threeten/bp/aa;->a(I)Lorg/threeten/bp/aa;

    move-result-object p0

    goto :goto_0

    .line 565
    :pswitch_2
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/aa;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/threeten/bp/aa;->a(I)Lorg/threeten/bp/aa;

    move-result-object p0

    goto :goto_0

    .line 569
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/aa;

    move-object p0, v0

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/aa;
    .locals 5

    .prologue
    .line 601
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    .line 602
    sget-object v1, Lorg/threeten/bp/ac;->b:[I

    move-object v0, p3

    check-cast v0, Lorg/threeten/bp/temporal/b;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 609
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/aa;->b(J)Lorg/threeten/bp/aa;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 604
    :pswitch_1
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/aa;->b(J)Lorg/threeten/bp/aa;

    move-result-object v0

    goto :goto_0

    .line 605
    :pswitch_2
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/aa;->b(J)Lorg/threeten/bp/aa;

    move-result-object v0

    goto :goto_0

    .line 606
    :pswitch_3
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Lorg/threeten/bp/b/c;->a(JI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/threeten/bp/aa;->b(J)Lorg/threeten/bp/aa;

    move-result-object v0

    goto :goto_0

    .line 607
    :pswitch_4
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    sget-object v1, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v1}, Lorg/threeten/bp/aa;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/threeten/bp/aa;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/aa;

    move-result-object v0

    goto :goto_0

    .line 611
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/aa;

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J
    .locals 6

    .prologue
    .line 787
    invoke-static {p1}, Lorg/threeten/bp/aa;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/aa;

    move-result-object v1

    .line 788
    instance-of v0, p2, Lorg/threeten/bp/temporal/b;

    if-eqz v0, :cond_0

    .line 789
    iget v0, v1, Lorg/threeten/bp/aa;->c:I

    int-to-long v2, v0

    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 790
    sget-object v4, Lorg/threeten/bp/ac;->b:[I

    move-object v0, p2

    check-cast v0, Lorg/threeten/bp/temporal/b;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/b;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 797
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

    :pswitch_0
    move-wide v0, v2

    .line 799
    :goto_0
    return-wide v0

    .line 792
    :pswitch_1
    const-wide/16 v0, 0xa

    div-long v0, v2, v0

    goto :goto_0

    .line 793
    :pswitch_2
    const-wide/16 v0, 0x64

    div-long v0, v2, v0

    goto :goto_0

    .line 794
    :pswitch_3
    const-wide/16 v0, 0x3e8

    div-long v0, v2, v0

    goto :goto_0

    .line 795
    :pswitch_4
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/aa;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    sget-object v2, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/aa;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 799
    :cond_0
    invoke-interface {p2, p0, v1}, Lorg/threeten/bp/temporal/aa;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J

    move-result-wide v0

    goto :goto_0

    .line 790
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 697
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 698
    sget-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    .line 705
    :goto_0
    return-object v0

    .line 699
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 700
    sget-object v0, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    goto :goto_0

    .line 701
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 703
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 705
    :cond_3
    invoke-super {p0, p1}, Lorg/threeten/bp/b/b;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 5

    .prologue
    .line 98
    .line 2659
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/aa;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/aa;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, p3}, Lorg/threeten/bp/aa;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/aa;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-direct {p0, v0, v1, p3}, Lorg/threeten/bp/aa;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/aa;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 736
    invoke-static {p1}, Lorg/threeten/bp/a/m;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/m;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/a/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    iget v1, p0, Lorg/threeten/bp/aa;->c:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 98
    .line 3514
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/aa;

    .line 98
    return-object v0
.end method

.method public final synthetic a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/aa;->b(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/aa;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 341
    instance-of v2, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v2, :cond_2

    .line 342
    sget-object v2, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 344
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

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 379
    sget-object v0, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_1

    .line 380
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 380
    :cond_0
    const-wide/32 v0, 0x3b9ac9ff

    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/b/b;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/threeten/bp/aa;->c(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/aa;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 4

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lorg/threeten/bp/aa;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/aa;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 98
    check-cast p1, Lorg/threeten/bp/aa;

    .line 3882
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    iget v1, p1, Lorg/threeten/bp/aa;->c:I

    sub-int/2addr v0, v1

    .line 98
    return v0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 3

    .prologue
    .line 437
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_2

    .line 438
    sget-object v1, Lorg/threeten/bp/ac;->a:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 443
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

    .line 439
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    rsub-int/lit8 v0, v0, 0x1

    :goto_0
    int-to-long v0, v0

    .line 445
    :goto_1
    return-wide v0

    .line 439
    :cond_0
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    goto :goto_0

    .line 440
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    int-to-long v0, v0

    goto :goto_1

    .line 441
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    int-to-long v0, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 445
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_1

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 916
    if-ne p0, p1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v0

    .line 919
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/aa;

    if-eqz v2, :cond_2

    .line 920
    iget v2, p0, Lorg/threeten/bp/aa;->c:I

    check-cast p1, Lorg/threeten/bp/aa;

    iget v3, p1, Lorg/threeten/bp/aa;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 922
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 932
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lorg/threeten/bp/aa;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
