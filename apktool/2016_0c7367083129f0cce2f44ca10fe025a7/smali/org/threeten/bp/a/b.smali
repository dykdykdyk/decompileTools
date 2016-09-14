.class final Lorg/threeten/bp/a/b;
.super Ljava/lang/Object;
.source "ChronoLocalDate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/threeten/bp/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 244
    check-cast p1, Lorg/threeten/bp/a/a;

    check-cast p2, Lorg/threeten/bp/a/a;

    .line 1247
    invoke-virtual {p1}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/threeten/bp/a/a;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/b/c;->a(JJ)I

    move-result v0

    .line 244
    return v0
.end method
