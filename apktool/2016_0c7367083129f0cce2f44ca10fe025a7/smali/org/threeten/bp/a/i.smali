.class final Lorg/threeten/bp/a/i;
.super Ljava/lang/Object;
.source "ChronoZonedDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/threeten/bp/a/h",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 116
    check-cast p1, Lorg/threeten/bp/a/h;

    check-cast p2, Lorg/threeten/bp/a/h;

    .line 1119
    invoke-virtual {p1}, Lorg/threeten/bp/a/h;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/a/h;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 1120
    if-nez v0, :cond_0

    .line 1121
    invoke-virtual {p1}, Lorg/threeten/bp/a/h;->c()Lorg/threeten/bp/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/p;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/a/h;->c()Lorg/threeten/bp/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/p;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 116
    :cond_0
    return v0
.end method
