.class final Lorg/threeten/bp/format/m;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# instance fields
.field private final a:Lorg/threeten/bp/temporal/q;

.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method constructor <init>(Lorg/threeten/bp/temporal/q;II)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v1, 0x1

    .line 2674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2675
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/threeten/bp/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2676
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 3170
    iget-wide v2, v0, Lorg/threeten/bp/temporal/ab;->a:J

    iget-wide v4, v0, Lorg/threeten/bp/temporal/ab;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Lorg/threeten/bp/temporal/ab;->c:J

    iget-wide v4, v0, Lorg/threeten/bp/temporal/ab;->d:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move v0, v1

    .line 2676
    :goto_0
    if-nez v0, :cond_1

    .line 2677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field must have a fixed set of values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2679
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v6, :cond_3

    .line 2680
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2682
    :cond_3
    if-lez p3, :cond_4

    if-le p3, v6, :cond_5

    .line 2683
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2685
    :cond_5
    if-ge p3, p2, :cond_6

    .line 2686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Maximum width must exceed or equal the minimum width but "

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

    .line 2689
    :cond_6
    iput-object p1, p0, Lorg/threeten/bp/format/m;->a:Lorg/threeten/bp/temporal/q;

    .line 2690
    iput p2, p0, Lorg/threeten/bp/format/m;->b:I

    .line 2691
    iput p3, p0, Lorg/threeten/bp/format/m;->c:I

    .line 2692
    iput-boolean v1, p0, Lorg/threeten/bp/format/m;->d:Z

    .line 2693
    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2727
    .line 5272
    iget-boolean v0, p1, Lorg/threeten/bp/format/w;->f:Z

    .line 2727
    if-eqz v0, :cond_1

    iget v0, p0, Lorg/threeten/bp/format/m;->b:I

    .line 6272
    :goto_0
    iget-boolean v2, p1, Lorg/threeten/bp/format/w;->f:Z

    .line 2728
    if-eqz v2, :cond_2

    iget v2, p0, Lorg/threeten/bp/format/m;->c:I

    .line 2729
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2730
    if-ne p3, v3, :cond_3

    .line 2732
    if-lez v0, :cond_0

    xor-int/lit8 p3, p3, -0x1

    .line 2762
    :cond_0
    :goto_2
    return p3

    :cond_1
    move v0, v1

    .line 2727
    goto :goto_0

    .line 2728
    :cond_2
    const/16 v2, 0x9

    goto :goto_1

    .line 2734
    :cond_3
    iget-boolean v4, p0, Lorg/threeten/bp/format/m;->d:Z

    if-eqz v4, :cond_9

    .line 2735
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 7161
    iget-object v5, p1, Lorg/threeten/bp/format/w;->b:Lorg/threeten/bp/format/ab;

    .line 7252
    iget-char v5, v5, Lorg/threeten/bp/format/ab;->e:C

    .line 2735
    if-eq v4, v5, :cond_4

    .line 2737
    if-lez v0, :cond_0

    xor-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 2739
    :cond_4
    add-int/lit8 v4, p3, 0x1

    .line 2741
    :goto_3
    add-int v6, v4, v0

    .line 2742
    if-le v6, v3, :cond_5

    .line 2743
    xor-int/lit8 p3, v4, -0x1

    goto :goto_2

    .line 2745
    :cond_5
    add-int v0, v4, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v5, v4

    move v2, v1

    .line 2748
    :goto_4
    if-ge v5, v3, :cond_7

    .line 2749
    add-int/lit8 v0, v5, 0x1

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 8161
    iget-object v7, p1, Lorg/threeten/bp/format/w;->b:Lorg/threeten/bp/format/ab;

    .line 2750
    invoke-virtual {v7, v5}, Lorg/threeten/bp/format/ab;->a(C)I

    move-result v5

    .line 2751
    if-gez v5, :cond_8

    .line 2752
    if-ge v0, v6, :cond_6

    .line 2753
    xor-int/lit8 p3, v4, -0x1

    goto :goto_2

    .line 2755
    :cond_6
    add-int/lit8 v5, v0, -0x1

    .line 2760
    :cond_7
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int v2, v5, v4

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 8809
    iget-object v2, p0, Lorg/threeten/bp/format/m;->a:Lorg/threeten/bp/temporal/q;

    invoke-interface {v2}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v2

    .line 9183
    iget-wide v6, v2, Lorg/threeten/bp/temporal/ab;->a:J

    .line 8810
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    .line 9219
    iget-wide v6, v2, Lorg/threeten/bp/temporal/ab;->d:J

    .line 8811
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v2, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 8812
    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 8813
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v2

    .line 2762
    iget-object v1, p0, Lorg/threeten/bp/format/m;->a:Lorg/threeten/bp/temporal/q;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result p3

    goto/16 :goto_2

    .line 2758
    :cond_8
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    move v5, v0

    .line 2759
    goto :goto_4

    :cond_9
    move v4, p3

    goto :goto_3
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2697
    iget-object v0, p0, Lorg/threeten/bp/format/m;->a:Lorg/threeten/bp/temporal/q;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/y;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v0

    .line 2698
    if-nez v0, :cond_0

    .line 2722
    :goto_0
    return v1

    .line 3230
    :cond_0
    iget-object v2, p1, Lorg/threeten/bp/format/y;->c:Lorg/threeten/bp/format/ab;

    .line 2702
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3782
    iget-object v0, p0, Lorg/threeten/bp/format/m;->a:Lorg/threeten/bp/temporal/q;

    invoke-interface {v0}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 3783
    iget-object v3, p0, Lorg/threeten/bp/format/m;->a:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v0, v4, v5, v3}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    .line 4183
    iget-wide v6, v0, Lorg/threeten/bp/temporal/ab;->a:J

    .line 3784
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    .line 4219
    iget-wide v6, v0, Lorg/threeten/bp/temporal/ab;->d:J

    .line 3785
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3786
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3787
    const/16 v4, 0x9

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v0, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3789
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-nez v3, :cond_2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 2703
    :goto_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    if-nez v3, :cond_3

    .line 2704
    iget v0, p0, Lorg/threeten/bp/format/m;->b:I

    if-lez v0, :cond_5

    .line 2705
    iget-boolean v0, p0, Lorg/threeten/bp/format/m;->d:Z

    if-eqz v0, :cond_1

    .line 4252
    iget-char v0, v2, Lorg/threeten/bp/format/ab;->e:C

    .line 2706
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    move v0, v1

    .line 2708
    :goto_2
    iget v1, p0, Lorg/threeten/bp/format/m;->b:I

    if-ge v0, v1, :cond_5

    .line 5164
    iget-char v1, v2, Lorg/threeten/bp/format/ab;->b:C

    .line 2709
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2708
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3789
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1

    .line 2713
    :cond_3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    iget v3, p0, Lorg/threeten/bp/format/m;->b:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lorg/threeten/bp/format/m;->c:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2714
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2715
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2716
    invoke-virtual {v2, v0}, Lorg/threeten/bp/format/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2717
    iget-boolean v1, p0, Lorg/threeten/bp/format/m;->d:Z

    if-eqz v1, :cond_4

    .line 5252
    iget-char v1, v2, Lorg/threeten/bp/format/ab;->e:C

    .line 2718
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2720
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2818
    iget-boolean v0, p0, Lorg/threeten/bp/format/m;->d:Z

    if-eqz v0, :cond_0

    const-string v0, ",DecimalPoint"

    .line 2819
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fraction("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/threeten/bp/format/m;->a:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/threeten/bp/format/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/threeten/bp/format/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2818
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
