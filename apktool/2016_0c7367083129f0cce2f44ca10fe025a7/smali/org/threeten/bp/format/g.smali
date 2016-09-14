.class final Lorg/threeten/bp/format/g;
.super Lorg/threeten/bp/format/aa;
.source "DateTimeFormatterBuilder.java"


# instance fields
.field final synthetic a:Lorg/threeten/bp/format/ag;

.field final synthetic b:Lorg/threeten/bp/format/e;


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/e;Lorg/threeten/bp/format/ag;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lorg/threeten/bp/format/g;->b:Lorg/threeten/bp/format/e;

    iput-object p2, p0, Lorg/threeten/bp/format/g;->a:Lorg/threeten/bp/format/ag;

    invoke-direct {p0}, Lorg/threeten/bp/format/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/q;JLorg/threeten/bp/format/ah;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lorg/threeten/bp/format/g;->a:Lorg/threeten/bp/format/ag;

    invoke-virtual {v0, p2, p3, p4}, Lorg/threeten/bp/format/ag;->a(JLorg/threeten/bp/format/ah;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;Lorg/threeten/bp/format/ah;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/q;",
            "Lorg/threeten/bp/format/ah;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lorg/threeten/bp/format/g;->a:Lorg/threeten/bp/format/ag;

    invoke-virtual {v0, p2}, Lorg/threeten/bp/format/ag;->a(Lorg/threeten/bp/format/ah;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
