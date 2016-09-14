.class final Lorg/threeten/bp/format/v;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# instance fields
.field final a:I

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Lorg/threeten/bp/format/v;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/format/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 3610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3599
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/v;->b:Ljava/util/Map;

    .line 3603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/format/v;->c:Ljava/util/Map;

    .line 3611
    iput p1, p0, Lorg/threeten/bp/format/v;->a:I

    .line 3612
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .prologue
    .line 3590
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3628
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3629
    iget v0, p0, Lorg/threeten/bp/format/v;->a:I

    if-ne v1, v0, :cond_1

    .line 3630
    iget-object v0, p0, Lorg/threeten/bp/format/v;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    iget-object v0, p0, Lorg/threeten/bp/format/v;->c:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    :cond_0
    return-void

    .line 3632
    :cond_1
    iget v0, p0, Lorg/threeten/bp/format/v;->a:I

    if-le v1, v0, :cond_0

    .line 3633
    const/4 v0, 0x0

    iget v2, p0, Lorg/threeten/bp/format/v;->a:I

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3634
    iget-object v0, p0, Lorg/threeten/bp/format/v;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/v;

    .line 3635
    if-nez v0, :cond_2

    .line 3636
    new-instance v0, Lorg/threeten/bp/format/v;

    invoke-direct {v0, v1}, Lorg/threeten/bp/format/v;-><init>(I)V

    .line 3637
    iget-object v1, p0, Lorg/threeten/bp/format/v;->b:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3638
    iget-object v1, p0, Lorg/threeten/bp/format/v;->c:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method
