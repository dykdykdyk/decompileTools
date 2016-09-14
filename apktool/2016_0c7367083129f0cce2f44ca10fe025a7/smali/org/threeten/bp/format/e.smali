.class public final Lorg/threeten/bp/format/e;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# static fields
.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/ad;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lorg/threeten/bp/temporal/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lorg/threeten/bp/format/e;

.field private final d:Lorg/threeten/bp/format/e;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/format/l;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private g:I

.field private h:C

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Lorg/threeten/bp/format/f;

    invoke-direct {v0}, Lorg/threeten/bp/format/f;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/e;->b:Lorg/threeten/bp/temporal/z;

    .line 1678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1680
    sput-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/c;->b:Lorg/threeten/bp/temporal/q;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/c;->b:Lorg/threeten/bp/temporal/q;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->q:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->o:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->n:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->l:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->f:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    sget-object v0, Lorg/threeten/bp/format/e;->j:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3869
    new-instance v0, Lorg/threeten/bp/format/h;

    invoke-direct {v0}, Lorg/threeten/bp/format/h;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/e;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/e;->i:I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/threeten/bp/format/e;->d:Lorg/threeten/bp/format/e;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/threeten/bp/format/e;->f:Z

    .line 198
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/format/e;)V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lorg/threeten/bp/format/e;->i:I

    .line 208
    iput-object p1, p0, Lorg/threeten/bp/format/e;->d:Lorg/threeten/bp/format/e;

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/threeten/bp/format/e;->f:Z

    .line 210
    return-void
.end method

.method private a(Lorg/threeten/bp/format/o;)Lorg/threeten/bp/format/e;
    .locals 8

    .prologue
    .line 578
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget v0, v0, Lorg/threeten/bp/format/e;->i:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v0, v0, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    iget-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget v1, v1, Lorg/threeten/bp/format/e;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/threeten/bp/format/o;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget v6, v0, Lorg/threeten/bp/format/e;->i:I

    .line 583
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v0, v0, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/threeten/bp/format/o;

    .line 584
    iget v0, p1, Lorg/threeten/bp/format/o;->c:I

    iget v1, p1, Lorg/threeten/bp/format/o;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    sget-object v1, Lorg/threeten/bp/format/ad;->d:Lorg/threeten/bp/format/ad;

    if-ne v0, v1, :cond_0

    .line 586
    iget v7, p1, Lorg/threeten/bp/format/o;->d:I

    .line 4348
    new-instance v0, Lorg/threeten/bp/format/o;

    iget-object v1, v5, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    iget v2, v5, Lorg/threeten/bp/format/o;->c:I

    iget v3, v5, Lorg/threeten/bp/format/o;->d:I

    iget-object v4, v5, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    iget v5, v5, Lorg/threeten/bp/format/o;->f:I

    add-int/2addr v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/format/o;-><init>(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;I)V

    .line 588
    invoke-virtual {p1}, Lorg/threeten/bp/format/o;->a()Lorg/threeten/bp/format/o;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 590
    iget-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iput v6, v1, Lorg/threeten/bp/format/e;->i:I

    .line 598
    :goto_0
    iget-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v1, v1, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    invoke-interface {v1, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 603
    :goto_1
    return-object p0

    .line 593
    :cond_0
    invoke-virtual {v5}, Lorg/threeten/bp/format/o;->a()Lorg/threeten/bp/format/o;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    move-result v2

    iput v2, v1, Lorg/threeten/bp/format/e;->i:I

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    move-result v1

    iput v1, v0, Lorg/threeten/bp/format/e;->i:I

    goto :goto_1
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/l;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1835
    const-string v0, "pp"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1836
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget v0, v0, Lorg/threeten/bp/format/e;->g:I

    if-lez v0, :cond_1

    .line 1837
    if-eqz p1, :cond_0

    .line 1838
    new-instance v0, Lorg/threeten/bp/format/q;

    iget-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget v1, v1, Lorg/threeten/bp/format/e;->g:I

    iget-object v2, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-char v2, v2, Lorg/threeten/bp/format/e;->h:C

    invoke-direct {v0, p1, v1, v2}, Lorg/threeten/bp/format/q;-><init>(Lorg/threeten/bp/format/l;IC)V

    move-object p1, v0

    .line 1840
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iput v3, v0, Lorg/threeten/bp/format/e;->g:I

    .line 1841
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iput-char v3, v0, Lorg/threeten/bp/format/e;->h:C

    .line 1843
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v0, v0, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    const/4 v1, -0x1

    iput v1, v0, Lorg/threeten/bp/format/e;->i:I

    .line 1845
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v0, v0, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final a(Ljava/util/Locale;)Lorg/threeten/bp/format/b;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1883
    const-string v0, "locale"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1884
    :goto_0
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v0, v0, Lorg/threeten/bp/format/e;->d:Lorg/threeten/bp/format/e;

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {p0}, Lorg/threeten/bp/format/e;->f()Lorg/threeten/bp/format/e;

    goto :goto_0

    .line 1887
    :cond_0
    new-instance v1, Lorg/threeten/bp/format/k;

    iget-object v0, p0, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/threeten/bp/format/k;-><init>(Ljava/util/List;Z)V

    .line 1888
    new-instance v0, Lorg/threeten/bp/format/b;

    sget-object v3, Lorg/threeten/bp/format/ab;->a:Lorg/threeten/bp/format/ab;

    sget-object v4, Lorg/threeten/bp/format/ac;->b:Lorg/threeten/bp/format/ac;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/b;-><init>(Lorg/threeten/bp/format/k;Ljava/util/Locale;Lorg/threeten/bp/format/ab;Lorg/threeten/bp/format/ac;Ljava/util/Set;Lorg/threeten/bp/a/m;Lorg/threeten/bp/ad;)V

    return-object v0
.end method

.method final a(Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/format/b;
    .locals 8

    .prologue
    .line 1892
    .line 4864
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Ljava/util/Locale;)Lorg/threeten/bp/format/b;

    move-result-object v4

    .line 5224
    const-string v0, "resolverStyle"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5225
    iget-object v0, v4, Lorg/threeten/bp/format/b;->s:Lorg/threeten/bp/format/ac;

    invoke-static {v0, p1}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 5226
    :goto_0
    return-object v0

    .line 5228
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/b;

    iget-object v1, v4, Lorg/threeten/bp/format/b;->p:Lorg/threeten/bp/format/k;

    iget-object v2, v4, Lorg/threeten/bp/format/b;->q:Ljava/util/Locale;

    iget-object v3, v4, Lorg/threeten/bp/format/b;->r:Lorg/threeten/bp/format/ab;

    iget-object v5, v4, Lorg/threeten/bp/format/b;->t:Ljava/util/Set;

    iget-object v6, v4, Lorg/threeten/bp/format/b;->u:Lorg/threeten/bp/a/m;

    iget-object v7, v4, Lorg/threeten/bp/format/b;->v:Lorg/threeten/bp/ad;

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lorg/threeten/bp/format/b;-><init>(Lorg/threeten/bp/format/k;Ljava/util/Locale;Lorg/threeten/bp/format/ab;Lorg/threeten/bp/format/ac;Ljava/util/Set;Lorg/threeten/bp/a/m;Lorg/threeten/bp/ad;)V

    goto :goto_0
.end method

.method public final a()Lorg/threeten/bp/format/e;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lorg/threeten/bp/format/r;->a:Lorg/threeten/bp/format/r;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 233
    return-object p0
.end method

.method public final a(C)Lorg/threeten/bp/format/e;
    .locals 1

    .prologue
    .line 1153
    new-instance v0, Lorg/threeten/bp/format/j;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/j;-><init>(C)V

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 1154
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lorg/threeten/bp/format/e;
    .locals 2

    .prologue
    .line 1168
    const-string v0, "literal"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1171
    new-instance v0, Lorg/threeten/bp/format/j;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/j;-><init>(C)V

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 1176
    :cond_0
    :goto_0
    return-object p0

    .line 1173
    :cond_1
    new-instance v0, Lorg/threeten/bp/format/s;

    invoke-direct {v0, p1}, Lorg/threeten/bp/format/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lorg/threeten/bp/format/e;
    .locals 1

    .prologue
    .line 867
    new-instance v0, Lorg/threeten/bp/format/p;

    invoke-direct {v0, p2, p1}, Lorg/threeten/bp/format/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 868
    return-object p0
.end method

.method public final a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;
    .locals 1

    .prologue
    .line 1190
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1191
    invoke-virtual {p1}, Lorg/threeten/bp/format/b;->a()Lorg/threeten/bp/format/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 1192
    return-object p0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;
    .locals 3

    .prologue
    .line 402
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    if-lez p2, :cond_0

    const/16 v0, 0x13

    if-le p2, v0, :cond_1

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The width must be from 1 to 19 inclusive but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_1
    new-instance v0, Lorg/threeten/bp/format/o;

    sget-object v1, Lorg/threeten/bp/format/ad;->d:Lorg/threeten/bp/format/ad;

    invoke-direct {v0, p1, p2, p2, v1}, Lorg/threeten/bp/format/o;-><init>(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)V

    .line 407
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/o;)Lorg/threeten/bp/format/e;

    .line 408
    return-object p0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;II)Lorg/threeten/bp/format/e;
    .locals 1

    .prologue
    .line 641
    new-instance v0, Lorg/threeten/bp/format/m;

    invoke-direct {v0, p1, p2, p3}, Lorg/threeten/bp/format/m;-><init>(Lorg/threeten/bp/temporal/q;II)V

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 642
    return-object p0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)Lorg/threeten/bp/format/e;
    .locals 3

    .prologue
    const/16 v1, 0x13

    .line 442
    if-ne p2, p3, :cond_0

    sget-object v0, Lorg/threeten/bp/format/ad;->d:Lorg/threeten/bp/format/ad;

    if-ne p4, v0, :cond_0

    .line 443
    invoke-virtual {p0, p1, p3}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object p0

    .line 459
    :goto_0
    return-object p0

    .line 445
    :cond_0
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    const-string v0, "signStyle"

    invoke-static {p4, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    if-lez p2, :cond_1

    if-le p2, v1, :cond_2

    .line 448
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_2
    if-lez p3, :cond_3

    if-le p3, v1, :cond_4

    .line 451
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_4
    if-ge p3, p2, :cond_5

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The maximum width must exceed or equal the minimum width but "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_5
    new-instance v0, Lorg/threeten/bp/format/o;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/threeten/bp/format/o;-><init>(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)V

    .line 458
    invoke-direct {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/o;)Lorg/threeten/bp/format/e;

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;Ljava/util/Map;)Lorg/threeten/bp/format/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/q;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/threeten/bp/format/e;"
        }
    .end annotation

    .prologue
    .line 722
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 723
    const-string v0, "textLookup"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 724
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 725
    sget-object v1, Lorg/threeten/bp/format/ah;->a:Lorg/threeten/bp/format/ah;

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 726
    new-instance v1, Lorg/threeten/bp/format/ag;

    invoke-direct {v1, v0}, Lorg/threeten/bp/format/ag;-><init>(Ljava/util/Map;)V

    .line 727
    new-instance v0, Lorg/threeten/bp/format/g;

    invoke-direct {v0, p0, v1}, Lorg/threeten/bp/format/g;-><init>(Lorg/threeten/bp/format/e;Lorg/threeten/bp/format/ag;)V

    .line 737
    new-instance v1, Lorg/threeten/bp/format/t;

    sget-object v2, Lorg/threeten/bp/format/ah;->a:Lorg/threeten/bp/format/ah;

    invoke-direct {v1, p1, v2, v0}, Lorg/threeten/bp/format/t;-><init>(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/format/ah;Lorg/threeten/bp/format/aa;)V

    invoke-virtual {p0, v1}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 738
    return-object p0
.end method

.method public final b()Lorg/threeten/bp/format/e;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lorg/threeten/bp/format/r;->b:Lorg/threeten/bp/format/r;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 253
    return-object p0
.end method

.method public final c()Lorg/threeten/bp/format/e;
    .locals 1

    .prologue
    .line 824
    sget-object v0, Lorg/threeten/bp/format/p;->b:Lorg/threeten/bp/format/p;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 825
    return-object p0
.end method

.method public final d()Lorg/threeten/bp/format/e;
    .locals 3

    .prologue
    .line 960
    new-instance v0, Lorg/threeten/bp/format/u;

    sget-object v1, Lorg/threeten/bp/format/e;->b:Lorg/threeten/bp/temporal/z;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/u;-><init>(Lorg/threeten/bp/temporal/z;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 961
    return-object p0
.end method

.method public final e()Lorg/threeten/bp/format/e;
    .locals 2

    .prologue
    .line 1783
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    const/4 v1, -0x1

    iput v1, v0, Lorg/threeten/bp/format/e;->i:I

    .line 1784
    new-instance v0, Lorg/threeten/bp/format/e;

    iget-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/e;-><init>(Lorg/threeten/bp/format/e;)V

    iput-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    .line 1785
    return-object p0
.end method

.method public final f()Lorg/threeten/bp/format/e;
    .locals 3

    .prologue
    .line 1814
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v0, v0, Lorg/threeten/bp/format/e;->d:Lorg/threeten/bp/format/e;

    if-nez v0, :cond_0

    .line 1815
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1817
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v0, v0, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1818
    new-instance v0, Lorg/threeten/bp/format/k;

    iget-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v1, v1, Lorg/threeten/bp/format/e;->e:Ljava/util/List;

    iget-object v2, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-boolean v2, v2, Lorg/threeten/bp/format/e;->f:Z

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/k;-><init>(Ljava/util/List;Z)V

    .line 1819
    iget-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v1, v1, Lorg/threeten/bp/format/e;->d:Lorg/threeten/bp/format/e;

    iput-object v1, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    .line 1820
    invoke-virtual {p0, v0}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/l;)I

    .line 1824
    :goto_0
    return-object p0

    .line 1822
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    iget-object v0, v0, Lorg/threeten/bp/format/e;->d:Lorg/threeten/bp/format/e;

    iput-object v0, p0, Lorg/threeten/bp/format/e;->c:Lorg/threeten/bp/format/e;

    goto :goto_0
.end method
