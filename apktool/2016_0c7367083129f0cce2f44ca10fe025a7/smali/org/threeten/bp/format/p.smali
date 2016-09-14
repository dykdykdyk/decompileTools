.class final Lorg/threeten/bp/format/p;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:Lorg/threeten/bp/format/p;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3057
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "+HH"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "+HHmm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "+HH:mm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "+HHMM"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "+HH:MM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "+HHMMss"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "+HH:MM:ss"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "+HHMMSS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "+HH:MM:SS"

    aput-object v2, v0, v1

    sput-object v0, Lorg/threeten/bp/format/p;->a:[Ljava/lang/String;

    .line 3060
    new-instance v0, Lorg/threeten/bp/format/p;

    const-string v1, "Z"

    const-string v2, "+HH:MM:ss"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/threeten/bp/format/p;->b:Lorg/threeten/bp/format/p;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3072
    const-string v0, "noOffsetText"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3073
    const-string v0, "pattern"

    invoke-static {p2, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3074
    iput-object p1, p0, Lorg/threeten/bp/format/p;->c:Ljava/lang/String;

    .line 3075
    invoke-static {p2}, Lorg/threeten/bp/format/p;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/threeten/bp/format/p;->d:I

    .line 3076
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 3079
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/threeten/bp/format/p;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3080
    sget-object v1, Lorg/threeten/bp/format/p;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3081
    return v0

    .line 3079
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3084
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid zone offset pattern: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([IILjava/lang/CharSequence;Z)Z
    .locals 6

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v1, 0x0

    .line 3171
    iget v0, p0, Lorg/threeten/bp/format/p;->d:I

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    if-ge v0, p2, :cond_1

    move p4, v1

    .line 3195
    :cond_0
    :goto_0
    return p4

    .line 3174
    :cond_1
    aget v0, p1, v1

    .line 3175
    iget v2, p0, Lorg/threeten/bp/format/p;->d:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    if-le p2, v2, :cond_2

    .line 3176
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 3179
    add-int/lit8 v0, v0, 0x1

    .line 3181
    :cond_2
    add-int/lit8 v2, v0, 0x2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 3184
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3185
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3186
    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    if-lt v2, v4, :cond_0

    if-gt v2, v5, :cond_0

    .line 3189
    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 3190
    if-ltz v0, :cond_0

    const/16 v2, 0x3b

    if-gt v0, v2, :cond_0

    .line 3193
    aput v0, p1, p2

    .line 3194
    aput v3, p1, v1

    move p4, v1

    .line 3195
    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 10

    .prologue
    .line 3124
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3125
    iget-object v1, p0, Lorg/threeten/bp/format/p;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 3126
    if-nez v5, :cond_0

    .line 3127
    if-ne p3, v0, :cond_2

    .line 3128
    sget-object v1, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    const-wide/16 v2, 0x0

    move-object v0, p1

    move v4, p3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result v0

    .line 3158
    :goto_0
    return v0

    .line 3131
    :cond_0
    if-ne p3, v0, :cond_1

    .line 3132
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 3134
    :cond_1
    iget-object v3, p0, Lorg/threeten/bp/format/p;->c:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3135
    sget-object v1, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    const-wide/16 v2, 0x0

    add-int/2addr v5, p3

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result v0

    goto :goto_0

    .line 3140
    :cond_2
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3141
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_8

    .line 3143
    :cond_3
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    .line 3144
    :goto_1
    const/4 v1, 0x4

    new-array v4, v1, [I

    .line 3145
    const/4 v1, 0x0

    add-int/lit8 v2, p3, 0x1

    aput v2, v4, v1

    .line 3146
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v4, v1, p2, v2}, Lorg/threeten/bp/format/p;->a([IILjava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v2, 0x2

    iget v1, p0, Lorg/threeten/bp/format/p;->d:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_6

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v4, v2, p2, v1}, Lorg/threeten/bp/format/p;->a([IILjava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v4, v1, p2, v2}, Lorg/threeten/bp/format/p;->a([IILjava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_8

    .line 3150
    int-to-long v0, v0

    const/4 v2, 0x1

    aget v2, v4, v2

    int-to-long v2, v2

    const-wide/16 v6, 0xe10

    mul-long/2addr v2, v6

    const/4 v5, 0x2

    aget v5, v4, v5

    int-to-long v6, v5

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const/4 v5, 0x3

    aget v5, v4, v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    mul-long/2addr v2, v0

    .line 3151
    sget-object v1, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    const/4 v0, 0x0

    aget v5, v4, v0

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result v0

    goto :goto_0

    .line 3143
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 3146
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 3155
    :cond_8
    if-nez v5, :cond_9

    .line 3156
    sget-object v1, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    const-wide/16 v2, 0x0

    add-int/2addr v5, p3

    move-object v0, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result v0

    goto/16 :goto_0

    .line 3158
    :cond_9
    xor-int/lit8 v0, p3, -0x1

    goto/16 :goto_0
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 6

    .prologue
    .line 3089
    sget-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/y;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v0

    .line 3090
    if-nez v0, :cond_0

    .line 3091
    const/4 v0, 0x0

    .line 3119
    :goto_0
    return v0

    .line 3093
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/threeten/bp/b/c;->a(J)I

    move-result v0

    .line 3094
    if-nez v0, :cond_2

    .line 3095
    iget-object v0, p0, Lorg/threeten/bp/format/p;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3097
    :cond_2
    div-int/lit16 v1, v0, 0xe10

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3098
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3099
    rem-int/lit8 v3, v0, 0x3c

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 3102
    if-gez v0, :cond_5

    const-string v0, "-"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3104
    iget v0, p0, Lorg/threeten/bp/format/p;->d:I

    const/4 v5, 0x3

    if-ge v0, v5, :cond_3

    iget v0, p0, Lorg/threeten/bp/format/p;->d:I

    if-lez v0, :cond_8

    if-lez v2, :cond_8

    .line 3105
    :cond_3
    iget v0, p0, Lorg/threeten/bp/format/p;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    const-string v0, ":"

    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v5, v2, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v5, v2, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3107
    add-int/2addr v1, v2

    .line 3108
    iget v0, p0, Lorg/threeten/bp/format/p;->d:I

    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    iget v0, p0, Lorg/threeten/bp/format/p;->d:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_8

    if-lez v3, :cond_8

    .line 3109
    :cond_4
    iget v0, p0, Lorg/threeten/bp/format/p;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    const-string v0, ":"

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v2, v3, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v2, v3, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3111
    add-int v0, v1, v3

    .line 3114
    :goto_5
    if-nez v0, :cond_1

    .line 3115
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3116
    iget-object v0, p0, Lorg/threeten/bp/format/p;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3102
    :cond_5
    const-string v0, "+"

    goto :goto_2

    .line 3105
    :cond_6
    const-string v0, ""

    goto :goto_3

    .line 3109
    :cond_7
    const-string v0, ""

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3200
    iget-object v0, p0, Lorg/threeten/bp/format/p;->c:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/threeten/bp/format/p;->a:[Ljava/lang/String;

    iget v3, p0, Lorg/threeten/bp/format/p;->d:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
