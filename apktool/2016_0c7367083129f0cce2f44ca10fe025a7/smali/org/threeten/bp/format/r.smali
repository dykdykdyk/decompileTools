.class final enum Lorg/threeten/bp/format/r;
.super Ljava/lang/Enum;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/format/r;",
        ">;",
        "Lorg/threeten/bp/format/l;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/threeten/bp/format/r;

.field public static final enum b:Lorg/threeten/bp/format/r;

.field public static final enum c:Lorg/threeten/bp/format/r;

.field public static final enum d:Lorg/threeten/bp/format/r;

.field private static final synthetic e:[Lorg/threeten/bp/format/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2130
    new-instance v0, Lorg/threeten/bp/format/r;

    const-string v1, "SENSITIVE"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/format/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/r;->a:Lorg/threeten/bp/format/r;

    .line 2131
    new-instance v0, Lorg/threeten/bp/format/r;

    const-string v1, "INSENSITIVE"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/format/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/r;->b:Lorg/threeten/bp/format/r;

    .line 2132
    new-instance v0, Lorg/threeten/bp/format/r;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v4}, Lorg/threeten/bp/format/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/r;->c:Lorg/threeten/bp/format/r;

    .line 2133
    new-instance v0, Lorg/threeten/bp/format/r;

    const-string v1, "LENIENT"

    invoke-direct {v0, v1, v5}, Lorg/threeten/bp/format/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/format/r;->d:Lorg/threeten/bp/format/r;

    .line 2129
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/threeten/bp/format/r;

    sget-object v1, Lorg/threeten/bp/format/r;->a:Lorg/threeten/bp/format/r;

    aput-object v1, v0, v2

    sget-object v1, Lorg/threeten/bp/format/r;->b:Lorg/threeten/bp/format/r;

    aput-object v1, v0, v3

    sget-object v1, Lorg/threeten/bp/format/r;->c:Lorg/threeten/bp/format/r;

    aput-object v1, v0, v4

    sget-object v1, Lorg/threeten/bp/format/r;->d:Lorg/threeten/bp/format/r;

    aput-object v1, v0, v5

    sput-object v0, Lorg/threeten/bp/format/r;->e:[Lorg/threeten/bp/format/r;

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
    .line 2129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/format/r;
    .locals 1

    .prologue
    .line 2129
    const-class v0, Lorg/threeten/bp/format/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/r;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/format/r;
    .locals 1

    .prologue
    .line 2129
    sget-object v0, Lorg/threeten/bp/format/r;->e:[Lorg/threeten/bp/format/r;

    invoke-virtual {v0}, [Lorg/threeten/bp/format/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/format/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2143
    invoke-virtual {p0}, Lorg/threeten/bp/format/r;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2149
    :goto_0
    return p3

    .line 2196
    :pswitch_0
    iput-boolean v2, p1, Lorg/threeten/bp/format/w;->e:Z

    goto :goto_0

    .line 3196
    :pswitch_1
    iput-boolean v1, p1, Lorg/threeten/bp/format/w;->e:Z

    goto :goto_0

    .line 3281
    :pswitch_2
    iput-boolean v2, p1, Lorg/threeten/bp/format/w;->f:Z

    goto :goto_0

    .line 4281
    :pswitch_3
    iput-boolean v1, p1, Lorg/threeten/bp/format/w;->f:Z

    goto :goto_0

    .line 2143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 1

    .prologue
    .line 2137
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2155
    invoke-virtual {p0}, Lorg/threeten/bp/format/r;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2156
    :pswitch_0
    const-string v0, "ParseCaseSensitive(true)"

    .line 2159
    :goto_0
    return-object v0

    .line 2157
    :pswitch_1
    const-string v0, "ParseCaseSensitive(false)"

    goto :goto_0

    .line 2158
    :pswitch_2
    const-string v0, "ParseStrict(true)"

    goto :goto_0

    .line 2159
    :pswitch_3
    const-string v0, "ParseStrict(false)"

    goto :goto_0

    .line 2155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
