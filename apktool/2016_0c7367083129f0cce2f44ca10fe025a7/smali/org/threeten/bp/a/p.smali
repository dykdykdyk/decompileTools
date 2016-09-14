.class public final Lorg/threeten/bp/a/p;
.super Lorg/threeten/bp/a/m;
.source "IsoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lorg/threeten/bp/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/threeten/bp/a/p;

    invoke-direct {v0}, Lorg/threeten/bp/a/p;-><init>()V

    sput-object v0, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/threeten/bp/a/m;-><init>()V

    .line 114
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "ISO"

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/a/h;
    .locals 1

    .prologue
    .line 98
    .line 2280
    invoke-static {p1, p2}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/g;Lorg/threeten/bp/ad;)Lorg/threeten/bp/ai;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public final bridge synthetic a(I)Lorg/threeten/bp/a/o;
    .locals 1

    .prologue
    .line 98
    .line 1370
    invoke-static {p1}, Lorg/threeten/bp/a/q;->a(I)Lorg/threeten/bp/a/q;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public final a(J)Z
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 357
    const-wide/16 v0, 0x3

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x64

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x190

    rem-long v0, p1, v0

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

.method public final synthetic b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/a;
    .locals 1

    .prologue
    .line 98
    .line 5237
    invoke-static {p1}, Lorg/threeten/bp/j;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/j;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public final synthetic c(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/c;
    .locals 1

    .prologue
    .line 98
    .line 4251
    invoke-static {p1}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/m;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method public final synthetic d(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/a/h;
    .locals 1

    .prologue
    .line 98
    .line 3265
    invoke-static {p1}, Lorg/threeten/bp/ai;->a(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/ai;

    move-result-object v0

    .line 98
    return-object v0
.end method
