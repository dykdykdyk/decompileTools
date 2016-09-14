.class public final Lcom/google/zxing/b/a/ai;
.super Lcom/google/zxing/b/a/u;
.source "VINResultParser.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "[IOQ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/ai;->a:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "[A-Z0-9]{17}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/b/a/ai;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/b/a/u;-><init>()V

    return-void
.end method

.method private static d(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/ah;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/16 v11, 0x52

    const/16 v4, 0xa

    const/4 v2, 0x0

    const/16 v9, 0x41

    .line 36
    .line 1083
    iget-object v0, p0, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;

    .line 36
    sget-object v1, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;

    if-eq v0, v1, :cond_0

    move-object v0, v10

    .line 59
    :goto_0
    return-object v0

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/m;->a:Ljava/lang/String;

    .line 40
    sget-object v1, Lcom/google/zxing/b/a/ai;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v0, Lcom/google/zxing/b/a/ai;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v10

    .line 42
    goto :goto_0

    :cond_1
    move v5, v2

    move v6, v2

    .line 2065
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v5, v0, :cond_a

    .line 2066
    add-int/lit8 v0, v5, 0x1

    .line 2090
    if-lez v0, :cond_2

    const/4 v3, 0x7

    if-gt v0, v3, :cond_2

    .line 2091
    rsub-int/lit8 v0, v0, 0x9

    move v3, v0

    .line 2066
    :goto_2
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3074
    if-lt v0, v9, :cond_6

    const/16 v7, 0x49

    if-gt v0, v7, :cond_6

    .line 3075
    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0x1

    .line 2066
    :goto_3
    mul-int/2addr v0, v3

    add-int v3, v6, v0

    .line 2065
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v3

    goto :goto_1

    .line 2093
    :cond_2
    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v3, v4

    .line 2094
    goto :goto_2

    .line 2096
    :cond_3
    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    move v3, v2

    .line 2097
    goto :goto_2

    .line 2099
    :cond_4
    if-lt v0, v4, :cond_5

    const/16 v3, 0x11

    if-gt v0, v3, :cond_5

    .line 2100
    rsub-int/lit8 v0, v0, 0x13

    move v3, v0

    goto :goto_2

    .line 2102
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :catch_0
    move-exception v0

    move-object v0, v10

    goto :goto_0

    .line 3077
    :cond_6
    const/16 v7, 0x4a

    if-lt v0, v7, :cond_7

    if-gt v0, v11, :cond_7

    .line 3078
    add-int/lit8 v0, v0, -0x4a

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3080
    :cond_7
    const/16 v7, 0x53

    if-lt v0, v7, :cond_8

    const/16 v7, 0x5a

    if-gt v0, v7, :cond_8

    .line 3081
    add-int/lit8 v0, v0, -0x53

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 3083
    :cond_8
    const/16 v7, 0x30

    if-lt v0, v7, :cond_9

    const/16 v7, 0x39

    if-gt v0, v7, :cond_9

    .line 3084
    add-int/lit8 v0, v0, -0x30

    goto :goto_3

    .line 3086
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2068
    :cond_a
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2069
    rem-int/lit8 v0, v6, 0xb

    .line 3106
    if-ge v0, v4, :cond_b

    .line 3107
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 2070
    :goto_4
    if-ne v3, v0, :cond_d

    const/4 v0, 0x1

    .line 45
    :goto_5
    if-nez v0, :cond_e

    move-object v0, v10

    .line 46
    goto/16 :goto_0

    .line 3109
    :cond_b
    if-ne v0, v4, :cond_c

    .line 3110
    const/16 v0, 0x58

    goto :goto_4

    .line 3112
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    move v0, v2

    .line 2070
    goto :goto_5

    .line 48
    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v0, Lcom/google/zxing/b/a/ah;

    const/4 v3, 0x3

    const/16 v4, 0x9

    .line 51
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v5, 0x11

    .line 52
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3141
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 3142
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 3143
    sparse-switch v5, :sswitch_data_0

    :cond_f
    move-object v5, v10

    .line 53
    :goto_6
    const/4 v6, 0x3

    const/16 v7, 0x8

    .line 54
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    .line 55
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 4116
    const/16 v8, 0x45

    if-lt v7, v8, :cond_15

    const/16 v8, 0x48

    if-gt v7, v8, :cond_15

    .line 4117
    add-int/lit8 v7, v7, -0x45

    add-int/lit16 v7, v7, 0x7c0

    .line 55
    :goto_7
    const/16 v8, 0xa

    .line 56
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xb

    .line 57
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/b/a/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V

    goto/16 :goto_0

    .line 3147
    :sswitch_0
    const-string v5, "US"

    goto :goto_6

    .line 3149
    :sswitch_1
    const-string v5, "CA"

    goto :goto_6

    .line 3151
    :sswitch_2
    if-lt v6, v9, :cond_f

    const/16 v5, 0x57

    if-gt v6, v5, :cond_f

    .line 3152
    const-string v5, "MX"

    goto :goto_6

    .line 3156
    :sswitch_3
    if-lt v6, v9, :cond_10

    const/16 v5, 0x45

    if-le v6, v5, :cond_11

    :cond_10
    const/16 v5, 0x33

    if-lt v6, v5, :cond_f

    const/16 v5, 0x39

    if-gt v6, v5, :cond_f

    .line 3157
    :cond_11
    const-string v5, "BR"

    goto :goto_6

    .line 3161
    :sswitch_4
    if-lt v6, v9, :cond_f

    const/16 v5, 0x54

    if-gt v6, v5, :cond_f

    .line 3162
    const-string v5, "JP"

    goto :goto_6

    .line 3166
    :sswitch_5
    const/16 v5, 0x4c

    if-lt v6, v5, :cond_f

    if-gt v6, v11, :cond_f

    .line 3167
    const-string v5, "KO"

    goto :goto_6

    .line 3171
    :sswitch_6
    const-string v5, "CN"

    goto :goto_6

    .line 3173
    :sswitch_7
    if-lt v6, v9, :cond_f

    const/16 v5, 0x45

    if-gt v6, v5, :cond_f

    .line 3174
    const-string v5, "IN"

    goto :goto_6

    .line 3178
    :sswitch_8
    if-lt v6, v9, :cond_12

    const/16 v5, 0x4d

    if-gt v6, v5, :cond_12

    .line 3179
    const-string v5, "UK"

    goto :goto_6

    .line 3181
    :cond_12
    const/16 v5, 0x4e

    if-lt v6, v5, :cond_f

    const/16 v5, 0x54

    if-gt v6, v5, :cond_f

    .line 3182
    const-string v5, "DE"

    goto :goto_6

    .line 3186
    :sswitch_9
    const/16 v5, 0x46

    if-lt v6, v5, :cond_13

    if-gt v6, v11, :cond_13

    .line 3187
    const-string v5, "FR"

    goto/16 :goto_6

    .line 3189
    :cond_13
    const/16 v5, 0x53

    if-lt v6, v5, :cond_f

    const/16 v5, 0x57

    if-gt v6, v5, :cond_f

    .line 3190
    const-string v5, "ES"

    goto/16 :goto_6

    .line 3194
    :sswitch_a
    const-string v5, "DE"

    goto/16 :goto_6

    .line 3196
    :sswitch_b
    const/16 v5, 0x30

    if-eq v6, v5, :cond_14

    const/16 v5, 0x33

    if-lt v6, v5, :cond_f

    const/16 v5, 0x39

    if-gt v6, v5, :cond_f

    .line 3197
    :cond_14
    const-string v5, "RU"

    goto/16 :goto_6

    .line 3201
    :sswitch_c
    if-lt v6, v9, :cond_f

    if-gt v6, v11, :cond_f

    .line 3202
    const-string v5, "IT"

    goto/16 :goto_6

    .line 4119
    :cond_15
    const/16 v8, 0x4a

    if-lt v7, v8, :cond_16

    const/16 v8, 0x4e

    if-gt v7, v8, :cond_16

    .line 4120
    add-int/lit8 v7, v7, -0x4a

    add-int/lit16 v7, v7, 0x7c4

    goto/16 :goto_7

    .line 4122
    :cond_16
    const/16 v8, 0x50

    if-ne v7, v8, :cond_17

    .line 4123
    const/16 v7, 0x7c9

    goto/16 :goto_7

    .line 4125
    :cond_17
    if-lt v7, v11, :cond_18

    const/16 v8, 0x54

    if-gt v7, v8, :cond_18

    .line 4126
    add-int/lit8 v7, v7, -0x52

    add-int/lit16 v7, v7, 0x7ca

    goto/16 :goto_7

    .line 4128
    :cond_18
    const/16 v8, 0x56

    if-lt v7, v8, :cond_19

    const/16 v8, 0x59

    if-gt v7, v8, :cond_19

    .line 4129
    add-int/lit8 v7, v7, -0x56

    add-int/lit16 v7, v7, 0x7cd

    goto/16 :goto_7

    .line 4131
    :cond_19
    const/16 v8, 0x31

    if-lt v7, v8, :cond_1a

    const/16 v8, 0x39

    if-gt v7, v8, :cond_1a

    .line 4132
    add-int/lit8 v7, v7, -0x31

    add-int/lit16 v7, v7, 0x7d1

    goto/16 :goto_7

    .line 4134
    :cond_1a
    if-lt v7, v9, :cond_1b

    const/16 v8, 0x44

    if-gt v7, v8, :cond_1b

    .line 4135
    add-int/lit8 v7, v7, -0x41

    add-int/lit16 v7, v7, 0x7da

    goto/16 :goto_7

    .line 4137
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3143
    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x39 -> :sswitch_3
        0x4a -> :sswitch_4
        0x4b -> :sswitch_5
        0x4c -> :sswitch_6
        0x4d -> :sswitch_7
        0x53 -> :sswitch_8
        0x56 -> :sswitch_9
        0x57 -> :sswitch_a
        0x58 -> :sswitch_b
        0x5a -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Lcom/google/zxing/b/a/ai;->d(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/ah;

    move-result-object v0

    return-object v0
.end method
