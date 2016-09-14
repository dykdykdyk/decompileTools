.class final Lorg/threeten/bp/x;
.super Ljava/lang/Object;
.source "OffsetDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/threeten/bp/v;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 136
    check-cast p1, Lorg/threeten/bp/v;

    check-cast p2, Lorg/threeten/bp/v;

    .line 1139
    invoke-virtual {p1}, Lorg/threeten/bp/v;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/v;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 1140
    if-nez v0, :cond_0

    .line 1734
    iget-object v0, p1, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 1750
    iget-object v0, v0, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 2677
    iget v0, v0, Lorg/threeten/bp/p;->h:I

    .line 1141
    int-to-long v0, v0

    .line 2734
    iget-object v2, p2, Lorg/threeten/bp/v;->d:Lorg/threeten/bp/m;

    .line 2750
    iget-object v2, v2, Lorg/threeten/bp/m;->e:Lorg/threeten/bp/p;

    .line 3677
    iget v2, v2, Lorg/threeten/bp/p;->h:I

    .line 1141
    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 136
    :cond_0
    return v0
.end method
