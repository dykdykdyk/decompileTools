.class public final Lorg/threeten/bp/z;
.super Lorg/threeten/bp/a/g;
.source "Period.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lorg/threeten/bp/z;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/threeten/bp/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/threeten/bp/z;-><init>(I)V

    sput-object v0, Lorg/threeten/bp/z;->a:Lorg/threeten/bp/z;

    .line 106
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/z;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-direct {p0}, Lorg/threeten/bp/a/g;-><init>()V

    .line 362
    iput v0, p0, Lorg/threeten/bp/z;->c:I

    .line 363
    iput v0, p0, Lorg/threeten/bp/z;->d:I

    .line 364
    iput p1, p0, Lorg/threeten/bp/z;->e:I

    .line 365
    return-void
.end method

.method public static a(I)Lorg/threeten/bp/z;
    .locals 1

    .prologue
    .line 1348
    or-int/lit8 v0, p0, 0x0

    if-nez v0, :cond_0

    .line 1349
    sget-object v0, Lorg/threeten/bp/z;->a:Lorg/threeten/bp/z;

    :goto_0
    return-object v0

    .line 1351
    :cond_0
    new-instance v0, Lorg/threeten/bp/z;

    invoke-direct {v0, p0}, Lorg/threeten/bp/z;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/aa;)J
    .locals 3

    .prologue
    .line 392
    sget-object v0, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    if-ne p1, v0, :cond_0

    .line 393
    iget v0, p0, Lorg/threeten/bp/z;->c:I

    int-to-long v0, v0

    .line 399
    :goto_0
    return-wide v0

    .line 395
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    if-ne p1, v0, :cond_1

    .line 396
    iget v0, p0, Lorg/threeten/bp/z;->d:I

    int-to-long v0, v0

    goto :goto_0

    .line 398
    :cond_1
    sget-object v0, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    if-ne p1, v0, :cond_2

    .line 399
    iget v0, p0, Lorg/threeten/bp/z;->e:I

    int-to-long v0, v0

    goto :goto_0

    .line 401
    :cond_2
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/temporal/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/threeten/bp/temporal/b;

    const/4 v1, 0x0

    sget-object v2, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 799
    const-string v0, "temporal"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 800
    iget v0, p0, Lorg/threeten/bp/z;->c:I

    if-eqz v0, :cond_3

    .line 801
    iget v0, p0, Lorg/threeten/bp/z;->d:I

    if-eqz v0, :cond_2

    .line 1767
    iget v0, p0, Lorg/threeten/bp/z;->c:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/threeten/bp/z;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 802
    sget-object v2, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object p1

    .line 809
    :cond_0
    :goto_0
    iget v0, p0, Lorg/threeten/bp/z;->e:I

    if-eqz v0, :cond_1

    .line 810
    iget v0, p0, Lorg/threeten/bp/z;->e:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object p1

    .line 812
    :cond_1
    return-object p1

    .line 804
    :cond_2
    iget v0, p0, Lorg/threeten/bp/z;->c:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object p1

    goto :goto_0

    .line 806
    :cond_3
    iget v0, p0, Lorg/threeten/bp/z;->d:I

    if-eqz v0, :cond_0

    .line 807
    iget v0, p0, Lorg/threeten/bp/z;->d:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object p1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lorg/threeten/bp/z;->a:Lorg/threeten/bp/z;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 879
    if-ne p0, p1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v0

    .line 882
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/z;

    if-eqz v2, :cond_3

    .line 883
    check-cast p1, Lorg/threeten/bp/z;

    .line 884
    iget v2, p0, Lorg/threeten/bp/z;->c:I

    iget v3, p1, Lorg/threeten/bp/z;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/threeten/bp/z;->d:I

    iget v3, p1, Lorg/threeten/bp/z;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/threeten/bp/z;->e:I

    iget v3, p1, Lorg/threeten/bp/z;->e:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 888
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 898
    iget v0, p0, Lorg/threeten/bp/z;->c:I

    iget v1, p0, Lorg/threeten/bp/z;->d:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/threeten/bp/z;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 912
    sget-object v0, Lorg/threeten/bp/z;->a:Lorg/threeten/bp/z;

    if-ne p0, v0, :cond_0

    .line 913
    const-string v0, "P0D"

    .line 926
    :goto_0
    return-object v0

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    iget v1, p0, Lorg/threeten/bp/z;->c:I

    if-eqz v1, :cond_1

    .line 918
    iget v1, p0, Lorg/threeten/bp/z;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    :cond_1
    iget v1, p0, Lorg/threeten/bp/z;->d:I

    if-eqz v1, :cond_2

    .line 921
    iget v1, p0, Lorg/threeten/bp/z;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    :cond_2
    iget v1, p0, Lorg/threeten/bp/z;->e:I

    if-eqz v1, :cond_3

    .line 924
    iget v1, p0, Lorg/threeten/bp/z;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 926
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
