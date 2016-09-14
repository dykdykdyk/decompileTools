.class public final enum Lorg/threeten/bp/a/q;
.super Ljava/lang/Enum;
.source "IsoEra.java"

# interfaces
.implements Lorg/threeten/bp/a/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/a/q;",
        ">;",
        "Lorg/threeten/bp/a/o;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/a/q;

.field public static final enum b:Lorg/threeten/bp/a/q;

.field private static final synthetic c:[Lorg/threeten/bp/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lorg/threeten/bp/a/q;

    const-string v1, "BCE"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/a/q;->a:Lorg/threeten/bp/a/q;

    .line 78
    new-instance v0, Lorg/threeten/bp/a/q;

    const-string v1, "CE"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/a/q;->b:Lorg/threeten/bp/a/q;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/threeten/bp/a/q;

    sget-object v1, Lorg/threeten/bp/a/q;->a:Lorg/threeten/bp/a/q;

    aput-object v1, v0, v2

    sget-object v1, Lorg/threeten/bp/a/q;->b:Lorg/threeten/bp/a/q;

    aput-object v1, v0, v3

    sput-object v0, Lorg/threeten/bp/a/q;->c:[Lorg/threeten/bp/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lorg/threeten/bp/a/q;
    .locals 3

    .prologue
    .line 92
    packed-switch p0, :pswitch_data_0

    .line 98
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid era: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_0
    sget-object v0, Lorg/threeten/bp/a/q;->a:Lorg/threeten/bp/a/q;

    .line 96
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lorg/threeten/bp/a/q;->b:Lorg/threeten/bp/a/q;

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/a/q;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/threeten/bp/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/a/q;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/a/q;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/threeten/bp/a/q;->c:[Lorg/threeten/bp/a/q;

    invoke-virtual {v0}, [Lorg/threeten/bp/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/a/q;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/z;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/z",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lorg/threeten/bp/temporal/r;->c()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 162
    sget-object v0, Lorg/threeten/bp/temporal/b;->o:Lorg/threeten/bp/temporal/b;

    .line 169
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/r;->b()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->d()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->a()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->e()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->f()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lorg/threeten/bp/temporal/r;->g()Lorg/threeten/bp/temporal/z;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/z;->a(Lorg/threeten/bp/temporal/l;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/k;
    .locals 4

    .prologue
    .line 155
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    .line 3112
    invoke-virtual {p0}, Lorg/threeten/bp/a/q;->ordinal()I

    move-result v1

    .line 155
    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/q;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    instance-of v2, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v2, :cond_2

    .line 119
    sget-object v2, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    if-ne p1, v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->a(Lorg/threeten/bp/temporal/l;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 127
    invoke-interface {p1}, Lorg/threeten/bp/temporal/q;->a()Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 128
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lorg/threeten/bp/temporal/q;)I
    .locals 4

    .prologue
    .line 136
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 1112
    invoke-virtual {p0}, Lorg/threeten/bp/a/q;->ordinal()I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/q;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/a/q;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v0

    goto :goto_0
.end method

.method public final d(Lorg/threeten/bp/temporal/q;)J
    .locals 3

    .prologue
    .line 144
    sget-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    if-ne p1, v0, :cond_0

    .line 2112
    invoke-virtual {p0}, Lorg/threeten/bp/a/q;->ordinal()I

    move-result v0

    .line 145
    int-to-long v0, v0

    .line 149
    :goto_0
    return-wide v0

    .line 146
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/q;->c(Lorg/threeten/bp/temporal/l;)J

    move-result-wide v0

    goto :goto_0
.end method
