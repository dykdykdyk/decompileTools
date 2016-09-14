.class public abstract Lorg/threeten/bp/b/a;
.super Lorg/threeten/bp/b/b;
.source "DefaultInterfaceTemporal.java"

# interfaces
.implements Lorg/threeten/bp/temporal/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/threeten/bp/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;
    .locals 5

    .prologue
    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/b/a;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, p3}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/threeten/bp/b/a;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 49
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/m;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/threeten/bp/temporal/p;)Lorg/threeten/bp/temporal/k;
    .locals 1

    .prologue
    .line 54
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/p;->a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method
