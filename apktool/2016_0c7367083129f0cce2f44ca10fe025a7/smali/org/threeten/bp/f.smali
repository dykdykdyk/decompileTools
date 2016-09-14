.class public final Lorg/threeten/bp/f;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/f;",
        ">;",
        "Lorg/threeten/bp/temporal/p;"
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/f;

.field private static final c:Ljava/math/BigInteger;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final b:J

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 99
    new-instance v0, Lorg/threeten/bp/f;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/threeten/bp/f;-><init>(JI)V

    sput-object v0, Lorg/threeten/bp/f;->a:Lorg/threeten/bp/f;

    .line 115
    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/f;->c:Ljava/math/BigInteger;

    .line 119
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/f;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-wide p1, p0, Lorg/threeten/bp/f;->b:J

    .line 489
    iput p3, p0, Lorg/threeten/bp/f;->e:I

    .line 490
    return-void
.end method

.method public static a()Lorg/threeten/bp/f;
    .locals 6

    .prologue
    const-wide/32 v4, 0x3b9ac9ff

    .line 213
    const-wide v0, 0x7fffffffffffffffL

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->b(JJ)J

    move-result-wide v0

    .line 214
    const v2, 0x3b9aca00

    invoke-static {v4, v5, v2}, Lorg/threeten/bp/b/c;->b(JI)I

    move-result v2

    .line 215
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/f;->a(JI)Lorg/threeten/bp/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Lorg/threeten/bp/f;
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/f;->a(JI)Lorg/threeten/bp/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(JI)Lorg/threeten/bp/f;
    .locals 4

    .prologue
    .line 474
    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 475
    sget-object v0, Lorg/threeten/bp/f;->a:Lorg/threeten/bp/f;

    .line 477
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/threeten/bp/f;

    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/f;-><init>(JI)V

    goto :goto_0
.end method

.method public static b(J)Lorg/threeten/bp/f;
    .locals 6

    .prologue
    const-wide/32 v2, 0x3b9aca00

    .line 246
    div-long v0, p0, v2

    .line 247
    rem-long v2, p0, v2

    long-to-int v2, v2

    .line 248
    if-gez v2, :cond_0

    .line 249
    const v3, 0x3b9aca00

    add-int/2addr v2, v3

    .line 250
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 252
    :cond_0
    invoke-static {v0, v1, v2}, Lorg/threeten/bp/f;->a(JI)Lorg/threeten/bp/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 1000
    iget-wide v0, p0, Lorg/threeten/bp/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1001
    iget-wide v0, p0, Lorg/threeten/bp/f;->b:J

    sget-object v2, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object p1

    .line 1003
    :cond_0
    iget v0, p0, Lorg/threeten/bp/f;->e:I

    if-eqz v0, :cond_1

    .line 1004
    iget v0, p0, Lorg/threeten/bp/f;->e:I

    int-to-long v0, v0

    sget-object v2, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object p1

    .line 1006
    :cond_1
    return-object p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 93
    check-cast p1, Lorg/threeten/bp/f;

    .line 2134
    iget-wide v0, p0, Lorg/threeten/bp/f;->b:J

    iget-wide v2, p1, Lorg/threeten/bp/f;->b:J

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 2135
    if-eqz v0, :cond_0

    .line 2136
    :goto_0
    return v0

    .line 2138
    :cond_0
    iget v0, p0, Lorg/threeten/bp/f;->e:I

    iget v1, p1, Lorg/threeten/bp/f;->e:I

    sub-int/2addr v0, v1

    .line 93
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1152
    if-ne p0, p1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v0

    .line 1155
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/f;

    if-eqz v2, :cond_3

    .line 1156
    check-cast p1, Lorg/threeten/bp/f;

    .line 1157
    iget-wide v2, p0, Lorg/threeten/bp/f;->b:J

    iget-wide v4, p1, Lorg/threeten/bp/f;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lorg/threeten/bp/f;->e:I

    iget v3, p1, Lorg/threeten/bp/f;->e:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1160
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 1170
    iget-wide v0, p0, Lorg/threeten/bp/f;->b:J

    iget-wide v2, p0, Lorg/threeten/bp/f;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/threeten/bp/f;->e:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v6, 0x3c

    .line 1198
    sget-object v0, Lorg/threeten/bp/f;->a:Lorg/threeten/bp/f;

    if-ne p0, v0, :cond_0

    .line 1199
    const-string v0, "PT0S"

    .line 1237
    :goto_0
    return-object v0

    .line 1201
    :cond_0
    iget-wide v0, p0, Lorg/threeten/bp/f;->b:J

    div-long/2addr v0, v4

    .line 1202
    iget-wide v2, p0, Lorg/threeten/bp/f;->b:J

    rem-long/2addr v2, v4

    div-long/2addr v2, v6

    long-to-int v2, v2

    .line 1203
    iget-wide v4, p0, Lorg/threeten/bp/f;->b:J

    rem-long/2addr v4, v6

    long-to-int v3, v4

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1205
    const-string v5, "PT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_1

    .line 1207
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    :cond_1
    if-eqz v2, :cond_2

    .line 1210
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1212
    :cond_2
    if-nez v3, :cond_3

    iget v0, p0, Lorg/threeten/bp/f;->e:I

    if-nez v0, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    .line 1213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1215
    :cond_3
    if-gez v3, :cond_5

    iget v0, p0, Lorg/threeten/bp/f;->e:I

    if-lez v0, :cond_5

    .line 1216
    const/4 v0, -0x1

    if-ne v3, v0, :cond_4

    .line 1217
    const-string v0, "-0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :goto_1
    iget v0, p0, Lorg/threeten/bp/f;->e:I

    if-lez v0, :cond_8

    .line 1225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1226
    if-gez v3, :cond_6

    .line 1227
    const v1, 0x77359400

    iget v2, p0, Lorg/threeten/bp/f;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1231
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_7

    .line 1232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 1219
    :cond_4
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1222
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1229
    :cond_6
    iget v1, p0, Lorg/threeten/bp/f;->e:I

    const v2, 0x3b9aca00

    add-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1234
    :cond_7
    const/16 v1, 0x2e

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1236
    :cond_8
    const/16 v0, 0x53

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
