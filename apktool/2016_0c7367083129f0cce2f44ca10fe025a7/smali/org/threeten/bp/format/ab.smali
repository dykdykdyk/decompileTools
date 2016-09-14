.class public final Lorg/threeten/bp/format/ab;
.super Ljava/lang/Object;
.source "DecimalStyle.java"


# static fields
.field public static final a:Lorg/threeten/bp/format/ab;

.field private static final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/threeten/bp/format/ab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:C

.field final c:C

.field final d:C

.field final e:C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lorg/threeten/bp/format/ab;

    invoke-direct {v0}, Lorg/threeten/bp/format/ab;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/ab;->a:Lorg/threeten/bp/format/ab;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/format/ab;->f:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/16 v0, 0x30

    iput-char v0, p0, Lorg/threeten/bp/format/ab;->b:C

    .line 149
    const/16 v0, 0x2b

    iput-char v0, p0, Lorg/threeten/bp/format/ab;->c:C

    .line 150
    const/16 v0, 0x2d

    iput-char v0, p0, Lorg/threeten/bp/format/ab;->d:C

    .line 151
    const/16 v0, 0x2e

    iput-char v0, p0, Lorg/threeten/bp/format/ab;->e:C

    .line 152
    return-void
.end method


# virtual methods
.method final a(C)I
    .locals 2

    .prologue
    .line 279
    iget-char v0, p0, Lorg/threeten/bp/format/ab;->b:C

    sub-int v0, p1, v0

    .line 280
    if-ltz v0, :cond_0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 290
    iget-char v0, p0, Lorg/threeten/bp/format/ab;->b:C

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 298
    :goto_0
    return-object p1

    .line 293
    :cond_0
    iget-char v0, p0, Lorg/threeten/bp/format/ab;->b:C

    add-int/lit8 v1, v0, -0x30

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 295
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 296
    aget-char v3, v2, v0

    add-int/2addr v3, v1

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    if-ne p0, p1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/format/ab;

    if-eqz v2, :cond_3

    .line 314
    check-cast p1, Lorg/threeten/bp/format/ab;

    .line 315
    iget-char v2, p0, Lorg/threeten/bp/format/ab;->b:C

    iget-char v3, p1, Lorg/threeten/bp/format/ab;->b:C

    if-ne v2, v3, :cond_2

    iget-char v2, p0, Lorg/threeten/bp/format/ab;->c:C

    iget-char v3, p1, Lorg/threeten/bp/format/ab;->c:C

    if-ne v2, v3, :cond_2

    iget-char v2, p0, Lorg/threeten/bp/format/ab;->d:C

    iget-char v3, p1, Lorg/threeten/bp/format/ab;->d:C

    if-ne v2, v3, :cond_2

    iget-char v2, p0, Lorg/threeten/bp/format/ab;->e:C

    iget-char v3, p1, Lorg/threeten/bp/format/ab;->e:C

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 328
    iget-char v0, p0, Lorg/threeten/bp/format/ab;->b:C

    iget-char v1, p0, Lorg/threeten/bp/format/ab;->c:C

    add-int/2addr v0, v1

    iget-char v1, p0, Lorg/threeten/bp/format/ab;->d:C

    add-int/2addr v0, v1

    iget-char v1, p0, Lorg/threeten/bp/format/ab;->e:C

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecimalStyle["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lorg/threeten/bp/format/ab;->b:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/threeten/bp/format/ab;->c:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/threeten/bp/format/ab;->d:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/threeten/bp/format/ab;->e:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
