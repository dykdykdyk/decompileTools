.class final Lorg/threeten/bp/format/n;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2922
    const/4 v0, -0x2

    iput v0, p0, Lorg/threeten/bp/format/n;->a:I

    .line 2923
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 15

    .prologue
    .line 3001
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/w;->a()Lorg/threeten/bp/format/w;

    move-result-object v5

    .line 3002
    iget v2, p0, Lorg/threeten/bp/format/n;->a:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 3003
    :goto_0
    iget v3, p0, Lorg/threeten/bp/format/n;->a:I

    if-gez v3, :cond_1

    const/16 v3, 0x9

    .line 3004
    :goto_1
    new-instance v4, Lorg/threeten/bp/format/e;

    invoke-direct {v4}, Lorg/threeten/bp/format/e;-><init>()V

    sget-object v6, Lorg/threeten/bp/format/b;->a:Lorg/threeten/bp/format/b;

    invoke-virtual {v4, v6}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/format/b;)Lorg/threeten/bp/format/e;

    move-result-object v4

    const/16 v6, 0x54

    invoke-virtual {v4, v6}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v4

    sget-object v6, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v4

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v4

    sget-object v6, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v4

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v4

    sget-object v6, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;I)Lorg/threeten/bp/format/e;

    move-result-object v4

    sget-object v6, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v4, v6, v2, v3}, Lorg/threeten/bp/format/e;->a(Lorg/threeten/bp/temporal/q;II)Lorg/threeten/bp/format/e;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/e;->a(C)Lorg/threeten/bp/format/e;

    move-result-object v2

    .line 7864
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/threeten/bp/format/e;->a(Ljava/util/Locale;)Lorg/threeten/bp/format/b;

    move-result-object v2

    .line 3004
    invoke-virtual {v2}, Lorg/threeten/bp/format/b;->a()Lorg/threeten/bp/format/k;

    move-result-object v2

    .line 3009
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v5, v0, v1}, Lorg/threeten/bp/format/k;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I

    move-result v9

    .line 3010
    if-gez v9, :cond_2

    move v2, v9

    .line 3043
    :goto_2
    return v2

    .line 3002
    :cond_0
    iget v2, p0, Lorg/threeten/bp/format/n;->a:I

    goto :goto_0

    .line 3003
    :cond_1
    iget v3, p0, Lorg/threeten/bp/format/n;->a:I

    goto :goto_1

    .line 3015
    :cond_2
    sget-object v2, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v5, v2}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 3016
    sget-object v2, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v5, v2}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    .line 3017
    sget-object v2, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v5, v2}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v4

    .line 3018
    sget-object v2, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v5, v2}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v10

    .line 3019
    sget-object v2, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v5, v2}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v6

    .line 3020
    sget-object v2, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v5, v2}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v2

    .line 3021
    sget-object v7, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v5, v7}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v5

    .line 3022
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v7

    .line 3023
    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v2

    move v8, v2

    .line 3024
    :goto_4
    long-to-int v2, v12

    rem-int/lit16 v2, v2, 0x2710

    .line 3025
    const/4 v5, 0x0

    .line 3026
    const/16 v11, 0x18

    if-ne v10, v11, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v8, :cond_5

    .line 3027
    const/4 v10, 0x0

    .line 3028
    const/4 v5, 0x1

    move v14, v5

    move v5, v10

    move v10, v14

    .line 3035
    :goto_5
    :try_start_0
    invoke-static/range {v2 .. v7}, Lorg/threeten/bp/m;->a(IIIIII)Lorg/threeten/bp/m;

    move-result-object v2

    int-to-long v4, v10

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/m;->a(J)Lorg/threeten/bp/m;

    move-result-object v2

    .line 3036
    sget-object v3, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    invoke-virtual {v2, v3}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/af;)J

    move-result-wide v2

    .line 3037
    const-wide/16 v4, 0x2710

    div-long v4, v12, v4

    const-wide v6, 0x497968bd80L

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/b/c;->d(JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-long/2addr v4, v2

    .line 3042
    sget-object v3, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    move-object/from16 v2, p1

    move/from16 v6, p3

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result v7

    .line 3043
    sget-object v3, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    int-to-long v4, v8

    move-object/from16 v2, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result v2

    goto/16 :goto_2

    .line 3022
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 3023
    :cond_4
    const/4 v2, 0x0

    move v8, v2

    goto :goto_4

    .line 3029
    :cond_5
    const/16 v11, 0x17

    if-ne v10, v11, :cond_6

    const/16 v11, 0x3b

    if-ne v6, v11, :cond_6

    const/16 v11, 0x3c

    if-ne v7, v11, :cond_6

    .line 8396
    invoke-virtual/range {p1 .. p1}, Lorg/threeten/bp/format/w;->b()Lorg/threeten/bp/format/x;

    move-result-object v7

    const/4 v11, 0x1

    iput-boolean v11, v7, Lorg/threeten/bp/format/x;->d:Z

    .line 3031
    const/16 v7, 0x3b

    move v14, v5

    move v5, v10

    move v10, v14

    goto :goto_5

    .line 3039
    :catch_0
    move-exception v2

    xor-int/lit8 v2, p3, -0x1

    goto/16 :goto_2

    :cond_6
    move v14, v5

    move v5, v10

    move v10, v14

    goto :goto_5
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 10

    .prologue
    .line 2928
    sget-object v0, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/y;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v1

    .line 2929
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3207
    iget-object v2, p1, Lorg/threeten/bp/format/y;->a:Lorg/threeten/bp/temporal/l;

    .line 2930
    sget-object v3, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v2, v3}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4207
    iget-object v0, p1, Lorg/threeten/bp/format/y;->a:Lorg/threeten/bp/temporal/l;

    .line 2931
    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-interface {v0, v2}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2933
    :cond_0
    if-nez v1, :cond_1

    .line 2934
    const/4 v0, 0x0

    .line 2995
    :goto_0
    return v0

    .line 2936
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2937
    sget-object v1, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/threeten/bp/temporal/a;->b(J)I

    move-result v2

    .line 2938
    const-wide v0, -0xe79747c00L

    cmp-long v0, v4, v0

    if-ltz v0, :cond_5

    .line 2940
    const-wide v0, 0x497968bd80L

    sub-long v0, v4, v0

    const-wide v4, 0xe79747c00L

    add-long/2addr v0, v4

    .line 2941
    const-wide v4, 0x497968bd80L

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 4323
    const-wide v6, 0x497968bd80L

    rem-long/2addr v0, v6

    const-wide v6, 0x497968bd80L

    add-long/2addr v0, v6

    const-wide v6, 0x497968bd80L

    rem-long/2addr v0, v6

    .line 2943
    const-wide v6, 0xe79747c00L

    sub-long/2addr v0, v6

    const/4 v3, 0x0

    sget-object v6, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    invoke-static {v0, v1, v3, v6}, Lorg/threeten/bp/m;->a(JILorg/threeten/bp/af;)Lorg/threeten/bp/m;

    move-result-object v0

    .line 2944
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 2945
    const/16 v1, 0x2b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2947
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4741
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 5668
    iget-byte v0, v0, Lorg/threeten/bp/p;->g:B

    .line 2948
    if-nez v0, :cond_3

    .line 2949
    const-string v0, ":00"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    :cond_3
    :goto_1
    iget v0, p0, Lorg/threeten/bp/format/n;->a:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    .line 2974
    if-eqz v2, :cond_4

    .line 2975
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2976
    const v0, 0xf4240

    rem-int v0, v2, v0

    if-nez v0, :cond_9

    .line 2977
    const v0, 0xf4240

    div-int v0, v2, v0

    add-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2994
    :cond_4
    :goto_2
    const/16 v0, 0x5a

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2995
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2953
    :cond_5
    const-wide v0, 0xe79747c00L

    add-long/2addr v0, v4

    .line 2954
    const-wide v4, 0x497968bd80L

    div-long v4, v0, v4

    .line 2955
    const-wide v6, 0x497968bd80L

    rem-long/2addr v0, v6

    .line 2956
    const-wide v6, 0xe79747c00L

    sub-long v6, v0, v6

    const/4 v3, 0x0

    sget-object v8, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    invoke-static {v6, v7, v3, v8}, Lorg/threeten/bp/m;->a(JILorg/threeten/bp/af;)Lorg/threeten/bp/m;

    move-result-object v3

    .line 2957
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 2958
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5741
    iget-object v7, v3, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 6668
    iget-byte v7, v7, Lorg/threeten/bp/p;->g:B

    .line 2959
    if-nez v7, :cond_6

    .line 2960
    const-string v7, ":00"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    .line 7645
    iget-object v3, v3, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 7650
    iget v3, v3, Lorg/threeten/bp/j;->d:I

    .line 2963
    const/16 v7, -0x2710

    if-ne v3, v7, :cond_7

    .line 2964
    add-int/lit8 v0, v6, 0x2

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v6, v0, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2965
    :cond_7
    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-nez v0, :cond_8

    .line 2966
    invoke-virtual {p2, v6, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2968
    :cond_8
    add-int/lit8 v0, v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {p2, v0, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 2978
    :cond_9
    rem-int/lit16 v0, v2, 0x3e8

    if-nez v0, :cond_a

    .line 2979
    div-int/lit16 v0, v2, 0x3e8

    const v1, 0xf4240

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2981
    :cond_a
    const v0, 0x3b9aca00

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2984
    :cond_b
    iget v0, p0, Lorg/threeten/bp/format/n;->a:I

    if-gtz v0, :cond_c

    iget v0, p0, Lorg/threeten/bp/format/n;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    if-lez v2, :cond_4

    .line 2985
    :cond_c
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2986
    const v1, 0x5f5e100

    .line 2987
    const/4 v0, 0x0

    :goto_3
    iget v3, p0, Lorg/threeten/bp/format/n;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_d

    if-gtz v2, :cond_e

    :cond_d
    iget v3, p0, Lorg/threeten/bp/format/n;->a:I

    if-ge v0, v3, :cond_4

    .line 2988
    :cond_e
    div-int v3, v2, v1

    .line 2989
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2990
    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    .line 2991
    div-int/lit8 v1, v1, 0xa

    .line 2987
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3048
    const-string v0, "Instant()"

    return-object v0
.end method
