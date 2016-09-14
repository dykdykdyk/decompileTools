.class public final Lorg/threeten/bp/format/t;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# instance fields
.field private final a:Lorg/threeten/bp/temporal/q;

.field private final b:Lorg/threeten/bp/format/ah;

.field private final c:Lorg/threeten/bp/format/aa;

.field private volatile d:Lorg/threeten/bp/format/o;


# direct methods
.method public constructor <init>(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/format/ah;Lorg/threeten/bp/format/aa;)V
    .locals 0

    .prologue
    .line 2844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2846
    iput-object p1, p0, Lorg/threeten/bp/format/t;->a:Lorg/threeten/bp/temporal/q;

    .line 2847
    iput-object p2, p0, Lorg/threeten/bp/format/t;->b:Lorg/threeten/bp/format/ah;

    .line 2848
    iput-object p3, p0, Lorg/threeten/bp/format/t;->c:Lorg/threeten/bp/format/aa;

    .line 2849
    return-void
.end method

.method private a()Lorg/threeten/bp/format/o;
    .locals 5

    .prologue
    .line 2893
    iget-object v0, p0, Lorg/threeten/bp/format/t;->d:Lorg/threeten/bp/format/o;

    if-nez v0, :cond_0

    .line 2894
    new-instance v0, Lorg/threeten/bp/format/o;

    iget-object v1, p0, Lorg/threeten/bp/format/t;->a:Lorg/threeten/bp/temporal/q;

    const/4 v2, 0x1

    const/16 v3, 0x13

    sget-object v4, Lorg/threeten/bp/format/ad;->a:Lorg/threeten/bp/format/ad;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/format/o;-><init>(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)V

    iput-object v0, p0, Lorg/threeten/bp/format/t;->d:Lorg/threeten/bp/format/o;

    .line 2896
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/t;->d:Lorg/threeten/bp/format/o;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 8

    .prologue
    .line 2867
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2868
    if-ltz p3, :cond_0

    if-le p3, v0, :cond_1

    .line 2869
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3272
    :cond_1
    iget-boolean v0, p1, Lorg/threeten/bp/format/w;->f:Z

    .line 2871
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/threeten/bp/format/t;->b:Lorg/threeten/bp/format/ah;

    .line 2872
    :goto_0
    iget-object v1, p0, Lorg/threeten/bp/format/t;->c:Lorg/threeten/bp/format/aa;

    iget-object v2, p0, Lorg/threeten/bp/format/t;->a:Lorg/threeten/bp/temporal/q;

    .line 4150
    iget-object v3, p1, Lorg/threeten/bp/format/w;->a:Ljava/util/Locale;

    .line 2872
    invoke-virtual {v1, v2, v0, v3}, Lorg/threeten/bp/format/aa;->a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/format/ah;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v7

    .line 2873
    if-eqz v7, :cond_5

    .line 2874
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2875
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    .line 2876
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2877
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2878
    iget-object v4, p0, Lorg/threeten/bp/format/t;->a:Lorg/threeten/bp/temporal/q;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, p3, v0

    move-object v0, p1

    move-object v1, v4

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result v0

    .line 2885
    :goto_1
    return v0

    .line 2871
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 4272
    :cond_4
    iget-boolean v0, p1, Lorg/threeten/bp/format/w;->f:Z

    .line 2881
    if-eqz v0, :cond_5

    .line 2882
    xor-int/lit8 v0, p3, -0x1

    goto :goto_1

    .line 2885
    :cond_5
    invoke-direct {p0}, Lorg/threeten/bp/format/t;->a()Lorg/threeten/bp/format/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/format/o;->a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_1
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 6

    .prologue
    .line 2853
    iget-object v0, p0, Lorg/threeten/bp/format/t;->a:Lorg/threeten/bp/temporal/q;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/y;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v2

    .line 2854
    if-nez v2, :cond_0

    .line 2855
    const/4 v0, 0x0

    .line 2862
    :goto_0
    return v0

    .line 2857
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/format/t;->c:Lorg/threeten/bp/format/aa;

    iget-object v1, p0, Lorg/threeten/bp/format/t;->a:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lorg/threeten/bp/format/t;->b:Lorg/threeten/bp/format/ah;

    .line 3219
    iget-object v5, p1, Lorg/threeten/bp/format/y;->b:Ljava/util/Locale;

    .line 2857
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/aa;->a(Lorg/threeten/bp/temporal/q;JLorg/threeten/bp/format/ah;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2858
    if-nez v0, :cond_1

    .line 2859
    invoke-direct {p0}, Lorg/threeten/bp/format/t;->a()Lorg/threeten/bp/format/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/format/o;->a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z

    move-result v0

    goto :goto_0

    .line 2861
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2901
    iget-object v0, p0, Lorg/threeten/bp/format/t;->b:Lorg/threeten/bp/format/ah;

    sget-object v1, Lorg/threeten/bp/format/ah;->a:Lorg/threeten/bp/format/ah;

    if-ne v0, v1, :cond_0

    .line 2902
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/format/t;->a:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2904
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/format/t;->a:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/t;->b:Lorg/threeten/bp/format/ah;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
