.class public final Lorg/threeten/bp/af;
.super Lorg/threeten/bp/ad;
.source "ZoneOffset.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Lorg/threeten/bp/temporal/l;
.implements Lorg/threeten/bp/temporal/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/ad;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/af;",
        ">;",
        "Lorg/threeten/bp/temporal/l;",
        "Lorg/threeten/bp/temporal/m;"
    }
.end annotation


# static fields
.field public static final c:Lorg/threeten/bp/temporal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/z",
            "<",
            "Lorg/threeten/bp/af;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lorg/threeten/bp/af;

.field public static final e:Lorg/threeten/bp/af;

.field public static final f:Lorg/threeten/bp/af;

.field private static final i:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/threeten/bp/af;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/af;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:I

.field final transient h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/high16 v1, 0x3f400000    # 0.75f

    .line 96
    new-instance v0, Lorg/threeten/bp/ag;

    invoke-direct {v0}, Lorg/threeten/bp/ag;-><init>()V

    sput-object v0, Lorg/threeten/bp/af;->c:Lorg/threeten/bp/temporal/z;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/af;->i:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/af;->j:Ljava/util/concurrent/ConcurrentMap;

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    .line 136
    const v0, -0xfd20

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/af;->e:Lorg/threeten/bp/af;

    .line 140
    const v0, 0xfd20

    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/af;->f:Lorg/threeten/bp/af;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 414
    invoke-direct {p0}, Lorg/threeten/bp/ad;-><init>()V

    .line 415
    iput p1, p0, Lorg/threeten/bp/af;->g:I

    .line 2420
    if-nez p1, :cond_0

    .line 2421
    const-string v0, "Z"

    .line 416
    :goto_0
    iput-object v0, p0, Lorg/threeten/bp/af;->h:Ljava/lang/String;

    .line 417
    return-void

    .line 2423
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2425
    div-int/lit16 v3, v1, 0xe10

    .line 2426
    div-int/lit8 v0, v1, 0x3c

    rem-int/lit8 v4, v0, 0x3c

    .line 2427
    if-gez p1, :cond_2

    const-string v0, "-"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v3, v6, :cond_3

    const-string v0, "0"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v4, v6, :cond_4

    const-string v0, ":0"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2430
    rem-int/lit8 v1, v1, 0x3c

    .line 2431
    if-eqz v1, :cond_1

    .line 2432
    if-ge v1, v6, :cond_5

    const-string v0, ":0"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2434
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2427
    :cond_2
    const-string v0, "+"

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, ":"

    goto :goto_3

    .line 2432
    :cond_5
    const-string v0, ":"

    goto :goto_4
.end method

.method private static a(Ljava/lang/CharSequence;IZ)I
    .locals 4

    .prologue
    const/16 v3, 0x39

    const/16 v2, 0x30

    .line 243
    if-eqz p2, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 244
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 247
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 248
    if-lt v0, v2, :cond_1

    if-gt v0, v3, :cond_1

    if-lt v1, v2, :cond_1

    if-le v1, v3, :cond_2

    .line 249
    :cond_1
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(I)Lorg/threeten/bp/af;
    .locals 3

    .prologue
    .line 389
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xfd20

    if-le v0, v1, :cond_0

    .line 390
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    rem-int/lit16 v0, p0, 0x384

    if-nez v0, :cond_2

    .line 393
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 394
    sget-object v0, Lorg/threeten/bp/af;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    .line 395
    if-nez v0, :cond_1

    .line 396
    new-instance v0, Lorg/threeten/bp/af;

    invoke-direct {v0, p0}, Lorg/threeten/bp/af;-><init>(I)V

    .line 397
    sget-object v2, Lorg/threeten/bp/af;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lorg/threeten/bp/af;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    .line 399
    sget-object v1, Lorg/threeten/bp/af;->j:Ljava/util/concurrent/ConcurrentMap;

    .line 1467
    iget-object v2, v0, Lorg/threeten/bp/af;->h:Ljava/lang/String;

    .line 399
    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/threeten/bp/af;

    invoke-direct {v0, p0}, Lorg/threeten/bp/af;-><init>(I)V

    goto :goto_0
.end method

.method private static a(III)Lorg/threeten/bp/af;
    .locals 3

    .prologue
    const/16 v2, 0x3b

    const/16 v1, 0x12

    .line 297
    .line 1338
    const/16 v0, -0x12

    if-lt p0, v0, :cond_0

    if-le p0, v1, :cond_1

    .line 1339
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zone offset hours not in valid range: value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range -18 to 18"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_1
    if-lez p0, :cond_3

    .line 1343
    if-ltz p1, :cond_2

    if-gez p2, :cond_8

    .line 1344
    :cond_2
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1346
    :cond_3
    if-gez p0, :cond_5

    .line 1347
    if-gtz p1, :cond_4

    if-lez p2, :cond_8

    .line 1348
    :cond_4
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1350
    :cond_5
    if-lez p1, :cond_6

    if-ltz p2, :cond_7

    :cond_6
    if-gez p1, :cond_8

    if-lez p2, :cond_8

    .line 1351
    :cond_7
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1353
    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_9

    .line 1354
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zone offset minutes not in valid range: abs(value) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range 0 to 59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_9
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_a

    .line 1358
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Zone offset seconds not in valid range: abs(value) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range 0 to 59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1361
    :cond_a
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_c

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_b

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_c

    .line 1362
    :cond_b
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1375
    :cond_c
    mul-int/lit16 v0, p0, 0xe10

    mul-int/lit8 v1, p1, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 299
    invoke-static {v0}, Lorg/threeten/bp/af;->a(I)Lorg/threeten/bp/af;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/threeten/bp/af;
    .locals 8

    .prologue
    const/16 v7, 0x2d

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 183
    const-string v0, "offsetId"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/threeten/bp/af;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    .line 186
    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 221
    :pswitch_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ID for ZoneOffset, invalid format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    :pswitch_2
    invoke-static {p0, v4, v1}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    move v2, v1

    move v3, v0

    move v0, v1

    .line 223
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 224
    const/16 v4, 0x2b

    if-eq v1, v4, :cond_1

    if-eq v1, v7, :cond_1

    .line 225
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_3
    invoke-static {p0, v4, v1}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 202
    invoke-static {p0, v5, v1}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    move v3, v2

    move v2, v0

    move v0, v1

    .line 204
    goto :goto_1

    .line 206
    :pswitch_4
    invoke-static {p0, v4, v1}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 207
    invoke-static {p0, v6, v4}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    move v3, v2

    move v2, v0

    move v0, v1

    .line 209
    goto :goto_1

    .line 211
    :pswitch_5
    invoke-static {p0, v4, v1}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v3

    .line 212
    invoke-static {p0, v5, v1}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 213
    const/4 v0, 0x5

    invoke-static {p0, v0, v1}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    goto :goto_1

    .line 216
    :pswitch_6
    invoke-static {p0, v4, v1}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v3

    .line 217
    invoke-static {p0, v6, v4}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 218
    const/4 v0, 0x7

    invoke-static {p0, v0, v4}, Lorg/threeten/bp/af;->a(Ljava/lang/CharSequence;IZ)I

    move-result v0

    goto :goto_1

    .line 227
    :cond_1
    if-ne v1, v7, :cond_2

    .line 228
    neg-int v1, v3

    neg-int v2, v2

    neg-int v0, v0

    invoke-static {v1, v2, v0}, Lorg/threeten/bp/af;->a(III)Lorg/threeten/bp/af;

    move-result-object v0

    goto/16 :goto_0

    .line 230
    :cond_2
    invoke-static {v3, v2, v0}, Lorg/threeten/bp/af;->a(III)Lorg/threeten/bp/af;

    move-result-object v0

    goto/16 :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/af;
    .locals 3

    .prologue
    .line 320
    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/af;

    .line 321
    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to obtain ZoneOffset from TemporalAccessor: "

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

    .line 325
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/af;)I
    .locals 2

    .prologue
    .line 682
    iget v0, p1, Lorg/threeten/bp/af;->g:I

    iget v1, p0, Lorg/threeten/bp/af;->g:I

    sub-int/2addr v0, v1

    return v0
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
    .line 628
    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-object p0

    .line 630
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 632
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 634
    :cond_3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 663
    sget-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    iget v1, p0, Lorg/threeten/bp/af;->g:I

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

    .line 505
    instance-of v2, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v2, :cond_2

    .line 506
    sget-object v2, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    if-ne p1, v2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 506
    goto :goto_0

    .line 508
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/threeten/bp/af;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 3

    .prologue
    .line 535
    sget-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 536
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 540
    :goto_0
    return-object v0

    .line 537
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 538
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

    .line 540
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 4

    .prologue
    .line 567
    sget-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 568
    iget v0, p0, Lorg/threeten/bp/af;->g:I

    .line 572
    :goto_0
    return v0

    .line 569
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 570
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

    .line 572
    :cond_1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/af;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/af;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final c()Lorg/threeten/bp/zone/i;
    .locals 1

    .prologue
    .line 480
    .line 3103
    const-string v0, "offset"

    invoke-static {p0, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3104
    new-instance v0, Lorg/threeten/bp/zone/j;

    invoke-direct {v0, p0}, Lorg/threeten/bp/zone/j;-><init>(Lorg/threeten/bp/af;)V

    .line 480
    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 89
    check-cast p1, Lorg/threeten/bp/af;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/af;->a(Lorg/threeten/bp/af;)I

    move-result v0

    return v0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 3

    .prologue
    .line 598
    sget-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 599
    iget v0, p0, Lorg/threeten/bp/af;->g:I

    int-to-long v0, v0

    .line 603
    :goto_0
    return-wide v0

    .line 600
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 601
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 697
    if-ne p0, p1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 700
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/af;

    if-eqz v2, :cond_2

    .line 701
    iget v2, p0, Lorg/threeten/bp/af;->g:I

    check-cast p1, Lorg/threeten/bp/af;

    iget v3, p1, Lorg/threeten/bp/af;->g:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 703
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lorg/threeten/bp/af;->g:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lorg/threeten/bp/af;->h:Ljava/lang/String;

    return-object v0
.end method
