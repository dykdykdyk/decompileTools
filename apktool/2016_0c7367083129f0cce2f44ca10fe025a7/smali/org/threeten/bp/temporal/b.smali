.class public final enum Lorg/threeten/bp/temporal/b;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Lorg/threeten/bp/temporal/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/temporal/b;",
        ">;",
        "Lorg/threeten/bp/temporal/aa;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/temporal/b;

.field public static final enum b:Lorg/threeten/bp/temporal/b;

.field public static final enum c:Lorg/threeten/bp/temporal/b;

.field public static final enum d:Lorg/threeten/bp/temporal/b;

.field public static final enum e:Lorg/threeten/bp/temporal/b;

.field public static final enum f:Lorg/threeten/bp/temporal/b;

.field public static final enum g:Lorg/threeten/bp/temporal/b;

.field public static final enum h:Lorg/threeten/bp/temporal/b;

.field public static final enum i:Lorg/threeten/bp/temporal/b;

.field public static final enum j:Lorg/threeten/bp/temporal/b;

.field public static final enum k:Lorg/threeten/bp/temporal/b;

.field public static final enum l:Lorg/threeten/bp/temporal/b;

.field public static final enum m:Lorg/threeten/bp/temporal/b;

.field public static final enum n:Lorg/threeten/bp/temporal/b;

.field public static final enum o:Lorg/threeten/bp/temporal/b;

.field public static final enum p:Lorg/threeten/bp/temporal/b;

.field private static final synthetic s:[Lorg/threeten/bp/temporal/b;


# instance fields
.field private final q:Ljava/lang/String;

.field private final r:Lorg/threeten/bp/f;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "NANOS"

    const-string v2, "Nanos"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->b(J)Lorg/threeten/bp/f;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    .line 64
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "MICROS"

    const-string v2, "Micros"

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->b(J)Lorg/threeten/bp/f;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->b:Lorg/threeten/bp/temporal/b;

    .line 69
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "MILLIS"

    const-string v2, "Millis"

    const-wide/32 v4, 0xf4240

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->b(J)Lorg/threeten/bp/f;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->c:Lorg/threeten/bp/temporal/b;

    .line 75
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "SECONDS"

    const-string v2, "Seconds"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    .line 80
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "MINUTES"

    const-string v2, "Minutes"

    const-wide/16 v4, 0x3c

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v3

    invoke-direct {v0, v1, v10, v2, v3}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->e:Lorg/threeten/bp/temporal/b;

    .line 85
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "HOURS"

    const/4 v2, 0x5

    const-string v3, "Hours"

    const-wide/16 v4, 0xe10

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->f:Lorg/threeten/bp/temporal/b;

    .line 90
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "HALF_DAYS"

    const/4 v2, 0x6

    const-string v3, "HalfDays"

    const-wide/32 v4, 0xa8c0

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->g:Lorg/threeten/bp/temporal/b;

    .line 101
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "DAYS"

    const/4 v2, 0x7

    const-string v3, "Days"

    const-wide/32 v4, 0x15180

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    .line 108
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "WEEKS"

    const/16 v2, 0x8

    const-string v3, "Weeks"

    const-wide/32 v4, 0x93a80

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    .line 116
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "MONTHS"

    const/16 v2, 0x9

    const-string v3, "Months"

    const-wide/32 v4, 0x282072

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    .line 125
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "YEARS"

    const/16 v2, 0xa

    const-string v3, "Years"

    const-wide/32 v4, 0x1e18558

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    .line 133
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "DECADES"

    const/16 v2, 0xb

    const-string v3, "Decades"

    const-wide/32 v4, 0x12cf3570

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->l:Lorg/threeten/bp/temporal/b;

    .line 141
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "CENTURIES"

    const/16 v2, 0xc

    const-string v3, "Centuries"

    const-wide v4, 0xbc181660L

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->m:Lorg/threeten/bp/temporal/b;

    .line 149
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "MILLENNIA"

    const/16 v2, 0xd

    const-string v3, "Millennia"

    const-wide v4, 0x758f0dfc0L

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->n:Lorg/threeten/bp/temporal/b;

    .line 158
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "ERAS"

    const/16 v2, 0xe

    const-string v3, "Eras"

    const-wide v4, 0x701ce172277000L

    invoke-static {v4, v5}, Lorg/threeten/bp/f;->a(J)Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->o:Lorg/threeten/bp/temporal/b;

    .line 166
    new-instance v0, Lorg/threeten/bp/temporal/b;

    const-string v1, "FOREVER"

    const/16 v2, 0xf

    const-string v3, "Forever"

    invoke-static {}, Lorg/threeten/bp/f;->a()Lorg/threeten/bp/f;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/b;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V

    sput-object v0, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [Lorg/threeten/bp/temporal/b;

    sget-object v1, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    aput-object v1, v0, v6

    sget-object v1, Lorg/threeten/bp/temporal/b;->b:Lorg/threeten/bp/temporal/b;

    aput-object v1, v0, v7

    sget-object v1, Lorg/threeten/bp/temporal/b;->c:Lorg/threeten/bp/temporal/b;

    aput-object v1, v0, v8

    sget-object v1, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    aput-object v1, v0, v9

    sget-object v1, Lorg/threeten/bp/temporal/b;->e:Lorg/threeten/bp/temporal/b;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lorg/threeten/bp/temporal/b;->f:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/threeten/bp/temporal/b;->g:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/threeten/bp/temporal/b;->l:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/threeten/bp/temporal/b;->m:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/threeten/bp/temporal/b;->n:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/threeten/bp/temporal/b;->o:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    aput-object v2, v0, v1

    sput-object v0, Lorg/threeten/bp/temporal/b;->s:[Lorg/threeten/bp/temporal/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    iput-object p3, p0, Lorg/threeten/bp/temporal/b;->q:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lorg/threeten/bp/temporal/b;->r:Lorg/threeten/bp/f;

    .line 174
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/b;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/threeten/bp/temporal/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/b;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/temporal/b;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/threeten/bp/temporal/b;->s:[Lorg/threeten/bp/temporal/b;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/b;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/k;)J
    .locals 2

    .prologue
    .line 259
    invoke-interface {p1, p2, p0}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/k;Lorg/threeten/bp/temporal/aa;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lorg/threeten/bp/temporal/k;J)Lorg/threeten/bp/temporal/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/k;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 253
    invoke-interface {p1, p2, p3, p0}, Lorg/threeten/bp/temporal/k;->b(JLorg/threeten/bp/temporal/aa;)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/temporal/b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/temporal/b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/threeten/bp/temporal/b;->q:Ljava/lang/String;

    return-object v0
.end method
