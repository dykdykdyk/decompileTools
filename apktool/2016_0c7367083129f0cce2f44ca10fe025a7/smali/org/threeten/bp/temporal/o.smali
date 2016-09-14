.class public final Lorg/threeten/bp/temporal/o;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"

# interfaces
.implements Lorg/threeten/bp/temporal/m;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(ILorg/threeten/bp/d;)V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const-string v0, "dayOfWeek"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    iput p1, p0, Lorg/threeten/bp/temporal/o;->a:I

    .line 1187
    invoke-virtual {p2}, Lorg/threeten/bp/d;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 452
    iput v0, p0, Lorg/threeten/bp/temporal/o;->b:I

    .line 453
    return-void
.end method

.method public synthetic constructor <init>(ILorg/threeten/bp/d;B)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/o;-><init>(ILorg/threeten/bp/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 3

    .prologue
    .line 457
    sget-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/k;->c(Lorg/threeten/bp/temporal/q;)I

    move-result v0

    .line 458
    iget v1, p0, Lorg/threeten/bp/temporal/o;->a:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/threeten/bp/temporal/o;->b:I

    if-ne v0, v1, :cond_0

    .line 466
    :goto_0
    return-object p1

    .line 461
    :cond_0
    iget v1, p0, Lorg/threeten/bp/temporal/o;->a:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 462
    iget v1, p0, Lorg/threeten/bp/temporal/o;->b:I

    sub-int/2addr v0, v1

    .line 463
    if-ltz v0, :cond_1

    rsub-int/lit8 v0, v0, 0x7

    int-to-long v0, v0

    :goto_1
    sget-object v2, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object p1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    int-to-long v0, v0

    goto :goto_1

    .line 465
    :cond_2
    iget v1, p0, Lorg/threeten/bp/temporal/o;->b:I

    sub-int v0, v1, v0

    .line 466
    if-ltz v0, :cond_3

    rsub-int/lit8 v0, v0, 0x7

    int-to-long v0, v0

    :goto_2
    sget-object v2, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object p1

    goto :goto_0

    :cond_3
    neg-int v0, v0

    int-to-long v0, v0

    goto :goto_2
.end method
