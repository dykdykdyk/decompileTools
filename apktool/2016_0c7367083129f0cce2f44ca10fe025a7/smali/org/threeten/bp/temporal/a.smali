.class public final enum Lorg/threeten/bp/temporal/a;
.super Ljava/lang/Enum;
.source "ChronoField.java"

# interfaces
.implements Lorg/threeten/bp/temporal/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/temporal/a;",
        ">;",
        "Lorg/threeten/bp/temporal/q;"
    }
.end annotation


# static fields
.field public static final enum A:Lorg/threeten/bp/temporal/a;

.field public static final enum B:Lorg/threeten/bp/temporal/a;

.field public static final enum C:Lorg/threeten/bp/temporal/a;

.field public static final enum D:Lorg/threeten/bp/temporal/a;

.field private static final synthetic I:[Lorg/threeten/bp/temporal/a;

.field public static final enum a:Lorg/threeten/bp/temporal/a;

.field public static final enum b:Lorg/threeten/bp/temporal/a;

.field public static final enum c:Lorg/threeten/bp/temporal/a;

.field public static final enum d:Lorg/threeten/bp/temporal/a;

.field public static final enum e:Lorg/threeten/bp/temporal/a;

.field public static final enum f:Lorg/threeten/bp/temporal/a;

.field public static final enum g:Lorg/threeten/bp/temporal/a;

.field public static final enum h:Lorg/threeten/bp/temporal/a;

.field public static final enum i:Lorg/threeten/bp/temporal/a;

.field public static final enum j:Lorg/threeten/bp/temporal/a;

.field public static final enum k:Lorg/threeten/bp/temporal/a;

.field public static final enum l:Lorg/threeten/bp/temporal/a;

.field public static final enum m:Lorg/threeten/bp/temporal/a;

.field public static final enum n:Lorg/threeten/bp/temporal/a;

.field public static final enum o:Lorg/threeten/bp/temporal/a;

.field public static final enum p:Lorg/threeten/bp/temporal/a;

.field public static final enum q:Lorg/threeten/bp/temporal/a;

.field public static final enum r:Lorg/threeten/bp/temporal/a;

.field public static final enum s:Lorg/threeten/bp/temporal/a;

.field public static final enum t:Lorg/threeten/bp/temporal/a;

.field public static final enum u:Lorg/threeten/bp/temporal/a;

.field public static final enum v:Lorg/threeten/bp/temporal/a;

.field public static final enum w:Lorg/threeten/bp/temporal/a;

.field public static final enum x:Lorg/threeten/bp/temporal/a;

.field public static final enum y:Lorg/threeten/bp/temporal/a;

.field public static final enum z:Lorg/threeten/bp/temporal/a;


# instance fields
.field final E:Lorg/threeten/bp/temporal/ab;

.field private final F:Ljava/lang/String;

.field private final G:Lorg/threeten/bp/temporal/aa;

.field private final H:Lorg/threeten/bp/temporal/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 92
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "NANO_OF_SECOND"

    const/4 v2, 0x0

    const-string v3, "NanoOfSecond"

    sget-object v4, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x3b9ac9ff

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    .line 103
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "NANO_OF_DAY"

    const/4 v2, 0x1

    const-string v3, "NanoOfDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->a:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide v8, 0x4e94914effffL

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    .line 118
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "MICRO_OF_SECOND"

    const/4 v2, 0x2

    const-string v3, "MicroOfSecond"

    sget-object v4, Lorg/threeten/bp/temporal/b;->b:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0xf423f

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    .line 132
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "MICRO_OF_DAY"

    const/4 v2, 0x3

    const-string v3, "MicroOfDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->b:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide v8, 0x141dd75fffL

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->d:Lorg/threeten/bp/temporal/a;

    .line 147
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "MILLI_OF_SECOND"

    const/4 v2, 0x4

    const-string v3, "MilliOfSecond"

    sget-object v4, Lorg/threeten/bp/temporal/b;->c:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e7

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    .line 161
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "MILLI_OF_DAY"

    const/4 v2, 0x5

    const-string v3, "MilliOfDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->c:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x5265bff

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->f:Lorg/threeten/bp/temporal/a;

    .line 168
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "SECOND_OF_MINUTE"

    const/4 v2, 0x6

    const-string v3, "SecondOfMinute"

    sget-object v4, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->e:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3b

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    .line 175
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "SECOND_OF_DAY"

    const/4 v2, 0x7

    const-string v3, "SecondOfDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x1517f

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    .line 182
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "MINUTE_OF_HOUR"

    const/16 v2, 0x8

    const-string v3, "MinuteOfHour"

    sget-object v4, Lorg/threeten/bp/temporal/b;->e:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->f:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3b

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    .line 189
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "MINUTE_OF_DAY"

    const/16 v2, 0x9

    const-string v3, "MinuteOfDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->e:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x59f

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->j:Lorg/threeten/bp/temporal/a;

    .line 197
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "HOUR_OF_AMPM"

    const/16 v2, 0xa

    const-string v3, "HourOfAmPm"

    sget-object v4, Lorg/threeten/bp/temporal/b;->f:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->g:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xb

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    .line 205
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "CLOCK_HOUR_OF_AMPM"

    const/16 v2, 0xb

    const-string v3, "ClockHourOfAmPm"

    sget-object v4, Lorg/threeten/bp/temporal/b;->f:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->g:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0xc

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->l:Lorg/threeten/bp/temporal/a;

    .line 213
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "HOUR_OF_DAY"

    const/16 v2, 0xc

    const-string v3, "HourOfDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->f:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x17

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    .line 221
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "CLOCK_HOUR_OF_DAY"

    const/16 v2, 0xd

    const-string v3, "ClockHourOfDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->f:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x18

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->n:Lorg/threeten/bp/temporal/a;

    .line 228
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "AMPM_OF_DAY"

    const/16 v2, 0xe

    const-string v3, "AmPmOfDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->g:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->o:Lorg/threeten/bp/temporal/a;

    .line 244
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "DAY_OF_WEEK"

    const/16 v2, 0xf

    const-string v3, "DayOfWeek"

    sget-object v4, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x7

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    .line 262
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    const/16 v2, 0x10

    const-string v3, "AlignedDayOfWeekInMonth"

    sget-object v4, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x7

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->q:Lorg/threeten/bp/temporal/a;

    .line 280
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    const/16 v2, 0x11

    const-string v3, "AlignedDayOfWeekInYear"

    sget-object v4, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x7

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->r:Lorg/threeten/bp/temporal/a;

    .line 293
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "DAY_OF_MONTH"

    const/16 v2, 0x12

    const-string v3, "DayOfMonth"

    sget-object v4, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x1c

    const-wide/16 v8, 0x1f

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->b(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    .line 305
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "DAY_OF_YEAR"

    const/16 v2, 0x13

    const-string v3, "DayOfYear"

    sget-object v4, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x16d

    const-wide/16 v8, 0x16e

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->b(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    .line 315
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "EPOCH_DAY"

    const/16 v2, 0x14

    const-string v3, "EpochDay"

    sget-object v4, Lorg/threeten/bp/temporal/b;->h:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    const-wide v6, -0x550a98b312L

    const-wide v8, 0x550a98b312L

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    .line 331
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "ALIGNED_WEEK_OF_MONTH"

    const/16 v2, 0x15

    const-string v3, "AlignedWeekOfMonth"

    sget-object v4, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x4

    const-wide/16 v8, 0x5

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->b(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    .line 347
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "ALIGNED_WEEK_OF_YEAR"

    const/16 v2, 0x16

    const-string v3, "AlignedWeekOfYear"

    sget-object v4, Lorg/threeten/bp/temporal/b;->i:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x35

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    .line 358
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "MONTH_OF_YEAR"

    const/16 v2, 0x17

    const-string v3, "MonthOfYear"

    sget-object v4, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0xc

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    .line 369
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "PROLEPTIC_MONTH"

    const/16 v2, 0x18

    const-string v3, "ProlepticMonth"

    sget-object v4, Lorg/threeten/bp/temporal/b;->j:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    const-wide v6, -0x2cb4177f4L

    const-wide v8, 0x2cb4177ffL

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->y:Lorg/threeten/bp/temporal/a;

    .line 404
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "YEAR_OF_ERA"

    const/16 v2, 0x19

    const-string v3, "YearOfEra"

    sget-object v4, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    const-wide/32 v6, 0x3b9ac9ff

    const-wide/32 v8, 0x3b9aca00

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->b(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    .line 428
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "YEAR"

    const/16 v2, 0x1a

    const-string v3, "Year"

    sget-object v4, Lorg/threeten/bp/temporal/b;->k:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    const-wide/32 v6, -0x3b9ac9ff

    const-wide/32 v8, 0x3b9ac9ff

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    .line 445
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "ERA"

    const/16 v2, 0x1b

    const-string v3, "Era"

    sget-object v4, Lorg/threeten/bp/temporal/b;->o:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    .line 461
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "INSTANT_SECONDS"

    const/16 v2, 0x1c

    const-string v3, "InstantSeconds"

    sget-object v4, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    .line 475
    new-instance v0, Lorg/threeten/bp/temporal/a;

    const-string v1, "OFFSET_SECONDS"

    const/16 v2, 0x1d

    const-string v3, "OffsetSeconds"

    sget-object v4, Lorg/threeten/bp/temporal/b;->d:Lorg/threeten/bp/temporal/b;

    sget-object v5, Lorg/threeten/bp/temporal/b;->p:Lorg/threeten/bp/temporal/b;

    const-wide/32 v6, -0xfd20

    const-wide/32 v8, 0xfd20

    invoke-static {v6, v7, v8, v9}, Lorg/threeten/bp/temporal/ab;->a(JJ)Lorg/threeten/bp/temporal/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/threeten/bp/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V

    sput-object v0, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    .line 74
    const/16 v0, 0x1e

    new-array v0, v0, [Lorg/threeten/bp/temporal/a;

    const/4 v1, 0x0

    sget-object v2, Lorg/threeten/bp/temporal/a;->a:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/threeten/bp/temporal/a;->b:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/threeten/bp/temporal/a;->c:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/threeten/bp/temporal/a;->d:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/threeten/bp/temporal/a;->e:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/threeten/bp/temporal/a;->f:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/threeten/bp/temporal/a;->g:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/threeten/bp/temporal/a;->h:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/threeten/bp/temporal/a;->i:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/threeten/bp/temporal/a;->j:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/threeten/bp/temporal/a;->k:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/threeten/bp/temporal/a;->l:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/threeten/bp/temporal/a;->m:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/threeten/bp/temporal/a;->n:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/threeten/bp/temporal/a;->o:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/threeten/bp/temporal/a;->q:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/threeten/bp/temporal/a;->r:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/threeten/bp/temporal/a;->s:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/threeten/bp/temporal/a;->t:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/threeten/bp/temporal/a;->u:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/threeten/bp/temporal/a;->v:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/threeten/bp/temporal/a;->w:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/threeten/bp/temporal/a;->x:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/threeten/bp/temporal/a;->y:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/threeten/bp/temporal/a;->z:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/threeten/bp/temporal/a;->A:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/threeten/bp/temporal/a;->C:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/threeten/bp/temporal/a;->D:Lorg/threeten/bp/temporal/a;

    aput-object v2, v0, v1

    sput-object v0, Lorg/threeten/bp/temporal/a;->I:[Lorg/threeten/bp/temporal/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/aa;Lorg/threeten/bp/temporal/ab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/temporal/aa;",
            "Lorg/threeten/bp/temporal/aa;",
            "Lorg/threeten/bp/temporal/ab;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 483
    iput-object p3, p0, Lorg/threeten/bp/temporal/a;->F:Ljava/lang/String;

    .line 484
    iput-object p4, p0, Lorg/threeten/bp/temporal/a;->G:Lorg/threeten/bp/temporal/aa;

    .line 485
    iput-object p5, p0, Lorg/threeten/bp/temporal/a;->H:Lorg/threeten/bp/temporal/aa;

    .line 486
    iput-object p6, p0, Lorg/threeten/bp/temporal/a;->E:Lorg/threeten/bp/temporal/ab;

    .line 487
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/a;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lorg/threeten/bp/temporal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/a;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/temporal/a;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/threeten/bp/temporal/a;->I:[Lorg/threeten/bp/temporal/a;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/a;

    return-object v0
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .prologue
    .line 557
    .line 1519
    iget-object v0, p0, Lorg/threeten/bp/temporal/a;->E:Lorg/threeten/bp/temporal/ab;

    .line 557
    invoke-virtual {v0, p1, p2, p0}, Lorg/threeten/bp/temporal/ab;->a(JLorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/threeten/bp/temporal/a;->E:Lorg/threeten/bp/temporal/ab;

    return-object v0
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
    .line 598
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/k;->a(Lorg/threeten/bp/temporal/q;J)Lorg/threeten/bp/temporal/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;Lorg/threeten/bp/format/ac;)Lorg/threeten/bp/temporal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/q;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/format/ac;",
            ")",
            "Lorg/threeten/bp/temporal/l;"
        }
    .end annotation

    .prologue
    .line 611
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lorg/threeten/bp/temporal/l;)Z
    .locals 1

    .prologue
    .line 582
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->a(Lorg/threeten/bp/temporal/q;)Z

    move-result v0

    return v0
.end method

.method public final b(J)I
    .locals 1

    .prologue
    .line 576
    .line 2519
    iget-object v0, p0, Lorg/threeten/bp/temporal/a;->E:Lorg/threeten/bp/temporal/ab;

    .line 576
    invoke-virtual {v0, p1, p2, p0}, Lorg/threeten/bp/temporal/ab;->b(JLorg/threeten/bp/temporal/q;)I

    move-result v0

    return v0
.end method

.method public final b(Lorg/threeten/bp/temporal/l;)Lorg/threeten/bp/temporal/ab;
    .locals 1

    .prologue
    .line 587
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->b(Lorg/threeten/bp/temporal/q;)Lorg/threeten/bp/temporal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->B:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lorg/threeten/bp/temporal/l;)J
    .locals 2

    .prologue
    .line 592
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/l;->d(Lorg/threeten/bp/temporal/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v0

    sget-object v1, Lorg/threeten/bp/temporal/a;->p:Lorg/threeten/bp/temporal/a;

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/a;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

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
    .line 617
    iget-object v0, p0, Lorg/threeten/bp/temporal/a;->F:Ljava/lang/String;

    return-object v0
.end method
